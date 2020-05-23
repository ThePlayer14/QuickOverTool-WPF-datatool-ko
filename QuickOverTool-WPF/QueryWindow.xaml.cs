using System;
using System.ComponentModel;
using System.Windows;
using System.Windows.Input;

namespace QuickOverTool_WPF
{
    /// <summary>
    /// QueryWindow.xaml 的交互逻辑
    /// </summary>
    public partial class QueryWindow : Window
    {
        public QueryWindow()
        {
            InitializeComponent();
        }

        protected override void OnClosing(CancelEventArgs e)
        {
            e.Cancel = true;
            windowQuery.Hide();
        }

        // Method for passing the query back to MainWindow
        public string GetQueries()
        {
            if (String.IsNullOrWhiteSpace(textBoxQuery.Text)) return null;
            string input = textBoxQuery.Text;   // In case someone forgets the parentheses
            if (!input.StartsWith("\"")) input = "\"" + input;
            if (!input.EndsWith("\"")) input += "\"";
            return " " + input;
        }
        // Event selector
        private void AppendEvent(object sender, RoutedEventArgs e)
        {
            string selection = "(event=";
            if (checkBoxExcept.IsChecked == true) selection += "!";
            selection += comboBoxEvent.SelectedItem
                .ToString().Substring(37);
            selection += ")";
            textBoxQuery.Text += selection;
        }
        // Type selector
        private void AppendType(object sender, RoutedEventArgs e)
        {
            string selection = ("|" + comboBoxType.SelectedItem
                .ToString().Substring(37) + "=");
            textBoxQuery.Text += selection;
        }

        private void buttonExit_Click(object sender, RoutedEventArgs e)
        {  
            windowQuery.Hide();
        }

        private void butonCommon_Click(object sender, RoutedEventArgs e)
        {
            textBoxQuery.Text += "(rarity=common)";
        }

        private void buttonRare_Click(object sender, RoutedEventArgs e)
        {
            textBoxQuery.Text += "(rarity=rare)";
        }

        private void buttonLegendary_Click(object sender, RoutedEventArgs e)
        {
            textBoxQuery.Text += "(rarity=legendary)";
        }

        public string HeroUnlocksHelp
        {
            get
            {
                return "    형식: {hero name}|{type}=({tag name}={tag}),{item name}\n" +
                    "        대상 로케일에 영웅 이름을 입력한 다음 버튼을 사용하여 쿼리를 구성하십시오.\n" +
                    "        여러 쿼리를 공백으로 구분하여 추가할 수 있다.\n" +
                    "        예제: \"Roadhog|emote=(rarity=rare)\"\n" +
                    "       스킨 추출 방법 예제:\n" +
                    "        \"{당신의 로케일에 근거한 영웅 이름}|skin={당신의 로케일에 근거한 히어로 스킨 이름}\"\n" +
                    "        \"{당신의 로케일에 근거한 영웅 이름}|skin=(event=Winter)\"\n";
            }
            set { }
        }

        public string HeroVoiceHelp
        {
            get
            {
                return "    선택적 쿼리 지원: (쿼리를 비워 두면 모든 음성 라인이 추출됨)\n" +
                     "        유형:\n" +
                     "            soundRestriction: 어떤 소리만 뽑아내다.\n" +
                     "            groupRestriction: 특정 그룹만 추출하다\n" +
                     "        예제: \"Lúcio|soundRestriction = 00000000B56B.0B2\"\n";
            }
            set { }
        }

        public string NPCsHelp
        {
            get
            {
                return "    대상 로케일에 NPC 이름을 입력하십시오.\n" +
                    "        예제: \"Eradicator\"";
            }
            set { }
        }

        public string MapHelp
        {
            get
            {
                return "    대상 로케일에 지도 이름을 입력하십시오.\n" +
                    "        예제: \"Black Forest\"";
            }
            set { }
        }
    }
}
