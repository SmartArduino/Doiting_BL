#
# "main" pseudo-component makefile.
#
# (Uses default behaviour of compiling all source files in directory, adding 'include' to include path.)

include $(BL60X_SDK_PATH)/components/network/ble/ble_common.mk

# COMPONENT_ADD_INCLUDEDIRS += 

# COMPONENT_PRIV_INCLUDEDIRS := 

## This component's src
# COMPONENT_SRCS :=
#
#
#COMPONENT_OBJk := $(patsubst %.c,%.o, $(COMPONENT_SRCS))
#COMPONENT_OBJS := $(patsubst %.cpp,%.o, $(COMPONENT_OBJS))

# COMPONENT_SRCDIRS := 


ifeq ($(CONFIG_ENABLE_PSM_RAM),1)
CPPFLAGS += -DCONF_USER_ENABLE_PSRAM
endif

ifeq ($(CONFIG_ENABLE_CAMERA),1)
CPPFLAGS += -DCONF_USER_ENABLE_CAMERA
endif

ifeq ($(CONFIG_ENABLE_BLSYNC),1)
CPPFLAGS += -DCONF_USER_ENABLE_BLSYNC
endif

ifeq ($(CONFIG_ENABLE_VFS_SPI),1)
CPPFLAGS += -DCONF_USER_ENABLE_VFS_SPI
endif

ifeq ($(CONFIG_ENABLE_VFS_ROMFS),1)
CPPFLAGS += -DCONF_USER_ENABLE_VFS_ROMFS
endif
