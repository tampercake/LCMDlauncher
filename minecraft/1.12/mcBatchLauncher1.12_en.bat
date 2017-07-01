@echo off
title mcBatchLauncher 1.12
cd \
:: mcBatchLauncher
:: version 1.12
:: by lelik_01
::
:: Minecraft can be taken from here: https://github.com/lelik01/mcBatchLauncher/releases

:: path to Java (can be found in Program Files)
set JAVA="C:\Program Files\Java\jre1.8.0_131\bin\javaw.exe"

:: specify the folder where Minecraft will be located
set MINECRAFT_DIR=%APPDATA%\.minecraft

:: folder with Minecraft (you can not touch)
set GAME_DIR=%MINECRAFT_DIR%

:: resources of the game (you can not touch)
set ASSETS_DIR=%MINECRAFT_DIR%\assets

:: a series of versions of Minecraft (you can not touch)
set VERSION_SERIES=1.12

:: Minecraft version (you can not touch)
set VERSION=1.12

:: additional Minecraft libraries (you can not touch)
set NATIVES_DIR=%MINECRAFT_DIR%\natives

:: your nickname
set PLAYER=guest

:: window resolution
set WIDTH=800
set HEIGHT=640

:: arguments, the number of allocated RAM is mandatory! (In megabytes = -Xmx512M, in gigabytes = -Xmx1G)
set ARGUMENTS="-Xmx1G"

:: launch of Minecraft (you can not touch)
cd %MINECRAFT_DIR%

%JAVA% %ARGUMENTS% -Djava.library.path=%NATIVES_DIR% -cp %MINECRAFT_DIR%\libraries\com\mojang\patchy\1.1\patchy-1.1.jar;%MINECRAFT_DIR%\libraries\oshi-project\oshi-core\1.1\oshi-core-1.1.jar;%MINECRAFT_DIR%\libraries\net\java\dev\jna\jna\4.4.0\jna-4.4.0.jar;%MINECRAFT_DIR%\libraries\net\java\dev\jna\platform\3.4.0\platform-3.4.0.jar;%MINECRAFT_DIR%\libraries\com\ibm\icu\icu4j-core-mojang\51.2\icu4j-core-mojang-51.2.jar;%MINECRAFT_DIR%\libraries\net\sf\jopt-simple\jopt-simple\5.0.3\jopt-simple-5.0.3.jar;%MINECRAFT_DIR%\libraries\com\paulscode\codecjorbis\20101023\codecjorbis-20101023.jar;%MINECRAFT_DIR%\libraries\com\paulscode\codecwav\20101023\codecwav-20101023.jar;%MINECRAFT_DIR%\libraries\com\paulscode\libraryjavasound\20101123\libraryjavasound-20101123.jar;%MINECRAFT_DIR%\libraries\com\paulscode\librarylwjglopenal\20100824\librarylwjglopenal-20100824.jar;%MINECRAFT_DIR%\libraries\com\paulscode\soundsystem\20120107\soundsystem-20120107.jar;%MINECRAFT_DIR%\libraries\io\netty\netty-all\4.1.9.Final\netty-all-4.1.9.Final.jar;%MINECRAFT_DIR%\libraries\com\google\guava\guava\21.0\guava-21.0.jar;%MINECRAFT_DIR%\libraries\org\apache\commons\commons-lang3\3.5\commons-lang3-3.5.jar;%MINECRAFT_DIR%\libraries\commons-io\commons-io\2.5\commons-io-2.5.jar;%MINECRAFT_DIR%\libraries\commons-codec\commons-codec\1.10\commons-codec-1.10.jar;%MINECRAFT_DIR%\libraries\net\java\jinput\jinput\2.0.5\jinput-2.0.5.jar;%MINECRAFT_DIR%\libraries\net\java\jutils\jutils\1.0.0\jutils-1.0.0.jar;%MINECRAFT_DIR%\libraries\com\google\code\gson\gson\2.8.0\gson-2.8.0.jar;%MINECRAFT_DIR%\libraries\com\mojang\authlib\1.5.25\authlib-1.5.25.jar;%MINECRAFT_DIR%\libraries\com\mojang\realms\1.10.17\realms-1.10.17.jar;%MINECRAFT_DIR%\libraries\org\apache\commons\commons-compress\1.8.1\commons-compress-1.8.1.jar;%MINECRAFT_DIR%\libraries\org\apache\httpcomponents\httpclient\4.3.3\httpclient-4.3.3.jar;%MINECRAFT_DIR%\libraries\commons-logging\commons-logging\1.1.3\commons-logging-1.1.3.jar;%MINECRAFT_DIR%\libraries\org\apache\httpcomponents\httpcore\4.3.2\httpcore-4.3.2.jar;%MINECRAFT_DIR%\libraries\it\unimi\dsi\fastutil\7.1.0\fastutil-7.1.0.jar;%MINECRAFT_DIR%\libraries\org\apache\logging\log4j\log4j-api\2.8.1\log4j-api-2.8.1.jar;%MINECRAFT_DIR%\libraries\org\apache\logging\log4j\log4j-core\2.8.1\log4j-core-2.8.1.jar;%MINECRAFT_DIR%\libraries\org\lwjgl\lwjgl\lwjgl\2.9.4-nightly-20150209\lwjgl-2.9.4-nightly-20150209.jar;%MINECRAFT_DIR%\libraries\org\lwjgl\lwjgl\lwjgl_util\2.9.4-nightly-20150209\lwjgl_util-2.9.4-nightly-20150209.jar;%MINECRAFT_DIR%\libraries\org\lwjgl\lwjgl\lwjgl-platform\2.9.4-nightly-20150209\lwjgl-platform-2.9.4-nightly-20150209.jar;%MINECRAFT_DIR%\libraries\org\lwjgl\lwjgl\lwjgl\2.9.2-nightly-20140822\lwjgl-2.9.2-nightly-20140822.jar;%MINECRAFT_DIR%\libraries\org\lwjgl\lwjgl\lwjgl_util\2.9.2-nightly-20140822\lwjgl_util-2.9.2-nightly-20140822.jar;%MINECRAFT_DIR%\libraries\com\mojang\text2speech\1.10.3\text2speech-1.10.3.jar;%MINECRAFT_DIR%\libraries\com\mojang\text2speech\1.10.3\text2speech-1.10.3.jar;%MINECRAFT_DIR%\libraries\ca\weblite\java-objc-bridge\1.0.0\java-objc-bridge-1.0.0.jar;%MINECRAFT_DIR%\libraries\ca\weblite\java-objc-bridge\1.0.0\java-objc-bridge-1.0.0.jar;%MINECRAFT_DIR%\versions\%VERSION%\%VERSION%.jar net.minecraft.client.main.Main --username %PLAYER% --version %VERSION% --gameDir %GAME_DIR% --assetsDir %ASSETS_DIR% --assetIndex %VERSION_SERIES% --uuid sample_token --accessToken sample_token --userType offline --versionType release --width %WIDTH% --height %HEIGHT%