   M S B A M L   `   `   `  ���� H  DQuickDataTool, Version=1.9.1.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:QuickOverTool_WPF.PropertiesQuickOverTool_WPF.Properties  5clr-namespace:QuickOverTool_WPFQuickOverTool_WPF  "    QuickOverTool_WPF.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     8p*clr-namespace:QuickOverTool_WPF.Properties     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     1localclr-namespace:QuickOverTool_WPF     -     �Name$  
WindowMain�� � Title$] WQuickDataTool - DataTool GUI (Overwatch 1.14 이상용) - 리포지토리 검사 없음��$	��600��$	��850����.  � 
ResizeMode$ NoResize=� � SizeToContent$ Height=�.���  � RowDefinitions �� .+��� -    ��Name$ 	labelPath��$��Overwatch 폴더 경로��$
��Left=�$��	10,10,0,0q�$	��Top=�$��25��$	��119��$��Center=��� -    ��Name$ textBoxOverwatchPath��$
��Left=�$��Center=�$��25��$��
134,11,0,0q�$	��Top=�$	��548�� �� MaxLines$ 1�� �� 
IsReadOnly . �� -   $ labelValidity��$�� ��$
��Left=�$��
710,10,0,0q�$	��Top=�
���  ��$��25��$	��126���� -   	 ��Name$	 
buttonPath��$
��Left=�$��
687,11,0,0q�$	��Top=�$��25��$��25��$	��...���� -   $ labelLanguage��$��Overwatch 로케일:��$
��Left=�$��	10,40,0,0q�$	��Top=�$��30��$	��109��$��Center=��� -   
 ��Name$
 comboBoxLanguage��$
��Left=�$��
124,42,0,0q�$	��Top=�$	��130�� �� SelectedIndex$ 0��.@��� $
��enUS���� $
��zhCN���� $
��zhTW���� $
��jaJP���� $
��frFR���� $
��deDE���� $
��ruRU���� $
��koKR���� $
��itIT���� $
��plPL���� $
��ptBR���� $
��esES���� $
��esMX���� -    ��Name$ checkBoxQuiet��$��침묵 모드��$
��Left=�$��
278,46,0,0q�$	��Top=� � ToolTip$N H대부분의 출력 정보를 사용하지 않도록 설정하십시오.���� -	   $ checkBoxSkipKeys��$��키 감지 건너뛰기��$
��Left=�$��
354,46,0,0q�$	��Top=�$' !암호화 키 감지 건너뛰기���� -
   $ checkBoxGraceful��$��우아한 퇴장��$
��Left=�$��
481,46,0,0q�$	��Top=�$? 9해독 실패가 툴을 손상시키지 않도록 한다.���� -   $ checkBoxExpert��$��전문가 모드��$
��Left=�$��
594,46,0,0q�$	��Top=�$5 /더 많은 자산 정보를 출력하십시오.���� -    ��Name$ groupBoxSkipExtractions��$��	CMF & CDN��$
��Left=�$	��150��$��	10,75,0,0q�$	��Top=�$	��170�����	#FFD5DFE5
���   �$  ��.��� -    �Name$! gridGroupBoxSkipExtractions��$
��Left=�$	��110��$��0,0,-12,-12q�$	��Top=�$	��170��$  ��.+��� -   $ checkBoxRCN��$��RCN CMF 사용��$
��Left=�$��	10,10,0,0q�$	��Top=�$��15��$? 9이로 인해 DataTool의 작동이 중지될 수 있다.���� -   $ checkBoxCDNValidate��$��파일 유효성 검사��$
��Left=�$��	10,30,0,0q�$	��Top=�$��15��$ CDN에서 파일 확인���� -   $ checkBoxCDNIndex��$��캐시 인덱스��$
��Left=�$��	10,50,0,0q�$	��Top=�$��15�� d� 	IsChecked$
 TrueY�$4 .CDN에서 색인 파일을 캐시하십시오.���� -   $ checkBoxCDNData��$��캐시 데이터��$
��Left=�$��	10,70,0,0q�$	��Top=�$��15��$
 TrueY�$7 1CDN에서 데이터 파일을 캐시하십시오.���� -   $ groupBoxOutput��$��로깅��$
��Left=�$	��140��$��	9,421,0,0q�$	��Top=�$	��824��.���� -   $ textBoxOutput��$
��Left=�$	��115�� �� TextWrapping$
 Wrap=�$	��Top=�$	��811��$!��QuickDataTool이 시작됨.��$ �� HorizontalScrollBarVisibility$
 Auto=�" �� VerticalScrollBarVisibility$
 Auto=� . �� -   $ groupBoxModesNew��$��공구모드��$
��Left=�$	��150��$��
185,70,0,0q�$	��Top=�$	��455��.��� $	��140��$	��Top=�$��
0,0,-2,-12q�.+�	� -    	�Name$ radioButtonListMode��$��리스트 모드��$
��Left=�$��	10,10,0,0q�$	��Top=�	� -   $ radioButtonExtractMode��$��추출모드��$
��Left=�$��
135,10,0,0q�$	��Top=��� -   $
 comboBoxList��$
��Left=�$��	10,30,0,0q�$	��Top=�$	��120��{�.  .@��� -    ��Name$ l_generalUnlocks��$��일반항목��$S M일반 아이콘, 스프레이 및 플레이어 초상화를 나열합니다.���� -   $ l_heroUnlocks��$��히어로 아이템��$F @영웅 별 잠금 해제 가능한 콘텐츠를 나열합니다.���� -   $ l_heroes��$��영웅의 등장인물��$$ 영웅을 모두 나열하라.���� -   $ l_maps��$��지도 목록��$' !모든 맵을 나열하십시오.���� -   $ 	l_strings��$��툴팁��$- '모든 문자열을 나열하십시오.���� -   $ l_achievements��$��업적��$$ 모든 업적을 열거하라.���� -   $ l_lootboxes��$��전리품 상자 활자��$$ 모든 전리품 상자 목록���� -   $ l_highlights��$,��&플레이어 하이라이트 비디오��$@ :모든 플레이어 하이라이트를 나열하십시오.���� -    $ l_keys��$��리소스 키��$1 +모든 암호화 키를 나열하십시오.���� -!   $ l_subt��$��	자막이��$. (게임 내 자막을 나열하십시오.���� -"   $ l_subtAudio��$��자막 (오디오)��$E ?오디오 데이터에서 게임 내 자막을 나열합니다.���� -#   $
 comboBoxExtract��$
��Left=�$��
135,30,0,0q�$	��Top=�$	��120��{�.  .@��� -$   $ e_generalUnlocks��$��일반항목��$Y S일반적인 아이콘, 스프레이 및 플레이어 초상화를 추출합니다.���� -%   $ e_heroUnlocks��$��히어로 아이템...��$I C영웅 별 잠금 해제 가능한 컨텐츠를 추출하십시오.��
����  ��� -&   $ e_heroVoice��$��히어로 보이스...��$; 5모든 영웅의 음성을 그룹으로 추출한다.��
����  ��� -'   $ e_maps��$��지도 추출...��$$ 모든 지도를 추출한다.��
����  ��� -(   $ e_lootboxes��$��전리품 상자 추출��$> 8모든 약탈품 보관함 모델을 추출하십시오.���� -)   $ e_npcs��$$��재생할 수 없는 문자...��$ NPC 모델 추출��
����  ��� -*   $ e_abilities��$��캐릭터 능력��$< 6히어로 기능 아이콘 및 비디오 데모 추출���� -+   $ e_menv��$��지도 환경��$� �지도 스카이 박스 기하학/큐브맵, 접지/블렌드 큐브맵, 지도 아나운서 파일, LUT 파일 및 주변 사운드를 추출한다.���� -,   $	 buttonExtractQuery��$��추출 쿼리 편집...��$
��Left=�$��
260,30,0,0q�$	��Top=�$	��158��
����  �$y�Hidden=�$��22���� $��변환 안 함:��$��6,62,350,23q��� --   $ checkBoxNoTex��$��	텍스처��$
��Left=�$��	95,68,0,0q�$	��Top=�$D >텍스쳐를 DDS로 변환하지 않도록 설정하십시오.���� -.   $ checkBoxNoSnd��$��소리��$
��Left=�$��
163,68,0,0q�$	��Top=�$7 1OGG로의 사운드 변환을 비활성화한다.���� -/   $ checkBoxNoMdl��$��모델��$
��Left=�$��
222,68,0,0q�$	��Top=�$9 3OWMDL로 모델 변환을 비활성화하십시오.���� -0   $ checkBoxNoAni��$��애니메이션��$
��Left=�$��
286,68,0,0q�$	��Top=�$: 4SEANIM으로의 애니메이션 변환 비활성화.���� $��추가 옵션:��$��6,83,368,28q��� -1   $ checkBoxRefpose��$ ��레퍼런스 포즈 추출��$
��Left=�$��	95,88,0,0q�$	��Top=�$. (SMD 기준 포즈를 추출하십시오.���� -2   $ checkBoxDeduplicate��$��데이터 중복 제거��$
��Left=�$��
205,88,0,0q�$	��Top=�$J D내보낸 데이터에서 중복된 텍스처를 제거하십시오.���� -3   $  checkBoxDisableSEAnimScale��$(��"SEAnim 스케일링 사용 안 함��$
��Left=�$��
95,108,0,0q�$	��Top=�$� �SEAnim 골격 스케일링 비활성화. Blender 2.8x 또는 Maya를 사용하려면 상자를 선택하십시오. Blender 2.79를 사용할 계획이라면 확인란에 체크하지 마십시오.���� -4   $ checkBoxFlatten��$#��평평한 디렉토리 구조��$
��Left=�$��269,108,0,0q�$	��Top=�$S M사운드 파일을 변환할 때 디렉토리 구조를 평평하게 한다.���� $
��LOD=��$��10,105,373,10q�$��	Noto Sans)��� -5   $ 
textBoxLOD��$
��Left=�$��20��$��
52,106,0,0q�$
 Wrap=�$��0��$	��Top=�$��20�� �� 	MaxLength$ 1�� �� TextAlignment$ Center=� J� RenderTransformOrigin$ 1.683,0.483&��� -6   $ checkBoxJSONOut��$��JSON으로 출력 결과��$
��Left=�$��
262,34,0,0q�$	��Top=�$y�Hidden=��� -7   $ labelOutputPath��$��출력 경로��$
��Left=�$��	9,257,0,0q�$	��Top=�$��25��$	��110��$��Center=��� -8   $ textBoxOutputPath��$
��Left=�$��Center=�$��25��$��123,257,0,0q�$	��Top=�$	��550��$ 1�� . ���	#FFABADB3$��./���� -9   $	 buttonOutputPath��$	��...��$
��Left=�$��680,257,0,0q�$	��Top=�$��25��$��25���� -:   $	 buttonStart��$��	스타트��$
��Left=�$��710,257,0,0q�$	��Top=�$	��123��$��25��
����  ��� -;   $ groupBoxInformations��$��버전 정보 패널��$
��Left=�$	��123��$��
10,295,0,0q�$	��Top=�$	��620��.��� $
��Left=�$	��113��$	��Top=�$	��620��$��0,0,-12,-11.8q�.+��� -<   $ labelTagOverwatchVersion��$��Overwatch 버전:��$
��Left=�$��	10,10,0,0q�$	��Top=��� -=   $ labelTagOverwatchBranch��$��Overwatch 지사:��$
��Left=�$��	10,40,0,0q�$	��Top=��� ->   $  labelTagOverToolExecutable��$��DataTool 버전:��$
��Left=�$��
288,10,0,0q�$	��Top=��� -?   $ labelTagOverToolIntegrity��$��DataTool 키 파일:��$
��Left=�$��
288,40,0,0q�$	��Top=��� -@   $ labelOverwatchVersion��$��사용할 수 없음��$
��Left=�$��
121,10,0,0q�$	��Top=��� -A   $ labelOverwatchBranch��$��사용할 수 없음��$
��Left=�$��
121,40,0,0q�$	��Top=��� -B   $ labelOverToolIntegrity��$��사용할 수 없음��$
��Left=�$��
432,40,0,0q�$	��Top=��� -C   $ labelOverToolExecutable��$��사용할 수 없음��$
��Left=�$��
432,10,0,0q�$	��Top=��� -D   $	 buttonTaskkill��$"��DataTool 프로세스 종료��$
��Left=�$��635,317,0,0q�$	��Top=�$	��198��$��25��
���  ���� -E   $	 buttonSaveOutput��$��파일에 로그 저장��$
��Left=�$��635,347,0,0q�$	��Top=�$��95��$��24���� -F   $	 buttonSaveCmdline��$��명령줄 저장��$
��Left=�$��738,347,0,0q�$	��Top=�$��95��$��24���� -G   $	 buttonAbout��$��프로그램 정보��$
��Left=�$��635,376,0,0q�$	��Top=�$	��198��$��24��
���   ��� -H   $ textBoxCommand��$
��Left=�$��Center=�$��25��$��123,225,0,0q�$	��Top=�$	��550��$ 1�����	#FFABADB3{�.  $e _사용자 지정 명령줄을 사용하려면 왼쪽에 있는 확인란을 선택하십시오.���� -I   $ checkBoxCommand��$ ��사용자 지정 명령줄��$
��Left=�$��
13,230,0,0q�$	��Top=�$��15��$X R사용자 지정 명령줄을 입력하려면 이 확인란을 선택하십시오.��$��99���� -J   $	 buttonClearCommand��$*��$사용자 지정 명령줄 지우기��$
��Left=�$��680,225,0,0q�$	��Top=�$	��153��$��25��
���   ��� $��텍스쳐 포맷��$
��Left=�$	��150��$��
645,70,0,0q�$	��Top=�$	��153��.��� $
��Left=�$	��110��$��0,0,-2.2,-12.8q�$	��Top=�$	��143��.+��� $��텍스처 변환 대상:��$
��Left=�$��	10,10,0,0q�$	��Top=�$	��123���� -K   $
 comboBoxTextureFmt��$
��Left=�$��	10,41,0,0q�$	��Top=�$	��120��$ 1��.@��� $	��dds���� $	��tif���� $	��tga��