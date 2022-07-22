@echo off
setlocal

:: Important!
:: Do NOT edit anything between '=' and '^'! (There's a character in between though you don't see it. C&P works.)
:: See also StackOverflow: How can I echo a newline in a batch file? < https://stackoverflow.com/a/70122012/1744774 >
set \n=​^&echo:
:: Do NOT edit anything between '=' and '['! (There's a character in between though you don't see it. C&P works.)
set E=[

echo:
echo              %E%7m       STYLES       %E%0m
echo     ESC[m    %E%mDefault ... see ESC[0m
echo     ESC[0m   %E%0mDefault ... Returns all attributes to the default state prior to modification
echo     ESC[1m   %E%1mBold/Bright%E%0m ... Applies brightness/intensity flag to foreground color
echo     ESC[4m   %E%4mUnderline%E%0m ... Adds underline
echo              ^<separator line to be able to see underline above^>
echo     ESC[7m   %E%7mNegative%E%0m ... Swaps foreground and background colors
echo     ESC[22m  %E%22mNo bold/bright%E%0m ... Removes brightness/intensity flag from foreground color
echo     ESC[24m  %E%24mNo underline%E%0m ... Removes underline
echo     ESC[27m  %E%27mPositive (No negative)%E%0m ... Returns foreground/background to normal%\n%

echo              %E%7m  FOREGROUND COLORS  %E%0m
echo   %E%7m   NON-BOLD/BRIGHT  %E%0m   %E%7m     BOLD/BRIGHT    %E%0m
echo     ESC[30m  %E%47;30m Black %E%0m       ESC[90m  %E%90m Black %E%0m
echo     ESC[31m  %E%31m Red %E%0m         ESC[91m  %E%91m Red %E%0m
echo     ESC[32m  %E%32m Green %E%0m       ESC[92m  %E%92m Green %E%0m
echo     ESC[33m  %E%33m Yellow %E%0m      ESC[93m  %E%93m Yellow %E%0m
echo     ESC[34m  %E%34m Blue %E%0m        ESC[94m  %E%94m Blue %E%0m
echo     ESC[35m  %E%35m Magenta %E%0m     ESC[95m  %E%95m Magenta %E%0m
echo     ESC[36m  %E%36m Cyan %E%0m        ESC[96m  %E%96m Cyan %E%0m
echo     ESC[37m  %E%37m White %E%0m       ESC[97m  %E%97m White %E%0m%\n%

echo   %E%7m  EXTENDED/DEFAULT FOREGROUND  %E%0m
echo     ESC[38m  %E%38mExtended%E%0m ... Applies extended color value to the foreground (see reference)
echo     ESC[39m  %E%39mDefault%E%0m ... Applies only the foreground portion of the defaults (see 0)%\n%

echo              %E%7m  BACKGROUND COLORS  %E%0m
echo   %E%7m    NON-BOLD/BRIGHT   %E%0m %E%7m      BOLD/BRIGHT     %E%0m
echo     ESC[40m  %E%37;40m Black   %E%0m     ESC[100m %E%30;100m Black   %E%0m
echo     ESC[41m  %E%30;41m Red     %E%0m     ESC[101m %E%30;101m Red     %E%0m
echo     ESC[42m  %E%30;42m Green   %E%0m     ESC[102m %E%30;102m Green   %E%0m
echo     ESC[43m  %E%30;43m Yellow  %E%0m     ESC[103m %E%30;103m Yellow  %E%0m
echo     ESC[44m  %E%30;44m Blue    %E%0m     ESC[104m %E%30;104m Blue    %E%0m
echo     ESC[45m  %E%30;45m Magenta %E%0m     ESC[105m %E%30;105m Magenta %E%0m
echo     ESC[46m  %E%30;46m Cyan    %E%0m     ESC[106m %E%30;106m Cyan    %E%0m
echo     ESC[47m  %E%30;47m White   %E%0m     ESC[107m %E%30;107m White   %E%0m%\n%

echo   %E%7m  EXTENDED/DEFAULT BACKGROUND  %E%0m
echo     ESC[48m  %E%48mExtended%E%0m ... Applies extended color value to the background (see reference)
echo     ESC[49m  %E%49mDefault%E%0m ... Applies only the background portion of the defaults (see 0)%\n%

echo   Reference: https://docs.microsoft.com/en-us/windows/console/console-virtual-terminal-sequences#text-formatting

endlocal