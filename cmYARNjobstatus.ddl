drop table if exists yarnjobs;
create table if not exists yarnjobs (
    applicationid  string, 
    attributes  string, 
    mr2appinformation  string, 
    name  string, 
    starttime  string, 
    user  string, 
    pool  string, 
    state  string, 
    progress  decimal (20,10),
    applicationtags  string, 
    allocatedmemoryseconds  int,
    allocatedvcoreseconds  int,
    allocatedmb  int,
    allocatedvcores  int,
    runningcontainers  int,
PRIMARY KEY(applicationid)
)
PARTITION BY HASH PARTITIONS 16
STORED AS KUDU TBLPROPERTIES( 'kudu.master_addresses' = 'gromit:7051');
;

