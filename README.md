# Docker-xBrowserSync-api
Docker files to create a xBrowserSync api container

To create the docker image, please download these files into a folder and the execute the following command:

`docker build -t xbrowsersyncdev .`

Once it has been created, please use the following command for execution

`docker exec run -d -p 28080:8080 --name xbrowsersync -v /apps/xbrowsersync/settings.json:/xbrowsersync/config/settings.json xbrowsersyncdev`

where `/apps/xbrowsersync/settings.json` is the route of the settings.json file. 
