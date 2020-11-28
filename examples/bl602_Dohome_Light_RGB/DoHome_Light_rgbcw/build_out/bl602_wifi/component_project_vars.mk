# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/bl602/bl602_wifi $(BL60X_SDK_PATH)/components/bl602/bl602_wifi/include $(BL60X_SDK_PATH)/components/bl602/bl602_wifi/include $(BL60X_SDK_PATH)/components/bl602/bl602_wifi/plf/refip/src/driver/phy/bl602_phy_rf
COMPONENT_LDFLAGS +=    -L$(BL60X_SDK_PATH)/components/bl602/bl602_wifi/lib -lbl602_wifi 
COMPONENT_LINKER_DEPS += $(BL60X_SDK_PATH)/components/bl602/bl602_wifi/lib/libbl602_wifi.a
component-bl602_wifi-build: 
