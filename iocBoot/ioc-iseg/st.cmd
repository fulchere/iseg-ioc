#!../../bin/linux-x86_64/iseg

< envPaths

epicsEnvSet("LOCATION", "ISEG power supply, desk")
epicsEnvSet("STREAM_PROTOCOL_PATH", "$(TOP)")

## Register all support components
dbLoadDatabase("${TOP}/dbd/iseg.dbd",0,0)
iseg_registerRecordDeviceDriver(pdbbase)

isegHalConnect("NAME","INTERFACE")

drvAsynIPPortConfigure("dev1","192.168.1.101", 0, 0, 0)

## Load record instances
dbLoadRecords("../../db/iseg.db")

dbLoadRecords("$(EPICS_BASE)/db/asynRecord.db","P=,R=asyn,PORT=dev1,ADDR=0,OMAX=40,IMAX=40")

iocInit()
