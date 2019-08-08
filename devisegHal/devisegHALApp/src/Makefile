TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#==================================================
# build a support library

LIBRARY_IOC += devisegHAL

# xxxRecord.h will be created from xxxRecord.dbd
#DBDINC += xxxRecord
# install devisegHAL.dbd into <top>/dbd
DBD += devIsegHal.dbd

# specify all source files to be compiled and added to the library
#devisegHAL_SRCS += xxx
devisegHAL_SRCS += devIsegHalStringin.c devIsegHal.cpp devIsegHalGlobalSwitchBo.c devIsegHalBo.c devIsegHalLo.c devIsegHalAo.c devIsegHalStringout.c devIsegHalBi.c devIsegHalAi.c devIsegHalMbbid.c devIsegHalAsync.c devIsegHalLi.c

devisegHAL_LIBS += $(EPICS_BASE_IOC_LIBS)
devisegHAL_SYS_LIBS += isegHAL-client

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

