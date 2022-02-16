# APIbasedClusterMonitoring

We will use the Cloudera Manger API and the Apache Ranger API to monitor cluster activity.  

Nifi will issue the API calls, clean up the data, and insert into Apache Kudu

We're using upsert to Kudu - no small files problem :-)

Sample Impala queries - YARN resources used, Impala resources used, Ranger provides last table access, blocked access attempts, which users have accessed a particular table etc etc

You'll need an xml2json.xslt file, I worked with this
https://stackoverflow.com/questions/24122921/xsl-to-convert-xml-to-json

(C) Copyright 2021 Martin Lurie
