using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Text;
using System.Windows;
using System.Windows.Media;

namespace QuickOverTool_WPF
{
    /// <summary>
    /// MainWindow.xaml logics.
    /// Process-related methods, e.g. cmdline, startup.
    /// </summary>
    public partial class MainWindow : Window
    {
        private string FabricateCmdline()
        {
            // If custom cmdline is specified
            if (checkBoxCommand.IsChecked == true)
            {
                AddLog("사용자 지정 명령줄이 선택되어 있고, 대신 지정된 명령줄을 사용하십시오.");
                return " " + textBoxCommand.Text;
            }
            // Output path fabrication
            string outputPath;
            if (!String.IsNullOrEmpty(textBoxOutputPath.Text))
            {
                outputPath = " \"" + textBoxOutputPath.Text.Replace("\\", "\\\\") + "\"";
            }
            else
            {
                textBoxOutputPath.BorderBrush = new SolidColorBrush(Colors.Red);
                outputPath = " .\\";
                AddLog("출력 경로를 찾을 수 없음. DataTool 디렉터리로 설정.");
            }
            // Language
            string cmdLine = " --language=" + comboBoxLanguage.SelectedItem.
                ToString().Substring(38, 4);

            // Flags
            if (checkBoxDeduplicate.IsChecked == true) cmdLine += " -0";
            if (checkBoxFlatten.IsChecked == true) cmdLine += " --flatten";
            if (checkBoxDisableSEAnimScale.IsChecked == true) cmdLine += " --scale-anims=false";
            if (checkBoxQuiet.IsChecked == true) cmdLine += " --quiet";
            if (checkBoxSkipKeys.IsChecked == true) cmdLine += " --skip-keys";
            if (checkBoxGraceful.IsChecked == true) cmdLine += " --graceful-exit";
            if (checkBoxExpert.IsChecked == true) cmdLine += " --expert";
            if (checkBoxRCN.IsChecked == true) cmdLine += " --rcn";
            if (checkBoxCDNValidate.IsChecked == true) cmdLine += " --validate-cache";
            if (checkBoxCDNIndex.IsChecked == true) cmdLine += " --cache";
            if (checkBoxCDNData.IsChecked == true) cmdLine += " --cache-data";
            if (checkBoxNoTex.IsChecked == true) cmdLine += " --convert-textures=false";
            if (checkBoxNoSnd.IsChecked == true) cmdLine += " --convert-sound=false";
            if (checkBoxNoMdl.IsChecked == true) cmdLine += " --convert-models=false";
            if (checkBoxNoAni.IsChecked == true) cmdLine += " --convert-animations=false";
            if (checkBoxRefpose.IsChecked == true) cmdLine += " --extract-refpose=true";
            if (textBoxLOD.Text != "0") cmdLine += " --lod=" + textBoxLOD.Text;
            if (checkBoxJSONOut.IsChecked == true) cmdLine += " --json";
            if (checkBoxNoTex.IsChecked == false)
                cmdLine += (" --convert-textures-type=" + comboBoxTextureFmt.SelectedItem. // Texture conversion type
                    ToString().Substring(38, 3));

            // Overwatch path
            if (textBoxOutputPath.IsEnabled &&
                String.IsNullOrEmpty(textBoxOverwatchPath.Text))
            {
                textBoxOverwatchPath.BorderBrush = new SolidColorBrush(Colors.Red);
                throw new ArgumentException("Overwatch 경로를 찾을 수 없으므로 올바른 Overwatch 경로를 지정하십시오.");
            }

            cmdLine = cmdLine + " \"" + textBoxOverwatchPath.Text + "\" ";
            // Mode
            try
            {
                cmdLine += GetRadioButton();
            }
            catch
            {
                groupBoxModesNew.BorderBrush = new SolidColorBrush(Colors.Red);
                throw new ArgumentException("모드가 선택되지 않았으므로 모드를 선택하십시오.");
            }
            // Output path addition
            cmdLine += outputPath;
            // Extract queries
            if (radioButtonExtractMode.IsChecked == true &&
                (e_heroUnlocks.IsSelected == true ||
                e_npcs.IsSelected == true ||
                e_heroVoice.IsSelected == true ||
                e_maps.IsSelected == true))
            {
                if (String.IsNullOrWhiteSpace(query.GetQueries()) &&
                    (e_heroUnlocks.IsSelected == true ||
                    e_npcs.IsSelected == true))
                {
                    buttonExtractQuery.BorderBrush = new SolidColorBrush(Colors.Red);
                    throw new ArgumentException("쿼리를 찾을 수 없음. 편집기에 쿼리를 입력하십시오.");
                }
                cmdLine += query.GetQueries();
            }

            textBoxCommand.Text = cmdLine;
            return cmdLine;
        }

        private void StartUp(string command)
        {
            using (Process dataTool = new Process())
            {
                { // DataTool process configuration
                    dataTool.StartInfo.FileName = "DataTool.exe";
                    dataTool.StartInfo.Arguments = command;
                    dataTool.StartInfo.UseShellExecute = false;
                    dataTool.StartInfo.RedirectStandardOutput = true;
                    dataTool.StartInfo.StandardOutputEncoding = Encoding.Default;
                    dataTool.StartInfo.RedirectStandardError = true;
                    dataTool.StartInfo.StandardErrorEncoding = Encoding.Default;
                    dataTool.StartInfo.CreateNoWindow = true;
                }
                try
                {
                    BackgroundWorker aliveChecker = new BackgroundWorker();
                    aliveChecker.DoWork += CheckAlive;
                    aliveChecker.RunWorkerCompleted += OnProcessDead;

                    dataTool.Start();
                    dataToolPID = dataTool.Id;
                    aliveChecker.RunWorkerAsync(dataTool);

                    buttonStart.IsEnabled = false;
                    buttonStart.Content = "DataTool 실행 중...";
                }
                catch
                {
                    AddLog("DataTool 시작 실패. 툴체인의 유효성 확인");
                    return;
                }
                dataTool.BeginOutputReadLine();
                dataTool.BeginErrorReadLine();
                dataTool.OutputDataReceived += new DataReceivedEventHandler(DataTool_DataReceived);
                dataTool.ErrorDataReceived += new DataReceivedEventHandler(DataTool_DataReceived);
            }
        }

        private void CheckAlive(object sender, DoWorkEventArgs e)
        {
            ((Process)e.Argument).WaitForExit();
        }

        private void OnProcessDead(object sender, RunWorkerCompletedEventArgs e)
        {
            buttonStart.IsEnabled = true;
            buttonStart.Content = "DataTool이 종료됨.";
            buttonStart.Foreground = Brushes.Green;
        }
    }
}
