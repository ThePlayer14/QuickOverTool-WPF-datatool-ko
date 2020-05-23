using System.Windows;
using System.Windows.Data;
using System.Diagnostics;
using System.Windows.Navigation;
using System.Net;
using System.Xml;
using System.IO.Compression;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Windows.Forms;

namespace QuickOverTool_WPF
{
    /// <summary>
    /// AboutWindow.xaml logics
    /// </summary>
    public partial class AboutWindow : Window
    {
        protected override void OnClosing(CancelEventArgs e)
        {
            e.Cancel = true;
            windowAbout.Hide();
        }

        public string About
        {
            get
            {
                return "QuickDataTool은 원래 xyx0826에 의해 만들어졌으며, 현재는 ThePlayer14에 의해 유지되고 있다.\n" +
                    "이 프로젝트는 다음에서 찾을 수 있다.\n" +
                    "https://github.com/ThePlayer14/QuickOverTool-WPF-datatool \n\n" +
                    "에 대한 감사 dynaomi, zingballyhoo, SombraOW and Js41637 Overwatch 게임 자산을 추출하기 위한 궁극적인 도구 세트인 OverTool 툴 체인을 만들기 위해.\n\n" +
                    "1.14 이전 버전의 게임용 GUI가 필요한 경우 Yernemm's OverTool GUI를 확인하십시오.\n" +
                    "다음 사이트에서 Yernemm's GUI 를 확인하십시오.\n" +
                    "https://yernemm.xyz/projects/OverToolGUI.";

            }
            set { }
        }

        public string Warning
        {
            get
            {
                return "Update your DataTool version from \n" +
                    "the stable branch.\n";
            }
            set { }
        }

        //public string[] DTInfo
        //{
        //    get
        //    {
        //        return Networking.GetDTInfo();
        //    }
        //    set { }
        //}

        public AboutWindow()
        {
            InitializeComponent();
        }

        private void Hyperlink_RequestNavigate(object sender, RequestNavigateEventArgs e)
        {
            Process.Start(new ProcessStartInfo(e.Uri.AbsoluteUri));
            e.Handled = true;
        }

        //private void DownloadNewDataTool(object sender, RequestNavigateEventArgs e)
        //{
        //    string zipPath = ".\\datatool_" + Networking.GetDTInfo()[0] + ".zip";
        //    // Download new build from appveyor
        //    textBlockDownloader.Text = "Downloading...";
        //    using (WebClient wc = new WebClient())
        //    {
        //        wc.DownloadProgressChanged += wc_DownloadProgressChanged;
        //        wc.DownloadFileAsync(new System.Uri(e.Uri.AbsoluteUri), zipPath);
        //        wc.DownloadFileCompleted += new AsyncCompletedEventHandler(Unzip);
        //    }
        //}

        //private void Unzip(object sender, AsyncCompletedEventArgs e)
        //{
        //    string zipPath = ".\\datatool_" + Networking.GetDTInfo()[0] + ".zip";
        //    // Read zip content and remove old build
        //    List<string> files = new List<string>();
        //    ZipArchive zip = ZipFile.OpenRead(zipPath);
        //    foreach (ZipArchiveEntry file in zip.Entries)
        //    {
        //        File.Delete(".\\" + file.Name);
        //    }
        //    try
        //    {
        //        ZipFile.ExtractToDirectory(zipPath, ".\\");
        //    }
        //    catch { }
        //    textBlockDownloader.Text = "Update successful.";
        //}

        //private void wc_DownloadProgressChanged(object sender, DownloadProgressChangedEventArgs e)
        //{
        //    downloadBar.Value = e.ProgressPercentage;
        //}
    }
}
