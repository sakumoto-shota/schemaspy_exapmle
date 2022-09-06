FROM schemaspy/schemaspy:snapshot
USER root
WORKDIR /
RUN apk update && \
    apk add --no-cache curl fontconfig && \
    mkdir download && \
    cd download

RUN curl -O https://mirrors.gigenet.com/OSDN//ipafonts/57327/ipaexg00201.zip && \
    unzip ipaexg00201.zip && \
    mkdir -p /usr/share/fonts/truetype/ipa && \
    cp */*ttf /usr/share/fonts/truetype/ipa && \
    fc-cache -fv && \
    rm -rf download
