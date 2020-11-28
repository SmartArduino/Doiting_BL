# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/network/ble/blecontroller $(BL60X_SDK_PATH)/components/network/ble/blecontroller/include $(BL60X_SDK_PATH)/components/network/ble/blecontroller/ble_inc
COMPONENT_LDFLAGS +=    -L$(BL60X_SDK_PATH)/components/network/ble/blecontroller/lib -lblecontroller 
COMPONENT_LINKER_DEPS += $(BL60X_SDK_PATH)/components/network/ble/blecontroller/lib/libblecontroller.a
component-blecontroller-build: 
