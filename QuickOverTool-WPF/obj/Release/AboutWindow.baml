   M S B A M L   `   `   `  ���� H  DQuickDataTool, Version=1.9.1.0, Culture=neutral, PublicKeyToken=null5clr-namespace:QuickOverTool_WPFQuickOverTool_WPF  #    QuickOverTool_WPF.AboutWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     1localclr-namespace:QuickOverTool_WPF     -     �Name$  windowAbout�� � Title$ QuickDataTool 정보��$	��350��$	��350�� � ShowInTaskbar .   � 
ResizeMode$ NoResize=�.��� -    �Name$ 	gridAbout��.+��� -    ��Name$ textBlockTitle��$
��Left=�$��37,5,0,0q�$
��Wrap=�$��QuickDataTool��$	��Top=� J� RenderTransformOrigin$ 0.5,0.5&�$��50��$	��274��$��Consolas)�$
��Bold"�$��36(� �� TextAlignment$ Center=��� $
��Left=�$	��251��$��	10,60,0,0q�$	��Top=�$	��324��.@��� -    ��Name$ tabAbout��$��
QDT 정보��.��� ���	#FFFFFFFF.+��� -   	 ��Name$	 textBoxAbout��$
��Left=�$	��203��$��	10,10,0,0q�
 �� TextWrapping$

 Wrap=�$	��Top=�$	��298�� �� AcceptsReturn .  �� 
IsReadOnly . $ �� HorizontalScrollBarVisibility$ Visible=����� *About+ �� ElementName$ windowAbout���� -   $ tabLinks��$��유용한 링크��.��� ���	#FFFFFFFF.+��� $
��Left=�$��	10,10,0,0q�$
��Wrap=�$	��Top=�$	��203��$	��298���� -   $D��>https://ci.appveyor.com/project/yukimono/OWLib/build/artifacts?�.�.��� �� <:최신 DataTool 릴리스(불안정 상태일 수 있음!) �� -   $Y��Shttps://ci.appveyor.com/project/xyx0826/quickovertool-wpf/branch/datatool/artifacts?�.�.��� 원본 DataTool GUI 릴리스 �� -	   $.��(https://yernemm.xyz/projects/OverToolGUI?�.�.��� �� <:1.14 이전 버전의 Overwatch 용 Yernemm's OverTool GUI�� -
   $ tabUtil��$��디렉토리 유틸리티��.��� ���	#FFFFFFFF.+��� $N��H이 유틸리티는 디렉토리에서 고유한 파일을 정렬한다.��$
��Left=�$��	10,10,0,0q�$	��Top=�$
��Bold"��� $��처리할 경로:��$
��Left=�$��	10,41,0,0q�$	��Top=��� -   $	 utilTextBox��$
��Left=�$��23��$��	14,72,0,0q� �� MaxLines$ 1�� . $	��Top=�$	��270���� -    ��Name$ utilButtonPath��$
��Left=�$��
289,70,0,0q�$	��Top=�$��25��$��25��$	��...���� -   $ utilButtonGo��$��가다��$
��Left=�$��
14,100,0,0q�$	��Top=�$��75���� -    ��Name$ utilLabelStatus��$��
Completed.��$
��Left=�$��
100,97,0,0q�$	��Top=�$	��218��$y�Hidden=�