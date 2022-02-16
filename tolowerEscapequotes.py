#!/usr/bin/env python
import sys
import string
import re
# input comes from STDIN
fullline=''
for line in sys.stdin:
    # remove leading and trailing whitespace
    line = line.strip()
    fullline = fullline+line
# strip off the xml label
#fullline = fullline.replace('<?xml version="1.0" encoding="UTF-8" standalone="yes"?>','')
fullline = re.sub("\<\?xml.*\?\>","",fullline)
# get rid of new line formatting
fullline = fullline.replace('\n',' ').replace('\r', ' ' ).replace('\t',' ')
# escape the single quotes
fullline = fullline.replace('&quot;','_')
fullline = fullline.replace('"','_')
fullline = fullline.replace('\\x','_')
fullline = fullline.replace('%','_')
# put the xml header back on
myline = '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>' +fullline 
print string.lower(myline)

