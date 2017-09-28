FROM anapsix/alpine-java:latest

ADD build/install/redfish/ /opt/redfish/

CMD ["/opt/redfish/bin/redfish"]
