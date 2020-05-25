ARG image
FROM $image
WORKDIR /usr/src/app

ARG OCA_REPO
ENV VUE_APP_OCA_REPO $OCA_REPO

ARG DATA_VAULT
ENV VUE_APP_DATA_VAULT ${DATA_VAULT}

ARG dest_toolbox1=dist
ARG ACAPY_API_AGENT1
ENV VUE_APP_ACAPY_API $ACAPY_API_AGENT1
RUN npm run build -- --dest $dest_toolbox1

ARG dest_toolbox2=dist
ARG ACAPY_API_AGENT2
ENV VUE_APP_ACAPY_API $ACAPY_API_AGENT2
RUN npm run build -- --dest $dest_toolbox2

RUN ls | grep -v dist | xargs rm -rf
