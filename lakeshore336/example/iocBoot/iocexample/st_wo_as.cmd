#!../../bin/linux-x86_64/example

## You may have to change example to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

#Define protocol path
epicsEnvSet("STREAM_PROTOCOL_PATH", "$(LAKESHORE336)/protocol/")

## Register all support components
dbLoadDatabase "dbd/example.dbd"
example_registerRecordDeviceDriver pdbbase

drvAsynIPPortConfigure ("L0","192.168.200.154:7777",0,0,0)

## Load record instances
dbLoadRecords "db/example.db"

#################################################
# autosave

epicsEnvSet("IOCNAME","lakeshore")

#################################################

cd ${TOP}/iocBoot/${IOC}
iocInit

