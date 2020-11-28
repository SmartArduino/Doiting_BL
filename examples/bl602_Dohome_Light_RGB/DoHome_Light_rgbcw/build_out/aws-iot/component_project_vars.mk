# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/3rdparty/aws-iot/port/include $(BL60X_SDK_PATH)/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include $(BL60X_SDK_PATH)/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/external_libs/jsmn
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/aws-iot  -laws-iot 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += aws-iot
component-aws-iot-build: 
