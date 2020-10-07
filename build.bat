set http_proxy=
set https_proxy=
call :build 1.8.8
call :build 1.15.2
pause

goto :eof

:build
docker build --build-arg BUKKIT_VERSION=%1 -t mcserver-%1 . -m 4G
goto :eof