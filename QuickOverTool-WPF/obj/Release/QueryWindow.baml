   M S B A M L   `   `   `  ���� H  DQuickDataTool, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null5clr-namespace:QuickOverTool_WPFQuickOverTool_WPF  #    QuickOverTool_WPF.QueryWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     1localclr-namespace:QuickOverTool_WPF     -     �Name$  windowQuery�� � Title$ 추출 쿼리 편집�� � 
ResizeMode$ NoResize=� � Topmost . $	��670��$��600.4��.��� .+��� $��	종류들��$
��Left=�$��80��$	��Top=�$	��250��$��16,7,0,0q�.��� $��0,0,-2,-12.8q�.+��� -    ��Name$ comboBoxType��$
��Left=�$��	83,16,0,0q�$	��Top=�$	��120��.@��� $
��Skin���� $
��Icon���� $��Spray���� $��Emote���� $��	Voiceline���� $��VictoryPose���� $��HighlightIntro���� $��유형:��$
��Left=�$��	38,12,0,0q�$	��Top=��� $��태그��$
��Left=�$��80��$��	271,7,0,0q�$	��Top=�$	��310��.��� $��0,-2,-1.8,-10.8q�.+��� -    ��Name$ butonCommon��$��흔한��$
��Left=�$��58,9,0,0q�$	��Top=�$��75���� -   $ 
buttonRare��$
��Left=�$��	138,9,0,0q�$	��Top=�$��75��$��20��$��드문���� -   $ buttonLegendary��$��전설적인��$
��Left=�$	��Top=�$��75��$��	218,9,0,0q��� -   $ comboBoxEvent��$
��Left=�$��	58,33,0,0q�$	��Top=�$	��120��.@��� $
��base���� $��summergames���� $��	halloween���� $��winter���� $��lunarnewyear���� $��archives���� $��anniversary���� $��
이벤트:��$
��Left=�$��	10,29,0,0q�$	��Top=��� $��
희귀성:��$
��Left=�$��10,6,0,0q�$	��Top=��� -    ��Name$ checkBoxExcept��$��이 이벤트 제외��$
��Left=�$��
183,35,0,0q�$	��Top=��� $l��f아래 쿼리 문자열에 템플릿을 추가하려면 위의 단추와 메뉴를 사용하십시오.��$
��Left=�$��	16,87,0,0q�$	��Top=�$	��630���� $��	검색어��$
��Left=�$��95��$��
16,113,0,0q�$	��Top=�$	��630��.��� $��0,-10,-2,-23q�.+��� $����각 개별 쿼리는 다음을 포함해야 함에 유의하십시오 " ". 태그 논리 식은 ( )와 함께 묶어야 한다.  
또한, 당신은 당신의 로케일에 근거한 히어로 이름을 사용해야 한다.��$
��Left=�$��	10,10,0,0q�$	��Top=�$	��600���� -    ��Name$ textBoxQuery��$
��Left=�$��30��$��	10,52,0,0q�$�� ��$	��Top=�$	��600��$��0,6,0,0q�$��Consolas)��� -	   $ 
buttonExit��$��끝난.��$��284,208,0,0q�$	��Top=�$
��Left=�$��76��$��Center=��� $��구문 형식��$
��Left=�$	��334��$��
16,228,0,0q�$	��Top=�$	��630��.��� $
��Left=�$	��324��$��0,0,-2,-12.8q�$	��Top=�$	��620�� � RowDefinitions �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+�9� $��히어로 아이템��.���� ���� *HeroUnlocksHelp+	 �� ElementName$	 windowQuery��9� $��1��$��히어로 보이스��.���� ���� *HeroVoiceHelp+$	 windowQuery��9� $��2��$!��재생할 수 없는 문자��.���� ���� *
NPCsHelp+$	 windowQuery��9� $��3��$��지도��.���� ���� *	MapHelp+$	 windowQuery��