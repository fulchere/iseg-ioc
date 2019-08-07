TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = fths
# fths.dbd will be created and installed
DBD += fths.dbd

# fths.dbd will be made up from these files:
fths_DBD += base.dbd
fths_DBD += caPutLog.dbd asSupport.dbd devIocStats.dbd reccaster.dbd calc.dbd
fths_DBD += fribdiagstd.dbd
fths_DBD += stream.dbd
fths_DBD += asyn.dbd
fths_DBD += drvAsynIPPort.dbd

# Include dbd files from all support applications:
#fths_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
fths_LIBS += caPutLog autosave devIocStats reccaster calc
fths_LIBS += fribdiagstd
fths_LIBS += stream
fths_LIBS += asyn

# fths_registerRecordDeviceDriver.cpp derives from fths.dbd
fths_SRCS += fths_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
fths_SRCS_DEFAULT += fthsMain.cpp
fths_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#fths_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
fths_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

