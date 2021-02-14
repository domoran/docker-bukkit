set /p MC_VERSION=Which version to run? (e.g. 1.8.8)?
set /p MC_DIR=Data Directory? (e.g. C:\data)?
set /p MC_PORT=Port? (e.g. 25565)

docker run -it -v %MC_DIR%:/data -p %MC_PORT%:25565  -e EULA=true --name mc_server-%MC_VERSION% mcserver-%MC_VERSION%