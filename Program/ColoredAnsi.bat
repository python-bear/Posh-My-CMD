@Echo off


Rem *****************************************************
Rem *                  ColoredAnsi.cmd                  *
Rem *****************************************************
Rem *                                                   *
Rem * This program displays tables of all of the ANSI   *
Rem * color escape sequences that can be used in the    *
Rem * CMD terminal. It is for seeing the current color  *
Rem * of your temrinal.                                 *
Rem *                                                   *
Rem *****************************************************
Rem *                                                   *
Rem *          Requires Windows 1909 or newer           *
Rem *                                                   *
Rem *****************************************************
Rem *                                                   *
Rem * The original version of this program is from      *
Rem * SS64.com (it can be sound at the following URL:   *
Rem * https://ss64.com/nt/echoansi.txt), so thanks to   *
Rem * SS64.com. The current version has been            *
Rem * improved/updated to by Python_Bear.               *
Rem *                                                   *
Rem *****************************************************


Setlocal

:SetUp
	Rem Define foreground and background ANSI colors:
	Set _FG_BG_RST=[0m && Rem Resets the foregournd and background formatting
	Set _BRIGHT=[1m && Rem Sets the foreground text to bright/bold, doesn't have an effect in default CMD
	Set _DIM=[2m && Rem Sets the foreground text to a dimmer color, doesn't have an effect in default CMD
	Set _ITALICS=[3m && Rem Sets the text to italics, doesn't have an effect in default CMD
	Set _UNDERLINE=[4m && Rem Give the text an underline of the same color
	Set _SLOW_BLINKING=[5m && Rem Make the text blink slowly, doesn't have an effect in default CMD
	Set _FAST_BLINKING=[6m && Rem Make the text blink quickly, doesn't have an effect in default CMD
	Set _INVERSE=[7m && Rem Swaps the colors of the foreground and the background
	Set _HIDDEN=[8m && Rem Hides the text, doesn't have an effect in default CMD
	Set _STRIKETHROUGH=[9m && Rem Puts a line through the text, doesn't have an effect in default CMD
	Set _FG_BLK=[30m
	Set _BG_BLK=[40m
	Set _FG_RED=[31m
	Set _BG_RED=[41m
	Set _FG_GRN=[32m
	Set _BG_GRN=[42m
	Set _FG_YLW=[33m
	Set _BG_YLW=[43m
	Set _FG_BLU=[34m
	Set _BG_BLU=[44m
	Set _FG_MGN=[35m
	Set _BG_MGN=[45m
	Set _FG_CYN=[36m
	Set _BG_CYN=[46m
	Set _FG_LGR=[37m
	Set _BG_LGR=[47m
	Set _FG_DGR=[90m
	Set _BG_DGR=[100m
	Set _FG_B_RED=[91m
	Set _BG_B_RED=[101m
	Set _FG_B_GRN=[92m
	Set _BG_B_GRN=[102m
	Set _FG_B_YLW=[93m
	Set _BG_B_YLW=[103m
	Set _FG_B_BLU=[94m
	Set _BG_B_BLU=[104m
	Set _FG_B_MGN=[95m
	Set _BG_B_MGN=[105m
	Set _FG_B_CYN=[96m
	Set _BG_B_CYN=[106m
	Set _FG_B_WHT=[97m
	Set _BG_B_WHT=[107m
	
	Rem Check what action was supplied
	If /I "%~1" == "-h" Goto :HelpMessage
	If /I "%~1" == "-tb" Goto :BigTable
	If /I "%~1" == "-ts" Goto :SmallTables
	If /I "%~1" == "-v" Goto :Vocabulary
	If /I "%~1" == "-i" Goto :IntroMessage
	If /I "%~1" == "-f" Goto :FormatingExamples
	Goto :BadChoiceMessage
	Exit /B



:IntroMessage
	Rem Display the about message in the terminal
	Echo:
	Echo:
	Echo *****************************************************
	Echo *                  ColoredAnsi.cmd                  *
	Echo *****************************************************
	Echo *                                                   *
	Echo * This program displays tables of all of the ANSI   *
	Echo * color escape sequences that can be used in the    *
	Echo * CMD terminal. It is for seeing the current color  *
	Echo * of your temrinal.                                 *
	Echo *                                                   *
	Echo *****************************************************
	Echo *                                                   *
	Echo *          Requires Windows 1909 or newer           *
	Echo *                                                   *
	Echo *****************************************************
	Echo *                                                   *
	Echo * The original version of this program is from      *
	Echo * SS64.com (it can be sound at the following URL:   *
	Echo * https://ss64.com/nt/echoansi.txt), so thanks to   *
	Echo * SS64.com. The current version has been            *
	Echo * improved/updated to by Python_Bear.               *
	Echo *                                                   *
	Echo *****************************************************
	Echo:
	Echo:
	Exit /B

:Vocabulary
	Echo:
	Echo:
	Echo *****************************************
	Echo *              Vocabulary:              *
	Echo *****************************************
	Echo *                                       *
	Echo *         Red           -^> RED          *
	Echo *         Yellow        -^> YLW          *
	Echo *         Green         -^> GRN          *
	Echo *         Cyan          -^> CYN          *
	Echo *         Blue          -^> BLU          *
	Echo *         Magenta       -^> MGN          *
	Echo *         Black         -^> BLK          *
	Echo *         Dark Gray     -^> DGR          *
	Echo *         Gray          -^> GRY          *
	Echo *         Light Gray    -^> LGR          *
	Echo *         White         -^> WHT          *
	Echo *                                       *
	Echo *         Foreground    -^> FG           *
	Echo *         Background    -^> BG           *
	Echo *                                       *
	Echo *         Bright        -^> b            *
	Echo *         Normal        -^> n            *
	Echo *                                       *
	Echo *         Dark          -^> d            *
	Echo *         Light         -^> l            *
	Echo *                                       *
	Echo *****************************************
	Echo:
	Echo:
	Exit /B

:FormatingExamples
	Echo Underline:     %_UNDERLINE% hello there %_FG_BG_RST%
	Echo Italics:       %_ITALICS% hello there %_FG_BG_RST%
	Echo Bright:        %_BRIGHT% hello there %_FG_BG_RST%
	Echo Inverse:       %_INVERSE% hello there %_FG_BG_RST%
	Echo Dim:           %_DIM% hello there %_FG_BG_RST%
	Echo Slow Blinking: %_SLOW_BLINKING% hello there %_FG_BG_RST%
	Echo Fast Blinking: %_FAST_BLINKING% hello there %_FG_BG_RST%
	Echo Strikethrough: %_STRIKETHROUGH% hello there %_FG_BG_RST%
	Echo Hidden:        %_HIDDEN% hello there %_FG_BG_RST%
	Exit /B

:SmallTables
	Echo:
	Echo:
	Echo %_FG_BG_RST% Black             [nBLK] foreground 30 
	Echo %_FG_BLK%%_BG_BLK% nBLK/nBLK %_FG_BLK%%_BG_RED% nBLK/nRED %_FG_BLK%%_BG_GRN% nBLK/nGRN %_FG_BLK%%_BG_YLW% nBLK/nYLW %_FG_BLK%%_BG_BLU% nBLK/nBLU %_FG_BLK%%_BG_MGN% nBLK/nMGN %_FG_BLK%%_BG_CYN% nBLK/nCYN %_FG_BLK%%_BG_LGR% nBLK/nLGR %_FG_BG_RST% -
	Echo %_FG_BLK%%_BG_DGR% nBLK/nDGR %_FG_BLK%%_BG_B_RED% nBLK/bRED %_FG_BLK%%_BG_B_GRN% nBLK/bGRN %_FG_BLK%%_BG_B_YLW% nBLK/bYLW %_FG_BLK%%_BG_B_BLU% nBLK/bBLU %_FG_BLK%%_BG_B_MGN% nBLK/bMGN %_FG_BLK%%_BG_B_CYN% nBLK/bCYN %_FG_BLK%%_BG_B_WHT% nBLK/nWHT %_FG_BG_RST% -
	Echo:
	Echo %_FG_BG_RST% Red               [nRED] foreground 31 
	Echo %_FG_RED%%_BG_BLK% nRED/nBLK %_FG_RED%%_BG_RED% nRED/nRED %_FG_RED%%_BG_GRN% nRED/nGRN %_FG_RED%%_BG_YLW% nRED/nYLW %_FG_RED%%_BG_BLU% nRED/nBLU %_FG_RED%%_BG_MGN% nRED/nMGN %_FG_RED%%_BG_CYN% nRED/nCYN %_FG_RED%%_BG_LGR% nRED/nLGR %_FG_BG_RST% -
	Echo %_FG_RED%%_BG_DGR% nRED/nDGR %_FG_RED%%_BG_B_RED% nRED/bRED %_FG_RED%%_BG_B_GRN% nRED/bGRN %_FG_RED%%_BG_B_YLW% nRED/bYLW %_FG_RED%%_BG_B_BLU% nRED/bBLU %_FG_RED%%_BG_B_MGN% nRED/bMGN %_FG_RED%%_BG_B_CYN% nRED/bCYN %_FG_RED%%_BG_B_WHT% nRED/nWHT %_FG_BG_RST% -
	Echo:
	Echo %_FG_BG_RST% Green             [nGRN] foreground 32 
	Echo %_FG_GRN%%_BG_BLK% nGRN/nBLK %_FG_GRN%%_BG_RED% nGRN/nRED %_FG_GRN%%_BG_GRN% nGRN/nGRN %_FG_GRN%%_BG_YLW% nGRN/nYLW %_FG_GRN%%_BG_BLU% nGRN/nBLU %_FG_GRN%%_BG_MGN% nGRN/nMGN %_FG_GRN%%_BG_CYN% nGRN/nCYN %_FG_GRN%%_BG_LGR% nGRN/nLGR %_FG_BG_RST% -
	Echo %_FG_GRN%%_BG_DGR% nGRN/nDGR %_FG_GRN%%_BG_B_RED% nGRN/bRED %_FG_GRN%%_BG_B_GRN% nGRN/bGRN %_FG_GRN%%_BG_B_YLW% nGRN/bYLW %_FG_GRN%%_BG_B_BLU% nGRN/bBLU %_FG_GRN%%_BG_B_MGN% nGRN/bMGN %_FG_GRN%%_BG_B_CYN% nGRN/bCYN %_FG_GRN%%_BG_B_WHT% nGRN/nWHT %_FG_BG_RST% -
	Echo:
	Echo %_FG_BG_RST% Yellow            [nYLW] foreground 33 
	Echo %_FG_YLW%%_BG_BLK% nYLW/nBLK %_FG_YLW%%_BG_RED% nYLW/nRED %_FG_YLW%%_BG_GRN% nYLW/nGRN %_FG_YLW%%_BG_YLW% nYLW/nYLW %_FG_YLW%%_BG_BLU% nYLW/nBLU %_FG_YLW%%_BG_MGN% nYLW/nMGN %_FG_YLW%%_BG_CYN% nYLW/nCYN %_FG_YLW%%_BG_LGR% nYLW/nLGR %_FG_BG_RST% -
	Echo %_FG_YLW%%_BG_DGR% nYLW/nDGR %_FG_YLW%%_BG_B_RED% nYLW/bRED %_FG_YLW%%_BG_B_GRN% nYLW/bGRN %_FG_YLW%%_BG_B_YLW% nYLW/bYLW %_FG_YLW%%_BG_B_BLU% nYLW/bBLU %_FG_YLW%%_BG_B_MGN% nYLW/bMGN %_FG_YLW%%_BG_B_CYN% nYLW/bCYN %_FG_YLW%%_BG_B_WHT% nYLW/nWHT %_FG_BG_RST% -
	Echo:
	Echo %_FG_BG_RST% Blue              [nBLU] foreground 34 
	Echo %_FG_BLU%%_BG_BLK% nBLU/nBLK %_FG_BLU%%_BG_RED% nBLU/nRED %_FG_BLU%%_BG_GRN% nBLU/nGRN %_FG_BLU%%_BG_YLW% nBLU/nYLW %_FG_BLU%%_BG_BLU% nBLU/nBLU %_FG_BLU%%_BG_MGN% nBLU/nMGN %_FG_BLU%%_BG_CYN% nBLU/nCYN %_FG_BLU%%_BG_LGR% nBLU/nLGR %_FG_BG_RST% -
	Echo %_FG_BLU%%_BG_DGR% nBLU/nDGR %_FG_BLU%%_BG_B_RED% nBLU/bRED %_FG_BLU%%_BG_B_GRN% nBLU/bGRN %_FG_BLU%%_BG_B_YLW% nBLU/bYLW %_FG_BLU%%_BG_B_BLU% nBLU/bBLU %_FG_BLU%%_BG_B_MGN% nBLU/bMGN %_FG_BLU%%_BG_B_CYN% nBLU/bCYN %_FG_BLU%%_BG_B_WHT% nBLU/nWHT %_FG_BG_RST% -
	Echo:
	Echo %_FG_BG_RST% Magenta           [nMGN] foreground 35 
	Echo %_FG_MGN%%_BG_BLK% nMGN/nBLK %_FG_MGN%%_BG_RED% nMGN/nRED %_FG_MGN%%_BG_GRN% nMGN/nGRN %_FG_MGN%%_BG_YLW% nMGN/nYLW %_FG_MGN%%_BG_BLU% nMGN/nBLU %_FG_MGN%%_BG_MGN% nMGN/nMGN %_FG_MGN%%_BG_CYN% nMGN/nCYN %_FG_MGN%%_BG_LGR% nMGN/nLGR %_FG_BG_RST% -
	Echo %_FG_MGN%%_BG_DGR% nMGN/nDGR %_FG_MGN%%_BG_B_RED% nMGN/bRED %_FG_MGN%%_BG_B_GRN% nMGN/bGRN %_FG_MGN%%_BG_B_YLW% nMGN/bYLW %_FG_MGN%%_BG_B_BLU% nMGN/bBLU %_FG_MGN%%_BG_B_MGN% nMGN/bMGN %_FG_MGN%%_BG_B_CYN% nMGN/bCYN %_FG_MGN%%_BG_B_WHT% nMGN/nWHT %_FG_BG_RST% -
	Echo:
	Echo %_FG_BG_RST% Cyan              [nCYN] foreground 36 
	Echo %_FG_CYN%%_BG_BLK% nCYN/nBLK %_FG_CYN%%_BG_RED% nCYN/nRED %_FG_CYN%%_BG_GRN% nCYN/nGRN %_FG_CYN%%_BG_YLW% nCYN/nYLW %_FG_CYN%%_BG_BLU% nCYN/nBLU %_FG_CYN%%_BG_MGN% nCYN/nMGN %_FG_CYN%%_BG_CYN% nCYN/nCYN %_FG_CYN%%_BG_LGR% nCYN/nLGR %_FG_BG_RST% -
	Echo %_FG_CYN%%_BG_DGR% nCYN/nDGR %_FG_CYN%%_BG_B_RED% nCYN/bRED %_FG_CYN%%_BG_B_GRN% nCYN/bGRN %_FG_CYN%%_BG_B_YLW% nCYN/bYLW %_FG_CYN%%_BG_B_BLU% nCYN/bBLU %_FG_CYN%%_BG_B_MGN% nCYN/bMGN %_FG_CYN%%_BG_B_CYN% nCYN/bCYN %_FG_CYN%%_BG_B_WHT% nCYN/nWHT %_FG_BG_RST% -
	Echo:
	Echo %_FG_BG_RST% Light Gray        [nLGR] foreground 37 
	Echo %_FG_LGR%%_BG_BLK% nLGR/nBLK %_FG_LGR%%_BG_RED% nLGR/nRED %_FG_LGR%%_BG_GRN% nLGR/nGRN %_FG_LGR%%_BG_YLW% nLGR/nYLW %_FG_LGR%%_BG_BLU% nLGR/nBLU %_FG_LGR%%_BG_MGN% nLGR/nMGN %_FG_LGR%%_BG_CYN% nLGR/nCYN %_FG_LGR%%_BG_LGR% nLGR/nLGR %_FG_BG_RST% -
	Echo %_FG_LGR%%_BG_DGR% nLGR/nDGR %_FG_LGR%%_BG_B_RED% nLGR/bRED %_FG_LGR%%_BG_B_GRN% nLGR/bGRN %_FG_LGR%%_BG_B_YLW% nLGR/bYLW %_FG_LGR%%_BG_B_BLU% nLGR/bBLU %_FG_LGR%%_BG_B_MGN% nLGR/bMGN %_FG_LGR%%_BG_B_CYN% nLGR/bCYN %_FG_LGR%%_BG_B_WHT% nLGR/nWHT %_FG_BG_RST% -
	Echo:
	Echo %_FG_BG_RST% Dark Gray         [nDGR] foreground 90 
	Echo %_FG_DGR%%_BG_BLK% nDGR/nBLK %_FG_DGR%%_BG_RED% nDGR/nRED %_FG_DGR%%_BG_GRN% nDGR/nGRN %_FG_DGR%%_BG_YLW% nDGR/nYLW %_FG_DGR%%_BG_BLU% nDGR/nBLU %_FG_DGR%%_BG_MGN% nDGR/nMGN %_FG_DGR%%_BG_CYN% nDGR/nCYN %_FG_DGR%%_BG_LGR% nDGR/nLGR %_FG_BG_RST% -
	Echo %_FG_DGR%%_BG_DGR% nDGR/nDGR %_FG_DGR%%_BG_B_RED% nDGR/bRED %_FG_DGR%%_BG_B_GRN% nDGR/bGRN %_FG_DGR%%_BG_B_YLW% nDGR/bYLW %_FG_DGR%%_BG_B_BLU% nDGR/bBLU %_FG_DGR%%_BG_B_MGN% nDGR/bMGN %_FG_DGR%%_BG_B_CYN% nDGR/bCYN %_FG_DGR%%_BG_B_WHT% nDGR/nWHT %_FG_BG_RST% -
	Echo:
	Echo %_FG_BG_RST% White             [nWHT] foreground 97 
	Echo %_FG_B_WHT%%_BG_BLK% nWHT/nBLK %_FG_B_WHT%%_BG_RED% nWHT/nRED %_FG_B_WHT%%_BG_GRN% nWHT/nGRN %_FG_B_WHT%%_BG_YLW% nWHT/nYLW %_FG_B_WHT%%_BG_BLU% nWHT/nBLU %_FG_B_WHT%%_BG_MGN% nWHT/nMGN %_FG_B_WHT%%_BG_CYN% nWHT/nCYN %_FG_B_WHT%%_BG_LGR% nWHT/nLGR %_FG_BG_RST% -
	Echo %_FG_B_WHT%%_BG_DGR% nWHT/nDGR %_FG_B_WHT%%_BG_B_RED% nWHT/bRED %_FG_B_WHT%%_BG_B_GRN% nWHT/bGRN %_FG_B_WHT%%_BG_B_YLW% nWHT/bYLW %_FG_B_WHT%%_BG_B_BLU% nWHT/bBLU %_FG_B_WHT%%_BG_B_MGN% nWHT/bMGN %_FG_B_WHT%%_BG_B_CYN% nWHT/bCYN %_FG_B_WHT%%_BG_B_WHT% nWHT/nWHT %_FG_BG_RST% -
	Echo:
	Echo %_FG_BG_RST% Bright Red        [bRED] foreground 91 
	Echo %_FG_B_RED%%_BG_BLK% bRED/nBLK %_FG_B_RED%%_BG_RED% bRED/nRED %_FG_B_RED%%_BG_GRN% bRED/nGRN %_FG_B_RED%%_BG_YLW% bRED/nYLW %_FG_B_RED%%_BG_BLU% bRED/nBLU %_FG_B_RED%%_BG_MGN% bRED/nMGN %_FG_B_RED%%_BG_CYN% bRED/nCYN %_FG_B_RED%%_BG_LGR% bRED/nLGR %_FG_BG_RST% -
	Echo %_FG_B_RED%%_BG_DGR% bRED/nDGR %_BG_B_RED%%_BG_B_RED% bRED/bRED %_FG_B_RED%%_BG_B_GRN% bRED/bGRN %_FG_B_RED%%_BG_B_YLW% bRED/bYLW %_FG_B_RED%%_BG_B_BLU% bRED/bBLU %_FG_B_RED%%_BG_B_MGN% bRED/bMGN %_FG_B_RED%%_BG_B_CYN% bRED/bCYN %_FG_B_RED%%_BG_B_WHT% bRED/nWHT %_FG_BG_RST% -
	Echo:
	Echo %_FG_BG_RST% Bright Green      [bGRN] foreground 92 
	Echo %_FG_B_GRN%%_BG_BLK% bGRN/nBLK %_FG_B_GRN%%_BG_RED% bGRN/nRED %_FG_B_GRN%%_BG_GRN% bGRN/nGRN %_FG_B_GRN%%_BG_YLW% bGRN/nYLW %_FG_B_GRN%%_BG_BLU% bGRN/nBLU %_FG_B_GRN%%_BG_MGN% bGRN/nMGN %_FG_B_GRN%%_BG_CYN% bGRN/nCYN %_FG_B_GRN%%_BG_LGR% bGRN/nLGR %_FG_BG_RST% -
	Echo %_FG_B_GRN%%_BG_DGR% bGRN/nDGR %_FG_B_GRN%%_BG_B_RED% bGRN/bRED %_FG_B_GRN%%_BG_B_GRN% bGRN/bGRN %_FG_B_GRN%%_BG_B_YLW% bGRN/bYLW %_FG_B_GRN%%_BG_B_BLU% bGRN/bBLU %_FG_B_GRN%%_BG_B_MGN% bGRN/bMGN %_FG_B_GRN%%_BG_B_CYN% bGRN/bCYN %_FG_B_GRN%%_BG_B_WHT% bGRN/nWHT %_FG_BG_RST% -
	Echo:
	Echo %_FG_BG_RST% Bright Yellow     [bYLW] foreground 93 
	Echo %_FG_B_YLW%%_BG_BLK% bYLW/nBLK %_FG_B_YLW%%_BG_RED% bYLW/nRED %_FG_B_YLW%%_BG_GRN% bYLW/nGRN %_FG_B_YLW%%_BG_YLW% bYLW/nYLW %_FG_B_YLW%%_BG_BLU% bYLW/nBLU %_FG_B_YLW%%_BG_MGN% bYLW/nMGN %_FG_B_YLW%%_BG_CYN% bYLW/nCYN %_FG_B_YLW%%_BG_LGR% bYLW/nLGR %_FG_BG_RST% -
	Echo %_FG_B_YLW%%_BG_DGR% bYLW/nDGR %_FG_B_YLW%%_BG_B_RED% bYLW/bRED %_FG_B_YLW%%_BG_B_GRN% bYLW/bGRN %_FG_B_YLW%%_BG_B_YLW% bYLW/bYLW %_FG_B_YLW%%_BG_B_BLU% bYLW/bBLU %_FG_B_YLW%%_BG_B_MGN% bYLW/bMGN %_FG_B_YLW%%_BG_B_CYN% bYLW/bCYN %_FG_B_YLW%%_BG_B_WHT% bYLW/nWHT %_FG_BG_RST% -
	Echo:
	Echo %_FG_BG_RST% Bright Blue       [bBLU] foreground 94 
	Echo %_FG_B_BLU%%_BG_BLK% bBLU/nBLK %_FG_B_BLU%%_BG_RED% bBLU/nRED %_FG_B_BLU%%_BG_GRN% bBLU/nGRN %_FG_B_BLU%%_BG_YLW% bBLU/nYLW %_FG_B_BLU%%_BG_BLU% bBLU/nBLU %_FG_B_BLU%%_BG_MGN% bBLU/nMGN %_FG_B_BLU%%_BG_CYN% bBLU/nCYN %_FG_B_BLU%%_BG_LGR% bBLU/nLGR %_FG_BG_RST% -
	Echo %_FG_B_BLU%%_BG_DGR% bBLU/nDGR %_FG_B_BLU%%_BG_B_RED% bBLU/bRED %_FG_B_BLU%%_BG_B_GRN% bBLU/bGRN %_FG_B_BLU%%_BG_B_YLW% bBLU/bYLW %_FG_B_BLU%%_BG_B_BLU% bBLU/bBLU %_FG_B_BLU%%_BG_B_MGN% bBLU/bMGN %_FG_B_BLU%%_BG_B_CYN% bBLU/bCYN %_FG_B_BLU%%_BG_B_WHT% bBLU/nWHT %_FG_BG_RST% -
	Echo:
	Echo %_FG_BG_RST% Bright Magenta    [bMGN] foreground 95 
	Echo %_FG_B_MGN%%_BG_BLK% bMGN/nBLK %_FG_B_MGN%%_BG_RED% bMGN/nRED %_FG_B_MGN%%_BG_GRN% bMGN/nGRN %_FG_B_MGN%%_BG_YLW% bMGN/nYLW %_FG_B_MGN%%_BG_BLU% bMGN/nBLU %_FG_B_MGN%%_BG_MGN% bMGN/nMGN %_FG_B_MGN%%_BG_CYN% bMGN/nCYN %_FG_B_MGN%%_BG_LGR% bMGN/nLGR %_FG_BG_RST% -
	Echo %_FG_B_MGN%%_BG_DGR% bMGN/nDGR %_FG_B_MGN%%_BG_B_RED% bMGN/bRED %_FG_B_MGN%%_BG_B_GRN% bMGN/bGRN %_FG_B_MGN%%_BG_B_YLW% bMGN/bYLW %_FG_B_MGN%%_BG_B_BLU% bMGN/bBLU %_FG_B_MGN%%_BG_B_MGN% bMGN/bMGN %_FG_B_MGN%%_BG_B_CYN% bMGN/bCYN %_FG_B_MGN%%_BG_B_WHT% bMGN/nWHT %_FG_BG_RST% -
	Echo:
	Echo %_FG_BG_RST% Bright Cyan       [bCYN] foreground 96 
	Echo %_FG_B_CYN%%_BG_BLK% bCYN/nBLK %_FG_B_CYN%%_BG_RED% bCYN/nRED %_FG_B_CYN%%_BG_GRN% bCYN/nGRN %_FG_B_CYN%%_BG_YLW% bCYN/nYLW %_FG_B_CYN%%_BG_BLU% bCYN/nBLU %_FG_B_CYN%%_BG_MGN% bCYN/nMGN %_FG_B_CYN%%_BG_CYN% bCYN/nCYN %_FG_B_CYN%%_BG_LGR% bCYN/nLGR %_FG_BG_RST% -
	Echo %_FG_B_CYN%%_BG_DGR% bCYN/nDGR %_FG_B_CYN%%_BG_B_RED% bCYN/bRED %_FG_B_CYN%%_BG_B_GRN% bCYN/bGRN %_FG_B_CYN%%_BG_B_YLW% bCYN/bYLW %_FG_B_CYN%%_BG_B_BLU% bCYN/bBLU %_FG_B_CYN%%_BG_B_MGN% bCYN/bMGN %_FG_B_CYN%%_BG_B_CYN% bCYN/bCYN %_FG_B_CYN%%_BG_B_WHT% bCYN/nWHT %_FG_BG_RST% -
	Echo %_FG_BG_RST% 
	Echo:
	Echo:
	Exit /B

:BigTable
	Echo:
	Echo:
	Echo %_FG_BLK%%_BG_BLK% nBLK/nBLK %_FG_BLK%%_BG_RED% nBLK/nRED %_FG_BLK%%_BG_GRN% nBLK/nGRN %_FG_BLK%%_BG_YLW% nBLK/nYLW %_FG_BLK%%_BG_BLU% nBLK/nBLU %_FG_BLK%%_BG_MGN% nBLK/nMGN %_FG_BLK%%_BG_CYN% nBLK/nCYN %_FG_BLK%%_BG_LGR% nBLK/nLGR %_FG_BG_RST% -
	Echo %_FG_BLK%%_BG_DGR% nBLK/nDGR %_FG_BLK%%_BG_B_RED% nBLK/bRED %_FG_BLK%%_BG_B_GRN% nBLK/bGRN %_FG_BLK%%_BG_B_YLW% nBLK/bYLW %_FG_BLK%%_BG_B_BLU% nBLK/bBLU %_FG_BLK%%_BG_B_MGN% nBLK/bMGN %_FG_BLK%%_BG_B_CYN% nBLK/bCYN %_FG_BLK%%_BG_B_WHT% nBLK/nWHT %_FG_BG_RST% -
	Echo %_FG_RED%%_BG_BLK% nRED/nBLK %_FG_RED%%_BG_RED% nRED/nRED %_FG_RED%%_BG_GRN% nRED/nGRN %_FG_RED%%_BG_YLW% nRED/nYLW %_FG_RED%%_BG_BLU% nRED/nBLU %_FG_RED%%_BG_MGN% nRED/nMGN %_FG_RED%%_BG_CYN% nRED/nCYN %_FG_RED%%_BG_LGR% nRED/nLGR %_FG_BG_RST% -
	Echo %_FG_RED%%_BG_DGR% nRED/nDGR %_FG_RED%%_BG_B_RED% nRED/bRED %_FG_RED%%_BG_B_GRN% nRED/bGRN %_FG_RED%%_BG_B_YLW% nRED/bYLW %_FG_RED%%_BG_B_BLU% nRED/bBLU %_FG_RED%%_BG_B_MGN% nRED/bMGN %_FG_RED%%_BG_B_CYN% nRED/bCYN %_FG_RED%%_BG_B_WHT% nRED/nWHT %_FG_BG_RST% -
	Echo %_FG_GRN%%_BG_BLK% nGRN/nBLK %_FG_GRN%%_BG_RED% nGRN/nRED %_FG_GRN%%_BG_GRN% nGRN/nGRN %_FG_GRN%%_BG_YLW% nGRN/nYLW %_FG_GRN%%_BG_BLU% nGRN/nBLU %_FG_GRN%%_BG_MGN% nGRN/nMGN %_FG_GRN%%_BG_CYN% nGRN/nCYN %_FG_GRN%%_BG_LGR% nGRN/nLGR %_FG_BG_RST% -
	Echo %_FG_GRN%%_BG_DGR% nGRN/nDGR %_FG_GRN%%_BG_B_RED% nGRN/bRED %_FG_GRN%%_BG_B_GRN% nGRN/bGRN %_FG_GRN%%_BG_B_YLW% nGRN/bYLW %_FG_GRN%%_BG_B_BLU% nGRN/bBLU %_FG_GRN%%_BG_B_MGN% nGRN/bMGN %_FG_GRN%%_BG_B_CYN% nGRN/bCYN %_FG_GRN%%_BG_B_WHT% nGRN/nWHT %_FG_BG_RST% -
	Echo %_FG_YLW%%_BG_BLK% nYLW/nBLK %_FG_YLW%%_BG_RED% nYLW/nRED %_FG_YLW%%_BG_GRN% nYLW/nGRN %_FG_YLW%%_BG_YLW% nYLW/nYLW %_FG_YLW%%_BG_BLU% nYLW/nBLU %_FG_YLW%%_BG_MGN% nYLW/nMGN %_FG_YLW%%_BG_CYN% nYLW/nCYN %_FG_YLW%%_BG_LGR% nYLW/nLGR %_FG_BG_RST% -
	Echo %_FG_YLW%%_BG_DGR% nYLW/nDGR %_FG_YLW%%_BG_B_RED% nYLW/bRED %_FG_YLW%%_BG_B_GRN% nYLW/bGRN %_FG_YLW%%_BG_B_YLW% nYLW/bYLW %_FG_YLW%%_BG_B_BLU% nYLW/bBLU %_FG_YLW%%_BG_B_MGN% nYLW/bMGN %_FG_YLW%%_BG_B_CYN% nYLW/bCYN %_FG_YLW%%_BG_B_WHT% nYLW/nWHT %_FG_BG_RST% -
	Echo %_FG_BLU%%_BG_BLK% nBLU/nBLK %_FG_BLU%%_BG_RED% nBLU/nRED %_FG_BLU%%_BG_GRN% nBLU/nGRN %_FG_BLU%%_BG_YLW% nBLU/nYLW %_FG_BLU%%_BG_BLU% nBLU/nBLU %_FG_BLU%%_BG_MGN% nBLU/nMGN %_FG_BLU%%_BG_CYN% nBLU/nCYN %_FG_BLU%%_BG_LGR% nBLU/nLGR %_FG_BG_RST% -
	Echo %_FG_BLU%%_BG_DGR% nBLU/nDGR %_FG_BLU%%_BG_B_RED% nBLU/bRED %_FG_BLU%%_BG_B_GRN% nBLU/bGRN %_FG_BLU%%_BG_B_YLW% nBLU/bYLW %_FG_BLU%%_BG_B_BLU% nBLU/bBLU %_FG_BLU%%_BG_B_MGN% nBLU/bMGN %_FG_BLU%%_BG_B_CYN% nBLU/bCYN %_FG_BLU%%_BG_B_WHT% nBLU/nWHT %_FG_BG_RST% -
	Echo %_FG_MGN%%_BG_BLK% nMGN/nBLK %_FG_MGN%%_BG_RED% nMGN/nRED %_FG_MGN%%_BG_GRN% nMGN/nGRN %_FG_MGN%%_BG_YLW% nMGN/nYLW %_FG_MGN%%_BG_BLU% nMGN/nBLU %_FG_MGN%%_BG_MGN% nMGN/nMGN %_FG_MGN%%_BG_CYN% nMGN/nCYN %_FG_MGN%%_BG_LGR% nMGN/nLGR %_FG_BG_RST% -
	Echo %_FG_MGN%%_BG_DGR% nMGN/nDGR %_FG_MGN%%_BG_B_RED% nMGN/bRED %_FG_MGN%%_BG_B_GRN% nMGN/bGRN %_FG_MGN%%_BG_B_YLW% nMGN/bYLW %_FG_MGN%%_BG_B_BLU% nMGN/bBLU %_FG_MGN%%_BG_B_MGN% nMGN/bMGN %_FG_MGN%%_BG_B_CYN% nMGN/bCYN %_FG_MGN%%_BG_B_WHT% nMGN/nWHT %_FG_BG_RST% -
	Echo %_FG_CYN%%_BG_BLK% nCYN/nBLK %_FG_CYN%%_BG_RED% nCYN/nRED %_FG_CYN%%_BG_GRN% nCYN/nGRN %_FG_CYN%%_BG_YLW% nCYN/nYLW %_FG_CYN%%_BG_BLU% nCYN/nBLU %_FG_CYN%%_BG_MGN% nCYN/nMGN %_FG_CYN%%_BG_CYN% nCYN/nCYN %_FG_CYN%%_BG_LGR% nCYN/nLGR %_FG_BG_RST% -
	Echo %_FG_CYN%%_BG_DGR% nCYN/nDGR %_FG_CYN%%_BG_B_RED% nCYN/bRED %_FG_CYN%%_BG_B_GRN% nCYN/bGRN %_FG_CYN%%_BG_B_YLW% nCYN/bYLW %_FG_CYN%%_BG_B_BLU% nCYN/bBLU %_FG_CYN%%_BG_B_MGN% nCYN/bMGN %_FG_CYN%%_BG_B_CYN% nCYN/bCYN %_FG_CYN%%_BG_B_WHT% nCYN/nWHT %_FG_BG_RST% -
	Echo %_FG_LGR%%_BG_BLK% nLGR/nBLK %_FG_LGR%%_BG_RED% nLGR/nRED %_FG_LGR%%_BG_GRN% nLGR/nGRN %_FG_LGR%%_BG_YLW% nLGR/nYLW %_FG_LGR%%_BG_BLU% nLGR/nBLU %_FG_LGR%%_BG_MGN% nLGR/nMGN %_FG_LGR%%_BG_CYN% nLGR/nCYN %_FG_LGR%%_BG_LGR% nLGR/nLGR %_FG_BG_RST% -
	Echo %_FG_LGR%%_BG_DGR% nLGR/nDGR %_FG_LGR%%_BG_B_RED% nLGR/bRED %_FG_LGR%%_BG_B_GRN% nLGR/bGRN %_FG_LGR%%_BG_B_YLW% nLGR/bYLW %_FG_LGR%%_BG_B_BLU% nLGR/bBLU %_FG_LGR%%_BG_B_MGN% nLGR/bMGN %_FG_LGR%%_BG_B_CYN% nLGR/bCYN %_FG_LGR%%_BG_B_WHT% nLGR/nWHT %_FG_BG_RST% -
	Echo %_FG_DGR%%_BG_BLK% nDGR/nBLK %_FG_DGR%%_BG_RED% nDGR/nRED %_FG_DGR%%_BG_GRN% nDGR/nGRN %_FG_DGR%%_BG_YLW% nDGR/nYLW %_FG_DGR%%_BG_BLU% nDGR/nBLU %_FG_DGR%%_BG_MGN% nDGR/nMGN %_FG_DGR%%_BG_CYN% nDGR/nCYN %_FG_DGR%%_BG_LGR% nDGR/nLGR %_FG_BG_RST% -
	Echo %_FG_DGR%%_BG_DGR% nDGR/nDGR %_FG_DGR%%_BG_B_RED% nDGR/bRED %_FG_DGR%%_BG_B_GRN% nDGR/bGRN %_FG_DGR%%_BG_B_YLW% nDGR/bYLW %_FG_DGR%%_BG_B_BLU% nDGR/bBLU %_FG_DGR%%_BG_B_MGN% nDGR/bMGN %_FG_DGR%%_BG_B_CYN% nDGR/bCYN %_FG_DGR%%_BG_B_WHT% nDGR/nWHT %_FG_BG_RST% -
	Echo %_FG_B_WHT%%_BG_BLK% nWHT/nBLK %_FG_B_WHT%%_BG_RED% nWHT/nRED %_FG_B_WHT%%_BG_GRN% nWHT/nGRN %_FG_B_WHT%%_BG_YLW% nWHT/nYLW %_FG_B_WHT%%_BG_BLU% nWHT/nBLU %_FG_B_WHT%%_BG_MGN% nWHT/nMGN %_FG_B_WHT%%_BG_CYN% nWHT/nCYN %_FG_B_WHT%%_BG_LGR% nWHT/nLGR %_FG_BG_RST% -
	Echo %_FG_B_WHT%%_BG_DGR% nWHT/nDGR %_FG_B_WHT%%_BG_B_RED% nWHT/bRED %_FG_B_WHT%%_BG_B_GRN% nWHT/bGRN %_FG_B_WHT%%_BG_B_YLW% nWHT/bYLW %_FG_B_WHT%%_BG_B_BLU% nWHT/bBLU %_FG_B_WHT%%_BG_B_MGN% nWHT/bMGN %_FG_B_WHT%%_BG_B_CYN% nWHT/bCYN %_FG_B_WHT%%_BG_B_WHT% nWHT/nWHT %_FG_BG_RST% -
	Echo %_FG_B_RED%%_BG_BLK% bRED/nBLK %_FG_B_RED%%_BG_RED% bRED/nRED %_FG_B_RED%%_BG_GRN% bRED/nGRN %_FG_B_RED%%_BG_YLW% bRED/nYLW %_FG_B_RED%%_BG_BLU% bRED/nBLU %_FG_B_RED%%_BG_MGN% bRED/nMGN %_FG_B_RED%%_BG_CYN% bRED/nCYN %_FG_B_RED%%_BG_LGR% bRED/nLGR %_FG_BG_RST% -
	Echo %_FG_B_RED%%_BG_DGR% bRED/nDGR %_BG_B_RED%%_BG_B_RED% bRED/bRED %_FG_B_RED%%_BG_B_GRN% bRED/bGRN %_FG_B_RED%%_BG_B_YLW% bRED/bYLW %_FG_B_RED%%_BG_B_BLU% bRED/bBLU %_FG_B_RED%%_BG_B_MGN% bRED/bMGN %_FG_B_RED%%_BG_B_CYN% bRED/bCYN %_FG_B_RED%%_BG_B_WHT% bRED/nWHT %_FG_BG_RST% -
	Echo %_FG_B_GRN%%_BG_BLK% bGRN/nBLK %_FG_B_GRN%%_BG_RED% bGRN/nRED %_FG_B_GRN%%_BG_GRN% bGRN/nGRN %_FG_B_GRN%%_BG_YLW% bGRN/nYLW %_FG_B_GRN%%_BG_BLU% bGRN/nBLU %_FG_B_GRN%%_BG_MGN% bGRN/nMGN %_FG_B_GRN%%_BG_CYN% bGRN/nCYN %_FG_B_GRN%%_BG_LGR% bGRN/nLGR %_FG_BG_RST% -
	Echo %_FG_B_GRN%%_BG_DGR% bGRN/nDGR %_FG_B_GRN%%_BG_B_RED% bGRN/bRED %_FG_B_GRN%%_BG_B_GRN% bGRN/bGRN %_FG_B_GRN%%_BG_B_YLW% bGRN/bYLW %_FG_B_GRN%%_BG_B_BLU% bGRN/bBLU %_FG_B_GRN%%_BG_B_MGN% bGRN/bMGN %_FG_B_GRN%%_BG_B_CYN% bGRN/bCYN %_FG_B_GRN%%_BG_B_WHT% bGRN/nWHT %_FG_BG_RST% -
	Echo %_FG_B_YLW%%_BG_BLK% bYLW/nBLK %_FG_B_YLW%%_BG_RED% bYLW/nRED %_FG_B_YLW%%_BG_GRN% bYLW/nGRN %_FG_B_YLW%%_BG_YLW% bYLW/nYLW %_FG_B_YLW%%_BG_BLU% bYLW/nBLU %_FG_B_YLW%%_BG_MGN% bYLW/nMGN %_FG_B_YLW%%_BG_CYN% bYLW/nCYN %_FG_B_YLW%%_BG_LGR% bYLW/nLGR %_FG_BG_RST% -
	Echo %_FG_B_YLW%%_BG_DGR% bYLW/nDGR %_FG_B_YLW%%_BG_B_RED% bYLW/bRED %_FG_B_YLW%%_BG_B_GRN% bYLW/bGRN %_FG_B_YLW%%_BG_B_YLW% bYLW/bYLW %_FG_B_YLW%%_BG_B_BLU% bYLW/bBLU %_FG_B_YLW%%_BG_B_MGN% bYLW/bMGN %_FG_B_YLW%%_BG_B_CYN% bYLW/bCYN %_FG_B_YLW%%_BG_B_WHT% bYLW/nWHT %_FG_BG_RST% -
	Echo %_FG_B_BLU%%_BG_BLK% bBLU/nBLK %_FG_B_BLU%%_BG_RED% bBLU/nRED %_FG_B_BLU%%_BG_GRN% bBLU/nGRN %_FG_B_BLU%%_BG_YLW% bBLU/nYLW %_FG_B_BLU%%_BG_BLU% bBLU/nBLU %_FG_B_BLU%%_BG_MGN% bBLU/nMGN %_FG_B_BLU%%_BG_CYN% bBLU/nCYN %_FG_B_BLU%%_BG_LGR% bBLU/nLGR %_FG_BG_RST% -
	Echo %_FG_B_BLU%%_BG_DGR% bBLU/nDGR %_FG_B_BLU%%_BG_B_RED% bBLU/bRED %_FG_B_BLU%%_BG_B_GRN% bBLU/bGRN %_FG_B_BLU%%_BG_B_YLW% bBLU/bYLW %_FG_B_BLU%%_BG_B_BLU% bBLU/bBLU %_FG_B_BLU%%_BG_B_MGN% bBLU/bMGN %_FG_B_BLU%%_BG_B_CYN% bBLU/bCYN %_FG_B_BLU%%_BG_B_WHT% bBLU/nWHT %_FG_BG_RST% -
	Echo %_FG_B_MGN%%_BG_BLK% bMGN/nBLK %_FG_B_MGN%%_BG_RED% bMGN/nRED %_FG_B_MGN%%_BG_GRN% bMGN/nGRN %_FG_B_MGN%%_BG_YLW% bMGN/nYLW %_FG_B_MGN%%_BG_BLU% bMGN/nBLU %_FG_B_MGN%%_BG_MGN% bMGN/nMGN %_FG_B_MGN%%_BG_CYN% bMGN/nCYN %_FG_B_MGN%%_BG_LGR% bMGN/nLGR %_FG_BG_RST% -
	Echo %_FG_B_MGN%%_BG_DGR% bMGN/nDGR %_FG_B_MGN%%_BG_B_RED% bMGN/bRED %_FG_B_MGN%%_BG_B_GRN% bMGN/bGRN %_FG_B_MGN%%_BG_B_YLW% bMGN/bYLW %_FG_B_MGN%%_BG_B_BLU% bMGN/bBLU %_FG_B_MGN%%_BG_B_MGN% bMGN/bMGN %_FG_B_MGN%%_BG_B_CYN% bMGN/bCYN %_FG_B_MGN%%_BG_B_WHT% bMGN/nWHT %_FG_BG_RST% -
	Echo %_FG_B_CYN%%_BG_BLK% bCYN/nBLK %_FG_B_CYN%%_BG_RED% bCYN/nRED %_FG_B_CYN%%_BG_GRN% bCYN/nGRN %_FG_B_CYN%%_BG_YLW% bCYN/nYLW %_FG_B_CYN%%_BG_BLU% bCYN/nBLU %_FG_B_CYN%%_BG_MGN% bCYN/nMGN %_FG_B_CYN%%_BG_CYN% bCYN/nCYN %_FG_B_CYN%%_BG_LGR% bCYN/nLGR %_FG_BG_RST% -
	Echo %_FG_B_CYN%%_BG_DGR% bCYN/nDGR %_FG_B_CYN%%_BG_B_RED% bCYN/bRED %_FG_B_CYN%%_BG_B_GRN% bCYN/bGRN %_FG_B_CYN%%_BG_B_YLW% bCYN/bYLW %_FG_B_CYN%%_BG_B_BLU% bCYN/bBLU %_FG_B_CYN%%_BG_B_MGN% bCYN/bMGN %_FG_B_CYN%%_BG_B_CYN% bCYN/bCYN %_FG_B_CYN%%_BG_B_WHT% bCYN/nWHT %_FG_BG_RST% -
	Echo %_FG_BG_RST% 
	Echo:
	Echo:
	Exit /B

:HelpMessage
	Echo get help
	Exit /B

:BadChoiceMessage
	Echo:
	Echo:
	Echo ***********************************
	Echo *  AN ERROR HAS BEEN ENCOUNTERED  *
	Echo ***********************************
	Echo *  The command you supplied (%1)  *
	Echo *  is not recognised as a proper  *
	Echo *  input for this script. In      *
	Echo *  your CMD terminal CD to the    *
	Echo *  folder where this script is    *
	Echo *  and run `ColoredAnsi.bat -h`   *
	Echo *  to see the help message, or    *
	Echo *  just open the file for         *
	Echo *  editing and read through it.   *
	Echo ***********************************
	Echo:
	Echo:
	Exit /B


Goto :SetUp

endlocal
Exit /B
