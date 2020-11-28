# Automatically generated build file. Do not edit.
COMPONENT_INCLUDES += $(BL60X_SDK_PATH)/components/security/mbedtls $(BL60X_SDK_PATH)/components/security/mbedtls/include
COMPONENT_LDFLAGS +=  -L$(BUILD_DIR_BASE)/mbedtls  -lmbedtls 
COMPONENT_LINKER_DEPS += 
COMPONENT_SUBMODULES += 
COMPONENT_LIBRARIES += mbedtls
component-mbedtls-build: 
