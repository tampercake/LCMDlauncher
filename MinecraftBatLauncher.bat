@echo off
title Minecraft.bat launcher 1.13.2
:: Minecraft.bat launcher by lelik_01
:: https://github.com/lelik01/LCMDLauncher
:: Java
set JAVA=java
:: Minecraft
set MINECRAFT_DIR=%AppData%\.minecraft
:: Resolution Window
set WIDTH=925
set HEIGHT=530
:: RAM
set MAX_MEM=1G
set MIN_MEM=512M
:: Arguments
set ARGUMENTS=
:: Nickname
set PLAYER=Player
cd %MINECRAFT_DIR%
%JAVA% -Xmx%MAX_MEM% -Xms%MIN_MEM% %ARGUMENTS% -Dfile.encoding=CP866 -Djava.library.path=%MINECRAFT_DIR%\versions\1.13.2\natives -Dminecraft.launcher.brand=java-minecraft-launcher -Dminecraft.launcher.version=1.6.84-j -cp %MINECRAFT_DIR%\libraries\com\mojang\patchy\1.1\patchy-1.1.jar;%MINECRAFT_DIR%\libraries\oshi-project\oshi-core\1.1\oshi-core-1.1.jar;%MINECRAFT_DIR%\libraries\net\java\dev\jna\jna\4.4.0\jna-4.4.0.jar;%MINECRAFT_DIR%\libraries\net\java\dev\jna\platform\3.4.0\platform-3.4.0.jar;%MINECRAFT_DIR%\libraries\com\ibm\icu\icu4j-core-mojang\51.2\icu4j-core-mojang-51.2.jar;%MINECRAFT_DIR%\libraries\net\sf\jopt-simple\jopt-simple\5.0.3\jopt-simple-5.0.3.jar;%MINECRAFT_DIR%\libraries\com\paulscode\codecjorbis\20101023\codecjorbis-20101023.jar;%MINECRAFT_DIR%\libraries\com\paulscode\codecwav\20101023\codecwav-20101023.jar;%MINECRAFT_DIR%\libraries\com\paulscode\libraryjavasound\20101123\libraryjavasound-20101123.jar;%MINECRAFT_DIR%\libraries\com\paulscode\soundsystem\20120107\soundsystem-20120107.jar;%MINECRAFT_DIR%\libraries\io\netty\netty-all\4.1.25.Final\netty-all-4.1.25.Final.jar;%MINECRAFT_DIR%\libraries\com\google\guava\guava\21.0\guava-21.0.jar;%MINECRAFT_DIR%\libraries\org\apache\commons\commons-lang3\3.5\commons-lang3-3.5.jar;%MINECRAFT_DIR%\libraries\commons-io\commons-io\2.5\commons-io-2.5.jar;%MINECRAFT_DIR%\libraries\commons-codec\commons-codec\1.10\commons-codec-1.10.jar;%MINECRAFT_DIR%\libraries\net\java\jinput\jinput\2.0.5\jinput-2.0.5.jar;%MINECRAFT_DIR%\libraries\net\java\jutils\jutils\1.0.0\jutils-1.0.0.jar;%MINECRAFT_DIR%\libraries\com\mojang\brigadier\1.0.14\brigadier-1.0.14.jar;%MINECRAFT_DIR%\libraries\com\mojang\datafixerupper\1.0.19\datafixerupper-1.0.19.jar;%MINECRAFT_DIR%\libraries\com\google\code\gson\gson\2.8.0\gson-2.8.0.jar;%MINECRAFT_DIR%\libraries\com\mojang\authlib\1.5.25\authlib-1.5.25.jar;%MINECRAFT_DIR%\libraries\org\apache\commons\commons-compress\1.8.1\commons-compress-1.8.1.jar;%MINECRAFT_DIR%\libraries\org\apache\httpcomponents\httpclient\4.3.3\httpclient-4.3.3.jar;%MINECRAFT_DIR%\libraries\commons-logging\commons-logging\1.1.3\commons-logging-1.1.3.jar;%MINECRAFT_DIR%\libraries\org\apache\httpcomponents\httpcore\4.3.2\httpcore-4.3.2.jar;%MINECRAFT_DIR%\libraries\it\unimi\dsi\fastutil\8.2.1\fastutil-8.2.1.jar;%MINECRAFT_DIR%\libraries\org\apache\logging\log4j\log4j-api\2.8.1\log4j-api-2.8.1.jar;%MINECRAFT_DIR%\libraries\org\apache\logging\log4j\log4j-core\2.8.1\log4j-core-2.8.1.jar;%MINECRAFT_DIR%\libraries\com\mojang\realms\1.13.9\realms-1.13.9.jar;%MINECRAFT_DIR%\libraries\org\lwjgl\lwjgl\3.1.6\lwjgl-3.1.6.jar;%MINECRAFT_DIR%\libraries\org\lwjgl\lwjgl-jemalloc\3.1.6\lwjgl-jemalloc-3.1.6.jar;%MINECRAFT_DIR%\libraries\org\lwjgl\lwjgl-openal\3.1.6\lwjgl-openal-3.1.6.jar;%MINECRAFT_DIR%\libraries\org\lwjgl\lwjgl-opengl\3.1.6\lwjgl-opengl-3.1.6.jar;%MINECRAFT_DIR%\libraries\org\lwjgl\lwjgl-glfw\3.1.6\lwjgl-glfw-3.1.6.jar;%MINECRAFT_DIR%\libraries\org\lwjgl\lwjgl-stb\3.1.6\lwjgl-stb-3.1.6.jar;%MINECRAFT_DIR%\libraries\com\mojang\text2speech\1.10.3\text2speech-1.10.3.jar;%MINECRAFT_DIR%\versions\1.13.2\1.13.2.jar net.minecraft.client.main.Main --username %PLAYER% --version 1.13.2 --gameDir %MINECRAFT_DIR% --assetsDir %MINECRAFT_DIR%\assets --assetIndex 1.13.1 --width %WIDTH% --height %HEIGHT% --accessToken 0