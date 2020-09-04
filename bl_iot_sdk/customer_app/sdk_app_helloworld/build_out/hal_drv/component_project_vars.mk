# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/hal_drv $(BL60X_SDK_PATH)/components/hal_drv/include $(BL60X_SDK_PATH)/components/hal_drv/bl602_hal
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/hal_drv  -lhal_drv 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += hal_drv
component-hal_drv-build: 
