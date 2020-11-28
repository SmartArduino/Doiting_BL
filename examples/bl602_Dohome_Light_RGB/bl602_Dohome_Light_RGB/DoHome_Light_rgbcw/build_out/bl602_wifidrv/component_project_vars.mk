# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/bl602/bl602_wifidrv $(BL60X_SDK_PATH)/components/bl602/bl602_wifidrv/include $(BL60X_SDK_PATH)/components/bl602/bl602_wifidrv/bl60x_wifi_driver/include
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/bl602_wifidrv  -lbl602_wifidrv 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += bl602_wifidrv
component-bl602_wifidrv-build: 
