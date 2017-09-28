FROM java:8-jre-alpine

RUN apk add --update bash && rm -rf /var/cache/apk/*

ADD build/install/redfish/ /opt/redfish/

CMD ["/bin/bash", "/opt/redfish/bin/redfish"]
