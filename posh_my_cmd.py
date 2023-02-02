MAX_PROMPT_LEN = 511  # this counts the $ signs
SPECIAL_CHARS = ('\\', '=', '(', ')', '&', '<', '^', '>', '|')
ERASING_AND_CLEARING = {
    'ERASE_CURSOR_END_DISPLAY': '[0J',  # erase from the cursor to the end of the display
    'ERASE_START_DISPLAY_CURSOR': '[1J',  # erase from the start of the display to the cursor
    'ERASE_SCREEN': '[2J',  # erase from the start of the display to the end of the display
    'CLEAR_CURSOR_END_LINE': '[K',  # clear from the cursor to the end of the line
    'ERASE_START_LINE_CURSOR': '[1K',  # erase from the start of the line to the cursor, inclusive
    'ERASE_LINE': '[2K'  # erase line
}
DELETING = {
    'DELETE_LINE:<n>': '[<n>M',  # delete <n> lines
    'DELETE_CHARACTER:<n>': '[<n>L'  # delete <n> characters
}
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
CURSOR_VISIBILITY = {
    'START_BLINKING_CURSOR': '[?12h',  # start the cursor blinking
    'STOP_BLINKING_CURSOR': '[?12l',  # stop blinking the cursor
    'SHOW_CURSOR': '[?25h',  # show the cursor
    'HIDE_CURSOR': '[?25l',  # hide the cursor
}
CURSOR_POSITIONING = {
    'CURSOR_UP:<n>': '[<n>A',  # cursor up
    'CURSOR_DOWN:<n>': '[<n>B',  # cursor down
    'CURSOR_RIGHT:<n>': '[<n>C',  # cursor forward/right
    'CURSOR_LEFT:<n>': '[<n>D',  # cursor backward/left
    'CURSOR_LINE_DOWN:<n>': '[<n>E',  # cursor next Line/down
    'CURSOR_LINE_UP:<n>': '[<n>F',  # cursor previous Line/up
    'CURSOR_COLUMN_IN_LINE:<n>': '[<n>G',  # cursor moves to nth position horizontally in the current line
    'CURSOR_OPPOSITE_RETURN:<n>': '[<n>M',  # move cursor up one line, opposite of return
    'CURSOR_LINE_IN_COLUMN:<n>': '[<n>d'  # cursor moves to the nth position vertically in the current column
}
CURSOR_SHAPE = {
    'CURSOR_SHAPE_DEFAULT': '[0 q',  # Default cursor shape configured by the user
    'CURSOR_SHAPE_BLINKING_BLOCK': '[1 q',  # Blinking block cursor shape
    'CURSOR_SHAPE_STEADY_BLOCK': '[2 q',  # Steady block cursor shape
    'CURSOR_SHAPE_BLINKING_UNDERLINE': '[3 q',  # Blinking underline cursor shape
    'CURSOR_SHAPE_STEADY_UNDERLINE': '[4 q',  # Steady underline cursor shape
    'CURSOR_SHAPE_BLINKING_BAR': '[5 q',  # Blinking bar cursor shape
    'CURSOR_SHAPE_STEADY_BAR': '[6 q'  # Steady bar cursor shape
}
WINDOWS_TITLE = {
    'TITLE:<n>': ']0;<n>'  # sets windows title
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
TABS = {
    'CURSOR_FORWARD_TAB:<n>': '[<n>I',  # cursor horizontal (forward) tab
    'CURSOR_BACKWARD_TAB:<n>': '[<n>Z'  # cursor horizontal (backwards) tab
}
TEXT_FORMATTING = {
    'DEFAULT_FG_BG': '[0m',  # returns all attributes to the default state prior to modification
    'ADD_BRIGHT_FG': '[1m',  # applies brightness/intensity flag to foreground color
    'REMOVE_BRIGHT_FG': '[22m',  # removes brightness/intensity flag from foreground color
    'ADD_UNDERLINE': '[4m',  # adds underline
    'REMOVE_UNDERLINE': '[24m',  # removes underline
    'SWAP_FG_BG': '[7m',  # swaps foreground and background colors
    'UNSWAP_FG_BG': '[27m',  # positive text (not reversed)
    'RETURN_FG_BG': '[27m',  # returns foreground/background to normal
    'BLACK_FG': '[30m',  # applies non-bold/bright black to foreground
    'RED_FG': '[31m',  # applies non-bold/bright red to foreground
    'GREEN_FG': '[32m',  # applies non-bold/bright green to foreground
    'YELLOW_FG': '[33m',  # applies non-bold/bright yellow to foreground
    'BLUE_FG': '[34m',  # applies non-bold/bright blue to foreground
    'MAGENTA_FG': '[35m',  # applies non-bold/bright magenta to foreground
    'CYAN_FG': '[36m',  # applies non-bold/bright cyan to foreground
    'WHITE_FG': '[37m',  # applies non-bold/bright white to foreground
    '_FG': '[39m',  # applies only the foreground portion of the defaults (see 0)
    'BLACK_BG': '[40m',  # applies non-bold/bright black to background
    'RED_BG': '[41m',  # applies non-bold/bright red to background
    'GREEN_BG': '[42m',  # applies non-bold/bright green to background
    'YELLOW_BG': '[43m',  # applies non-bold/bright yellow to background
    'BLUE_BG': '[44m',  # applies non-bold/bright blue to background
    'MAGENTA_BG': '[45m',  # applies non-bold/bright magenta to background
    'CYAN_BG': '[46m',  # applies non-bold/bright cyan to background
    'WHITE_BG': '[47m',  # applies non-bold/bright white to background
    'DEFAULT_BG': '[49m',  # applies only the background portion of the defaults (see 0)
    'BOLD_BLACK_FG': '[90m',  # applies bold/bright black to foreground
    'BOLD_RED_FG': '[91m',  # applies bold/bright red to foreground
    'BOLD_GREEN_FG': '[92m',  # applies bold/bright green to foreground
    'BOLD_YELLOW_FG': '[93m',  # applies bold/bright yellow to foreground
    'BOLD_BLUE_FG': '[94m',  # applies bold/bright blue to foreground
    'BOLD_MAGENTA_FG': '[95m',  # applies bold/bright magenta to foreground
    'BOLD_CYAN_FG': '[96m',  # applies bold/bright cyan to foreground
    'BOLD_WHITE_FG': '[97m',  # applies bold/bright white to foreground
    'BOLD_BLACK_BG': '[100m',  # applies bold/bright black to background
    'BOLD_RED_BG': '[101m',  # applies bold/bright red to background
    'BOLD_GREEN_BG': '[102m',  # applies bold/bright green to background
    'BOLD_YELLOW_BG': '[103m',  # applies bold/bright yellow to background
    'BOLD_BLUE_BG': '[104m',  # applies bold/bright blue to background
    'BOLD_MAGENTA_BG': '[105m',  # applies bold/bright magenta to background
    'BOLD_CYAN_BG': '[106m',  # applies bold/bright cyan to background
    'BOLD_WHITE_BG': '[107m'  # applies bold/bright white to background
}
CONTROL_CHARACTERS = {
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

Write ` ` in between each block.

Maximum prompt length: {MAX_PROMPT_LEN} *you will reach this faster than you expect*

Special characters: {str(SPECIAL_CHARS)}

Display the UNC path whenever you are using a network drive (mapped with NET USE)
PROMPT $M$_$P$G

Simulate an HP-UX style prompt with the computername and the current folder on separate lines:
PROMPT=$p$_%username%@%computername%:.

Display the time, backspacing to hide the milliseconds:
PROMPT=$T$H$H$H$G$S

""")

N_LESS_MAP = {**TEXT_FORMATTING, **CURSOR_SHAPE, **CURSOR_VISIBILITY, **ERASING_AND_CLEARING}
N_PRESENT_MAP = {**TABS, **WINDOWS_TITLE, **CURSOR_POSITIONING, **DELETING}
ESC_LESS_MAP = {**NAMED_CODES, **ENVIRONMENT_VARIABLE, **POWERLINE, **CONTROL_CHARACTERS}

while True:
    user_prompt = input('What would you like your prompt to be? ')
    cleaned_prompt = user_prompt.strip().rstrip().replace('%', '%%').split(' ')
    processed_prompt = []
    for block in cleaned_prompt:
        if block in N_LESS_MAP:
            processed_prompt.append(f'$E{N_LESS_MAP.get(block, block)}')
        elif '<n>' in block:
            n_var = block[block.index('<'):block.index('>')]
            block = block.replace('<n>', '')
            for key in N_PRESENT_MAP.keys():
                if block == key:
                    processed_prompt.append(f'$E{N_PRESENT_MAP.get(block, block).replace("<n>", n_var)}')
                    break
        elif block in ESC_LESS_MAP:
            processed_prompt.append(ESC_LESS_MAP.get(block, block))
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

    cmd_command = ''.join(processed_prompt)

    if len(cmd_command) <= MAX_PROMPT_LEN:
        print(f'\nhere is your command: \nSETX PROMPT "{cmd_command}" && PROMPT {cmd_command}\n\nor you can use: \nSETX'
              f' PROMPT "{cmd_command}"\nPROMPT {cmd_command}\n\n\n')
    else:
        print(f'\nPrompt was too long, this is all that could be used: {cmd_command[:MAX_PROMPT_LEN-1]}\n\n\n')
