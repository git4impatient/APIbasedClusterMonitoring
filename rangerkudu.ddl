drop table if exists rangerkudu;
create table rangerkudu ( 
  id  string , 
  accessresult  string , 
  accesstype  string , 
  aclenforcer  string , 
  action  string , 
  agenthost  string , 
  agentid  string , 
  audittype  string , 
  clientip  string , 
  clustername  string , 
  eventcount  string , 
  eventduration  string , 
  eventid  string , 
  eventtime  string , 
  policyid  string , 
  policyversion  string , 
  repodisplayname  string , 
  reponame  string , 
  repotype  string , 
  requestdata  string , 
  requestuser  string , 
  resourcepath  string , 
  resourcetype  string , 
  sequencenumber  string , 
  servicetype  string , 
  servicetypedisplayname  string , 
PRIMARY KEY(id)
)
PARTITION BY HASH PARTITIONS 16
STORED AS KUDU TBLPROPERTIES( 'kudu.master_addresses' = 'gromit:7051');
;

