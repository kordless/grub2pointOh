#!/bin/bash
sudo -i -u solr /opt/solr/bin/solr stop -c -p 8983 -s /opt/solr/mitta/cloud/node1/solr
sudo -i -u solr /opt/solr/bin/solr stop -c -p 7574 -s /opt/solr/mitta/cloud/node2/solr -z localhost:9983
echo "shutdown complete" >> /root/solr-shutdown.log