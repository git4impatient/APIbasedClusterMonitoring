# APIbasedClusterMonitoring

We will use the Cloudera Manger API and the Apache Ranger API to monitor cluster activity.  

Nifi will issue the API calls, clean up the data, and insert into Apache Kudu

We're using upsert to Kudu - no small files problem :-)

Sample Impala queries - YARN resources used, Impala resources used, Ranger provides last table access, blocked access attempts, which users have accessed a particular table etc etc

You'll need an xml2json.xslt file, I worked with this
https://stackoverflow.com/questions/24122921/xsl-to-convert-xml-to-json

Put the xml2json.xslt file in a directory that you choose and configure this in the XML transform nifi processor.
Put the tolowerEscapequotes.py in a directory you choose and configure the execute stream command to point at this

A big thank you to John for Nifi and Jolt help.  A big thank you to Marcus for the XSLT. 

(C) Copyright 2021 Martin Lurie
