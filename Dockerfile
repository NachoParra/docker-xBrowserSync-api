FROM alpine:latest

#Define the ENV variable
ENV start /xbrowsersync/start.sh
ENV db /xbrowsersync/db.init
ENV xbrowser_folder /xbrowsersync
ENV install /xbrowsersync/install.sh

WORKDIR /xbrowsersync

COPY start.sh $start
COPY db.init $db
COPY install.sh $install
RUN $install

# Volume configuration
VOLUME ["/xbrowsersync/config/settings.json"]
#VOLUME ["/data/db"]

CMD ["/xbrowsersync/start.sh"]

EXPOSE 8080