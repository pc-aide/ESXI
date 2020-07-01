# ESXi-Customizer-v2.7.2

## SRC
[MD5 f6f983ac3caba352d1686b92fbf005ba | ESXi-Customizer-v2.7.2.exe - Size: 2.6Mb ](https://versaweb.dl.sourceforge.net/project/tghautodesk/ESXi-Customizer-v2.7.2.exe)
* [Mirror2](http://vibsdepot.v-front.de/tools/ESXi-Customizer-v2.7.2.exe)

## Working
* 6.7 : yes
* 7.0 : no

## Doc
* https://www.v-front.de/p/esxi-customizer.html

## Out of Date
End of Support notice

The ESXi-Customizer tool is UNSUPPORTED as of Aug 21st 2015. Any known or new issues will not be fixed. For more information please read this blog post!

You are welcome to use the successor of ESXi-Customizer: The ESXi-Customizer-PS PowerCLI script.

## Correction Windows 10.0
* Edit ESXi-Customizer.cmd
    * Add REM : if "!WinVer!" LSS "5.1" call :earlyFatal Unsupported Windows Version: !WinVer!. At least Windows XP is required & exit /b 1

## Usage
* ESXi-Customizer.cmd
     * Select your ESXi.ISO
     * Select your VIB file
     * Select Working directory (O/P for new ISO with drivers NIC)
     * E.g: https://imgur.com/KCHAjCf
