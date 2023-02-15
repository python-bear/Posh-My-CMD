MAX_PROMPT_LEN = 511  # this counts the $ signs
SPECIAL_CHARS = ('\\', '=', '(', ')', '&', '<', '^', '>', '|')

ANSI_FORMATTING = {
    # Text formatting
    'NORMAL': '\033[0m',  # Reset/Normal all attributes
    'BOLD': '\033[1m',  # Bold or increased intensity
    'DIM': '\033[2m',  # Faint/dim (decreased intensity)
    'ITALIC': '\033[3m',  # Italic
    'UNDERLINE': '\033[4m',  # Underline
    'SLOW_BLINK': '\033[5m',  # Blink (slow)
    'FAST_BLINK': '\033[6m',  # Blink (rapid)
    'REVERSE': '\033[7m',  # Reverse video
    'HIDE': '\033[8m',  # Conceal/hide
    'STRIKETHROUGH': '\033[9m',  # Crossed-out/strikethrough
    'PRIMARY_FONT': '\033[10m',  # Primary (default) font
    'ALT_FONT_ONE': '\033[11m',  # First alternate font
    'ALT_FONT_TWO': '\033[12m',  # Second alternate font
    'ALT_FONT_THREE': '\033[13m',  # Third alternate font
    'ALT_FONT_FOUR': '\033[14m',  # Fourth alternate font
    'ALT_FONT_FIVE': '\033[15m',  # Fifth alternate font
    'ALT_FONT_SIX': '\033[16m',  # Sixth alternate font
    'ALT_FONT_SEVEN': '\033[17m',  # Seventh alternate font
    'ALT_FONT_EIGHT': '\033[18m',  # Eighth alternate font
    'ALT_FONT_NINE': '\033[19m',  # Ninth alternate font
    'FRAKTUR': '\033[20m',  # Fraktur
    'BOLD_OFF': '\033[21m',  # Bold off or rarely Double Underline
    'NORMAL_INTENSITY': '\033[22m',  # Normal color or intensity
    'ITALIC_OFF_FRAKTUR_OFF': '\033[23m',  # Not italic, Not Fraktur
    'UNDERLINE_OFF': '\033[24m',  # Underline off
    'BLINK_OFF': '\033[25m',  # Blink off
    'RESERVED_26': '\033[26m',  # Reserved
    'NEGATIVE': '\033[27m',  # Image negative
    'HIDE_OFF': '\033[28m',  # Reveal concealed text
    'STRIKETHROUGH_OFF': '\033[29m',  # Not crossed-out
    'FG_BLACK': '\033[30m',  # Set foreground color to Black
    'FG_RED': '\033[31m',  # Set foreground color to Red
    'FG_GREEN': '\033[32m',  # Set foreground color to Green
    'FG_YELLOW': '\033[33m',  # Set foreground color to Yellow
    'FG_BLUE': '\033[34m',  # Set foreground color to Blue
    'FG_MAGENTA': '\033[35m',  # Set foreground color to Magenta
    'FG_CYAN': '\033[36m',  # Set foreground color to Cyan
    'FG_WHITE': '\033[37m',  # Set foreground color to White
    'FG_EXTENDED:<n>': '\033[38;5;<n>m',  # Used to select colors from a range of 256 colors for the foreground
    'FG_DEFAULT': '\033[39m',  # Set foreground color to default (original)
    'BG_BLACK': '\033[40m',  # Set background color to Black
    'BG_RED': '\033[41m',  # Set background color to Red
    'BG_GREEN': '\033[42m',  # Set background color to Green
    'BG_YELLOW': '\033[43m',  # Set background color to Yellow
    'BG_BLUE': '\033[44m',  # Set background color to Blue
    'BG_MAGENTA': '\033[45m',  # Set background color to Magenta
    'BG_CYAN': '\033[46m',  # Set background color to Cyan
    'BG_WHITE': '\033[47m',  # Set background color to White
    'BG_EXTENDED:<n>': '\033[48;5;<n>m',  # Used to select colors from a range of 256 colors for the background
    'BG_DEFAULT': '\033[49m',  # Set background color to default (original)
    'PROPORTIONAL_SPACING_OFF': '\033[50m',  # Disable proportional spacing
    'FRAME': '\033[51m',  # Framed
    'ENCIRCLE': '\033[52m',  # Encircled
    'OVERLINE': '\033[53m',  # Overlined
    'FRAME_OFF_ENCIRCLE_OFF': '\033[54m',  # Not framed or encircled
    'OVERLINE_OFF': '\033[55m',  # Not overlined
    'FG_BRIGHT_BLACK': '\033[90m',  # Set the foreground color to dark gray
    'FG_BRIGHT_RED': '\033[91m',  # Set the foreground color to light red
    'FG_BRIGHT_GREEN': '\033[92m',  # Set the foreground color to light green
    'FG_BRIGHT_YELLOW': '\033[93m',  # Set the foreground color to yellow
    'FG_BRIGHT_BLUE': '\033[94m',  # Set the foreground color to light blue
    'FG_BRIGHT_MAGENTA': '\033[95m',  # Set the foreground color to light magenta
    'FG_BRIGHT_CYAN': '\033[96m',  # Set the foreground color to light cyan
    'FG_BRIGHT_WHITE': '\033[97m',  # Set the foreground color to white
    'BG_BRIGHT_BLACK': '\033[100m',  # Set the background color to black (gray)
    'BG_BRIGHT_RED': '\033[101m',  # Set the background color to red
    'BG_BRIGHT_GREEN': '\033[102m',  # Set the background color to green
    'BG_BRIGHT_YELLOW': '\033[103m',  # Set the background color to yellow
    'BG_BRIGHT_BLUE': '\033[104m',  # Set the background color to blue
    'BG_BRIGHT_MAGENTA': '\033[105m',  # Set the background color to magenta
    'BG_BRIGHT_CYAN': '\033[106m',  # Set the background color to cyan
    'BG_BRIGHT_WHITE': '\033[107m',  # Set the background color to white
    # Cursor formatting/visibility
    'BLINKING_CURSOR': '\033[?12h',  # start the cursor blinking
    'BLINKING_CURSOR_OFF': '\033[?12l',  # stop blinking the cursor
    'SHOW_CURSOR': '\033[?25h',  # show the cursor
    'HIDE_CURSOR': '\033[?25l',  # hide the cursor
    # Erasing
    'ERASE_CURSOR_END_OF_SCREEN': '\033[0J',  # erase from the cursor to the end of the screen
    'ERASE_CURSOR_START_OF_SCREEN': '\033[1J',  # erase from the cursor to the beginning of the screen
    'ERASE_SCREEN': '\033[2J',  # erase the screen
    'ERASE_CURSOR_END_OF_LINE': '\033[0K',  # erase the screen
    'ERASE_CURSOR_START_OF_LINE': '\033[1K',  # erase the screen
    'ERASE_LINE': '\033[2K',  # erase the screen
    # Cursor positioning
    'CURSOR_UP:<n>': '\033[<n>A',  # Moves the cursor up <n> lines
    'CURSOR_DOWN:<n>': '\033[<n>B',  # Moves the cursor down <n> lines
    'CURSOR_RIGHT:<n>': '\033[<n>C',  # Moves the cursor right <n> lines
    'CURSOR_LEFT:<n>': '\033[<n>D',  # Moves the cursor left <n> lines
    'CURSOR_START_OF_LINE_DOWN:<n>': '\033[<n>E',  # Moves cursor to beginning of next line, <n> lines down
    'CURSOR_START_OF_LINE_UP:<n>': '\033[<n>F',  # Moves cursor to beginning of previous line, <n> lines up
    'CURSOR_COLUMN:<n>': '\033[<n>G',  # Moves the cursor to column <n>
    # Cursor shape
    'CURSOR_SHAPE_DEFAULT': '\033[0 q',  # Default cursor shape configured by the user
    'CURSOR_SHAPE_BLINKING_BLOCK': '\033[1 q',  # Blinking block cursor shape
    'CURSOR_SHAPE_STEADY_BLOCK': '\033[2 q',  # Steady block cursor shape
    'CURSOR_SHAPE_BLINKING_UNDERLINE': '\033[3 q',  # Blinking underline cursor shape
    'CURSOR_SHAPE_STEADY_UNDERLINE': '\033[4 q',  # Steady underline cursor shape
    'CURSOR_SHAPE_BLINKING_BAR': '\033[5 q',  # Blinking bar cursor shape
    'CURSOR_SHAPE_STEADY_BAR': '\033[6 q',  # Steady bar cursor shape
    # Viewport positioning
    'SCROLL_TEXT_UP:<n>': '\033[<n>S',  # Scroll text up by <n>. Also known as pan down, new lines fill in from the
                                        # bottom of the screen
    'SCROLL_TEXT_DOWN:<n>': '\033[<n>T',  # Scroll down by <n>. Also known as pan up, new lines fill in from the top of
                                          # the screen
    # Add/remove lines with buffer
    'BUFFER_INSERT_LINE:<n>': '\033[<n>L',  # Inserts <n> lines into the buffer at the cursor position. The line the
                                            # cursor is on, and lines below it, will be shifted downwards.
    'BUFFER_DELETE_LINE:<n>': '\033[<n>M',  # Deletes <n> lines from the buffer, starting with the row the cursor is on.
    # Query state
    'QUERY_CURSOR_POSITION': '\033[6n',  # Emit the cursor position as: ESC [ <r> ; <c> R Where <r> = cursor row and
                                         # <c> = cursor column
    'QUERY_DEVICE_ATTRIBUTES': '\033[0c',  # Report the terminal identity. Will emit “\x1b[?1;0c”, indicating
                                           # "VT101 with No Options".
    # Tabs
    'CURSOR_FORWARD_TAB:<n>': '\033[<n>I',  # cursor moves <n> horizontal forward tabs
    'CURSOR_BACKWARD_TAB:<n>': '\033[<n>Z',  # cursor moves <n> horizontal backwards tabs
    # Windows Title
    'TITLE:<n>': ']0;<n>',  # *sets windows title
    # Soft reset of settings
    'SOFT_RESET': '\033[!p',  # Reset the settings listed in the Soft Reset table below to their default
    # Designated character sets
    'DEC_LINE_DRAWING_MODE': '\033(0',  # Enables DEC Line Drawing Mode
    'ASCII_MODE': '\033(B'  # Enables ASCII Mode (Default)
}

# SOFT RESET CHANGES
# Cursor visibility      :  Visible (DECTEM)
# Numeric Keypad         :  Numeric Mode (DECNKM)
# Cursor Keys Mode       :  Normal Mode (DECCKM)
# Top and Bottom Margins :  Top=1, Bottom=Console height (DECSTBM)
# Character Set          :  US ASCII
# Graphics Rendition     :  Default/Off (SGR)
# Save cursor state      :  Home position (0,0) (DECSC)

# `ASCII_MODE` -> `DEC_LINE_DRAWING_MODE`
#    `!`  ->  `!`           `4`  ->  `4`           `H`  ->  `H`           `\`  ->  `\`           `p`  ->  `⎻`
#    `"`  ->  `"`           `5`  ->  `5`           `I`  ->  `I`           `]`  ->  `]`           `q`  ->  `─`
#    `#`  ->  `#`           `6`  ->  `6`           `J`  ->  `J`           `^`  ->  `^`           `r`  ->  `⎼`
#    `$`  ->  `$`           `7`  ->  `7`           `K`  ->  `K`           `_`  ->  ``            `s`  ->  `⎽`
#    `%`  ->  `%`           `8`  ->  `8`           `L`  ->  `L`           ```  ->  `♦`           `t`  ->  `├`
#    `&`  ->  `&`           `9`  ->  `9`           `M`  ->  `M`           `a`  ->  `▒`           `u`  ->  `┤`
#    `'`  ->  `'`           `:`  ->  `:`           `N`  ->  `N`           `b`  ->  `␉`           `v`  ->  `┴`
#    `(`  ->  `(`           `;`  ->  `;`           `O`  ->  `O`           `c`  ->  `␌`           `w`  ->  `┬`
#    `)`  ->  `)`           `<`  ->  `<`           `P`  ->  `P`           `d`  ->  `␍`           `x`  ->  `│`
#    `*`  ->  `*`           `=`  ->  `=`           `Q`  ->  `Q`           `e`  ->  `␊`           `y`  ->  `≤`
#    `+`  ->  `+`           `>`  ->  `>`           `R`  ->  `R`           `f`  ->  `°`           `z`  ->  `≥`
#    ``   ->  ``            `?`  ->  `?`           `S`  ->  `S`           `g`  ->  `±`           `{`  ->  `π`
#    ``   ->  ``            `@`  ->  `@`           `T`  ->  `T`           `h`  ->  `␤`           `|`  ->  `≠`
#    `-`  ->  `-`           `A`  ->  `A`           `U`  ->  `U`           `i`  ->  `␋`           `}`  ->  `£`
#    `.`  ->  `.`           `B`  ->  `B`           `V`  ->  `V`           `j`  ->  `┘`           `~`  ->  `·`
#    `/`  ->  `/`           `C`  ->  `C`           `W`  ->  `W`           `k`  ->  `┐`
#    `0`  ->  `0`           `D`  ->  `D`           `X`  ->  `X`           `l`  ->  `┌`
#    `1`  ->  `1`           `E`  ->  `E`           `Y`  ->  `Y`           `m`  ->  `└`
#    `2`  ->  `2`           `F`  ->  `F`           `Z`  ->  `Z`           `n`  ->  `┼`
#    `3`  ->  `3`           `G`  ->  `G`           `[`  ->  `[`           `o`  ->  `⎺`

NAMED_CODES = {
    'AMPERSAND': '$a',  # ampersand
    'PIPE': '$b',  # pipe
    'OPEN_BRACKET': '$c',  # opening parenthesis
    'CURRENT_DATE': '$d',  # current date: Wed 01/02/2023
    'CLOSE_BRACKET': '$f',  # closing parenthesis
    'GREATER_THAN': '$g',  # greater-than sign
    'BACKSPACE': '$h',  # erases previous character; backspace
    'LESS_THAN': '$l',  # less-than sign
    'NETWORK_DRIVES': '$m',  # the remote name for network drives
    'CURRENT_DRIVE': '$n',  # current drive
    'CURRENT_DRIVE_AND_PATH': '$p',  # current drive and path
    'EQUAL': '$q',  # equal sign
    'SPACE': '$s',  # space
    'CURRENT_TIME': '$t',  # current time: 16:55:21.56
    'WINDOWS_VERSION': '$v',  # Windows version number
    'ENTER': '$_',  # carriage return and linefeed
    'DOLLAR': '$$',  # dollar sign
    'PUSHD_PLUS': '$+',  # will display plus signs (+) one for each level of the PUSHD directory stack
    'DEFAULT': '$p$g'  # drive/path followed by >
}

ENVIRONMENT_VARIABLE = {
    'ALL_USER_PROFILE': '%ALLUSERSPROFILE%',
    'APP_DATA': '%APPDATA%',
    'CD': '%CD%',
    'CMD_CMD_LINE': '%CMDCMDLINE%',
    'CMD_EXTENSION_VERSION': '%CMDEXTVERSION%',
    'COMPUTER_NAME': '%COMPUTERNAME%',
    'COM_SPEC': '%COMSPEC%',
    'DATE': '%DATE%',
    'ERROR_LEVEL': '%ERRORLEVEL%',
    'HOME_DRIVE': '%HOMEDRIVE%',
    'HOME_PATH': '%HOMEPATH%',
    'LOGON_SERVER': '%LOGONSERVER%',
    'NUMBER_OF_PROCESSORS': '%NUMBER_OF_PROCESSORS%',
    'OS': '%OS%',
    'PATH': '%PATH%',
    'PATH_EXTENSION': '%PATHEXT%',
    'PROCESSOR_ARCHITECTURE': '%PROCESSOR_ARCHITECTURE%',
    'PROCESSOR_IDENTIFIER': '%PROCESSOR_IDENTIFIER%',
    'PROCESSOR_LEVEL': '%PROCESSOR_LEVEL%',
    'PROCESSOR_REVISION': '%PROCESSOR_REVISION%',
    'PROMPT': '%PROMPT%',
    'RANDOM': '%RANDOM%',
    'SYSTEM_DRIVE': '%SYSTEMDRIVE%',
    'SYSTEM_ROOT': '%SYSTEMROOT%',
    'TEMP': '%TEMP%',
    'TIME': '%TIME%',
    'USER_DOMAIN': '%USERDOMAIN%',
    'USER_NAME': '%USERNAME%',
    'USER_PROFILE': '%USERPROFILE%',
    'WIN_DIR': '%WINDIR%'
}
POWERLINE = {
    'R_F_TRIANGLE': '',
    'L_F_TRIANGLE': '',
    'R_E_TRIANGLE': '',
    'L_E_TRIANGLE': '',
    'R_F_CIRCLE': '',
    'L_F_CIRCLE': '',
    'R_E_CIRCLE': '',
    'L_E_CIRCLE': '',
    'R_F_FLAME': '',
    'L_F_FLAME': '',
    'R_E_FLAME': '',
    'L_E_FLAME': '',
    'R_F_BLOCK': '',
    'L_F_BLOCK': '',
    'M_KEYBOARD': '',
    'R_F_LEGO': '',
    'M_F_LEGO_BLOCK': '',
    'R_F_LEGO_BLOCK': '',
    'M_E_LEGO': '',
    'R_F_HEXAGONS': '',
    'R_E_HEXAGONS': '',
    'L_F_UNDO': '',
    'M_F_THING': '',
    'L_F_BLAST': '',
    'R_F_WAVES': '',
    'R_F_HD_GLITCH': '',
    'L_F_HD_GLITCH': '',
    'R_F_GLITCH': '',
    'L_F_GLITCH': '',
    'M_F_EXCLAMATION': '',
    'M_F_BOLT': '',
    'M_F_BRANCH': '',
    'M_F_LN': '',
    'M_F_CN': '',
    'M_F_LOCK': '',
    'BL_F_TRIANGLE': '',
    'BL_E_TRIANGLE': '',
    'BR_F_TRIANGLE': '',
    'BR_E_TRIANGLE': '',
    'TL_F_TRIANGLE': '',
    'TL_E_TRIANGLE': '',
    'TR_F_TRIANGLE': '',
    'TR_E_TRIANGLE': '',
    'CLOSED_FOLDER': '',
    'OPEN_FOLDER': '',
    'WINDOWS_OS': '',
    'APPLE': '',
    'LINUX': '',
    'ANDROID': ''
}

CONTROL_CODES = {
    'CONTROL_ENTER': '^C',  # carriage return and line feed.
    'CONTROL_FORM_FEED': '^L',  # form feed.
    'CONTROL_BACKSPACE': '^H',  # backspace.
    'CONTROL_BELL': '^G',  # bell.
    'CONTROL_START_HEADING': '^E',  # start of heading.
    'CONTROL_HORIZONTAL_TAB': '^I',  # horizontal tab.
    'CONTROL_LINE_FEED': '^J',  # line feed.
    'CONTROL_VERTICAL_TAB': '^K',  # vertical tab.
    'CONTROL_CARRIAGE_RETURN': '^M',  # carriage return.
    'CONTROL_NEW_PAGE': '^P',  # new page.
    'CONTROL_RESUME_PRINTING': '^Q',  # resume printing.
    'CONTROL_DEVICE_CONTROL_2': '^R',  # device control 2.
    'CONTROL_DEVICE_CONTROL_3': '^S',  # device control 3.
    'CONTROL_DEVICE_CONTROL_4': '^T',  # device control 4.
    'CONTROL_DEVICE_CONTROL_5': '^U',  # device control 5.
    'CONTROL_DEVICE_CONTROL_6': '^V',  # device control 6.
    'CONTROL_DEVICE_CONTROL_7': '^W',  # device control 7.
    'CONTROL_DEVICE_CONTROL_8': '^X',  # device control 8.
    'CONTROL_DEVICE_CONTROL_9': '^Y',  # device control 9.
    'CONTROL_SUBSCRIPT': '^Z',  # subscript.
    'CONTROL_ESCAPE': '^[',  # escape.
    'CONTROL_FILE_SEPERATOR': '^\\',  # file separator.
    'CONTROL_GROU_SEPERATOR': '^]',  # group separator.
    'CONTROL_CIRCUMFLEX': '^^',  # circumflex accent.
    'CONTROL_UNDERSCORE': '^_',  # underscore.
}

print(f""" 
    # GUIDELINES FOR MAKING PROMPT: #

Write ` ` in between each block. (put a space between blocks)

Maximum prompt length: {MAX_PROMPT_LEN}

Special characters:    {str(SPECIAL_CHARS)}
""")

NON_ANSI_MAP = {**NAMED_CODES, **ENVIRONMENT_VARIABLE, **POWERLINE, **CONTROL_CODES}

while True:
    user_prompt = input('What would you like your prompt to be? \n ')
    cleaned_prompt = user_prompt.strip().rstrip().replace('%', '%%').split(' ')
    processed_prompt = []
    for block in cleaned_prompt:
        if '<' in block and '>' in block:
            n_var = block[block.index('<'):block.index('>')+1].replace('>', '').replace('<', '')
            print(n_var)
            block = f'{block[:block.index("<") + 1]}n>'
            print(block)
            for key in ANSI_FORMATTING.keys():
                if block == key:
                    processed_prompt.append(ANSI_FORMATTING.get(block, block).replace("<n>", n_var).replace("\033",
                                                                                                            "$E"))
                    break
        elif block in NON_ANSI_MAP:
            processed_prompt.append(NON_ANSI_MAP.get(block, block))
        elif block in ANSI_FORMATTING:
            processed_prompt.append(ANSI_FORMATTING.get(block, block).replace('\033', '$E'))
        else:
            for key, value in NAMED_CODES.items():
                if block == key:
                    processed_prompt += value
                    break
                elif block in SPECIAL_CHARS:
                    processed_prompt += f'^{block}'
                    break
            else:
                processed_prompt += block

    print(processed_prompt)
    cmd_command = ''.join(processed_prompt)

    if len(cmd_command) <= MAX_PROMPT_LEN:
        print(f'\nhere is your command: \nSETX PROMPT "{cmd_command}" && PROMPT {cmd_command}\n\nor you can use: \nSETX'
              f' PROMPT "{cmd_command}"\nPROMPT {cmd_command}\n\n\n')
    else:
        print(f'\nPrompt was too long, this is all that could be used: {cmd_command[:MAX_PROMPT_LEN-1]}\n\n\n')
