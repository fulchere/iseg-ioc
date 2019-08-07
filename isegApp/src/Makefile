TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = iseg
# iseg.dbd will be created and installed
DBD += iseg.dbd

# iseg.dbd will be made up from these files:
iseg_DBD += base.dbd
iseg_DBD += caPutLog.dbd asSupport.dbd devIocStats.dbd reccaster.dbd calc.dbd
iseg_DBD += fribdiagstd.dbd
iseg_DBD += stream.dbd
iseg_DBD += asyn.dbd
iseg_DBD += drvAsynIPPort.dbd

# Include dbd files from all support applications:
#iseg_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
iseg_LIBS += caPutLog autosave devIocStats reccaster calc
iseg_LIBS += fribdiagstd
iseg_LIBS += stream
iseg_LIBS += asyn

# iseg_registerRecordDeviceDriver.cpp derives from iseg.dbd
iseg_SRCS += iseg_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
iseg_SRCS_DEFAULT += isegMain.cpp
iseg_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#iseg_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
iseg_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

