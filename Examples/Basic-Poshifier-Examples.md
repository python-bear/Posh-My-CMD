# Example Input Prompt Designs #

## Basic Prompt Without Text Formatting Or Powerline Characters ##

1. Display the UNC path whenever you are using a network drive (mapped with NET USE) and then on the next line the default prompt:
         > `NETWORK_DRIVES ENTER DEFAULT`

2. A HP-UX style prompt with the computername and the current folder on separate lines:
         > `[ CURRENT_DRIVE_AND_PATH ] ENTER -[ USER_NAME @ COMPUTER_NAME ] SPACE $$ SPACE`

3. Display the time, backspacing to hide the milliseconds with the default prompt afterwards:
         > `CURRENT_TIME CURSOR_LEFT:<3> DEFAULT`

## With Text Formatting ##

1. HP-UX style prompt with username at computer name and then the path with a green theme:
          > `CYAN_FG [ GREEN_FG USER_NAME WHITE_FG @ BOLD_GREEN_FG COMPUTER_NAME BLUE_FG SPACE CURRENT_DRIVE_AND_PATH CYAN_FG ] SPACE BOLD_WHITE_FG $$ SPACE GREEN_FG`

2. A Fish Shell style prompt with the username at computername and then a squiggly arrow and blue command text:
          > `ADD_BRIGHT_FG BOLD_GREEN_FG USER_NAME DEFAULT_FG_BG GREEN_FG ADD_ITALICS @ DEFAULT_FG_BG GREEN_FG COMPUTER_NAME SPACE ~ GREATER_THAN SPACE BLUE_FG`

3. A Powershell like command prompt, you should also call `COLOR 1F` or change the fg and bg colors in your CMD's properties:
          > `BLUE_BG WHITE_FG PS SPACE CURRENT_DRIVE_AND_PATH > SPACE` 

## With Powerline Characters And Text Formatting ##

1. Displays the time (without miliseconds), then the directory path, and on the second line it was the user's name and then the user domain (computer name) and all with colors and powerline characters.
          > `RED_FG L_F_CIRCLE RED_BG BLACK_FG CURRENT_TIME ERROR_LEVEL YELLOW_BG RED_FG R_F_TRIANGLE YELLOW_BG BLACK_FG CURRENT_DRIVE_AND_PATH YELLOW_FG DEFAULT_BG R_F_TRIANGLE ENTER CYAN_FG L_F_CIRCLE CYAN_BG BLACK_FG USER_NAME GREEN_BG CYAN_FG R_F_CIRCLE BLACK_FG GREEN_BG @ CYAN_FG L_F_CIRCLE CYAN_BG BLACK_FG USER_DOMAIN CYAN_FG DEFAULT_BG R_F_TRIANGLE DEFAULT_FG_BG SPACE`
