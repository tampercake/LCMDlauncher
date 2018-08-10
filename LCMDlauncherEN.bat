@echo off
title LCMDLauncher 1.13

:: LCMDLauncher 1.13 by lelik_01
:: Libraries for launching Minecraft can be taken from here: https://github.com/lelik01/LCMDlauncher/releases

:: Java directory
set JAVA="C:\Program Files\Java\jre1.8.0_181\bin\java.exe"

:: Minecraft directory (default: %AppData%\.minecraft)
set MINECRAFT_DIR=%AppData%\.minecraft

:: Minecraft version
set VERSION=1.13
set VERSION_SERIES=1.13

:: Resolution window (default: 925x530)
set WIDTH=925
set HEIGHT=530

:: arguments, number of allocated RAM (MB = 1024M, GB = 1G. Default: -Xmx1G -Xms512M)
set ARGUMENTS=-Xmx1G -Xms512M

:: Nickname (default: Steve)
set PLAYER=Steve

:: Commands to run Minecraft (don't touch)
cd %MINECRAFT_DIR%
%JAVA% %ARGUMENTS% -Djava.library.path=%MINECRAFT_DIR%\natives -Dminecraft.launcher.brand=java-minecraft-launcher -Dminecraft.launcher.version=1.6.84-j -cp %MINECRAFT_DIR%\libraries\com\mojang\patchy\1.1\patchy-1.1.jar;%MINECRAFT_DIR%\libraries\oshi-project\oshi-core\1.1\oshi-core-1.1.jar;%MINECRAFT_DIR%\libraries\net\java\dev\jna\jna\4.4.0\jna-4.4.0.jar;%MINECRAFT_DIR%\libraries\net\java\dev\jna\platform\3.4.0\platform-3.4.0.jar;%MINECRAFT_DIR%\libraries\com\ibm\icu\icu4j-core-mojang\51.2\icu4j-core-mojang-51.2.jar;%MINECRAFT_DIR%\libraries\net\sf\jopt-simple\jopt-simple\5.0.3\jopt-simple-5.0.3.jar;%MINECRAFT_DIR%\libraries\com\paulscode\codecjorbis\20101023\codecjorbis-20101023.jar;%MINECRAFT_DIR%\libraries\com\paulscode\codecwav\20101023\codecwav-20101023.jar;%MINECRAFT_DIR%\libraries\com\paulscode\libraryjavasound\20101123\libraryjavasound-20101123.jar;%MINECRAFT_DIR%\libraries\com\paulscode\soundsystem\20120107\soundsystem-20120107.jar;%MINECRAFT_DIR%\libraries\io\netty\netty-all\4.1.25.Final\netty-all-4.1.25.Final.jar;%MINECRAFT_DIR%\libraries\com\google\guava\guava\21.0\guava-21.0.jar;%MINECRAFT_DIR%\libraries\org\apache\commons\commons-lang3\3.5\commons-lang3-3.5.jar;%MINECRAFT_DIR%\libraries\commons-io\commons-io\2.5\commons-io-2.5.jar;%MINECRAFT_DIR%\libraries\commons-codec\commons-codec\1.10\commons-codec-1.10.jar;%MINECRAFT_DIR%\libraries\net\java\jinput\jinput\2.0.5\jinput-2.0.5.jar;%MINECRAFT_DIR%\libraries\net\java\jutils\jutils\1.0.0\jutils-1.0.0.jar;%MINECRAFT_DIR%\libraries\com\mojang\brigadier\0.1.27\brigadier-0.1.27.jar;%MINECRAFT_DIR%\libraries\com\mojang\datafixerupper\1.0.16\datafixerupper-1.0.16.jar;%MINECRAFT_DIR%\libraries\com\google\code\gson\gson\2.8.0\gson-2.8.0.jar;%MINECRAFT_DIR%\libraries\com\mojang\authlib\1.5.25\authlib-1.5.25.jar;%MINECRAFT_DIR%\libraries\org\apache\commons\commons-compress\1.8.1\commons-compress-1.8.1.jar;%MINECRAFT_DIR%\libraries\org\apache\httpcomponents\httpclient\4.3.3\httpclient-4.3.3.jar;%MINECRAFT_DIR%\libraries\commons-logging\commons-logging\1.1.3\commons-logging-1.1.3.jar;%MINECRAFT_DIR%\libraries\org\apache\httpcomponents\httpcore\4.3.2\httpcore-4.3.2.jar;%MINECRAFT_DIR%\libraries\it\unimi\dsi\fastutil\7.1.0\fastutil-7.1.0.jar;%MINECRAFT_DIR%\libraries\org\apache\logging\log4j\log4j-api\2.8.1\log4j-api-2.8.1.jar;%MINECRAFT_DIR%\libraries\org\apache\logging\log4j\log4j-core\2.8.1\log4j-core-2.8.1.jar;%MINECRAFT_DIR%\libraries\org\lwjgl\lwjgl\3.1.6\lwjgl-3.1.6.jar;%MINECRAFT_DIR%\libraries\org\lwjgl\lwjgl-jemalloc\3.1.6\lwjgl-jemalloc-3.1.6.jar;%MINECRAFT_DIR%\libraries\org\lwjgl\lwjgl-openal\3.1.6\lwjgl-openal-3.1.6.jar;%MINECRAFT_DIR%\libraries\org\lwjgl\lwjgl-opengl\3.1.6\lwjgl-opengl-3.1.6.jar;%MINECRAFT_DIR%\libraries\org\lwjgl\lwjgl-glfw\3.1.6\lwjgl-glfw-3.1.6.jar;%MINECRAFT_DIR%\libraries\org\lwjgl\lwjgl-stb\3.1.6\lwjgl-stb-3.1.6.jar;%MINECRAFT_DIR%\libraries\com\mojang\realms\1.13.3\realms-1.13.3.jar;%MINECRAFT_DIR%\libraries\com\mojang\text2speech\1.10.3\text2speech-1.10.3.jar;%MINECRAFT_DIR%\versions\%VERSION%\%VERSION%.jar net.minecraft.client.main.Main --username %PLAYER% --version %VERSION% --gameDir %MINECRAFT_DIR% --assetsDir %MINECRAFT_DIR%\assets --assetIndex %VERSION_SERIES% --uuid 00000000000000000000000000000000 --accessToken null --userType legacy --versionType release --width %WIDTH% --height %HEIGHT%
pause