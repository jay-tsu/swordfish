FROM java:8-jre-alpine

ADD build/install/redfish/ /opt/redfish/

CMD ["/opt/redfish/bin/redfish"]
