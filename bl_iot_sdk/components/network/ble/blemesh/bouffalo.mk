include $(COMPONENT_PATH)/../ble_common.mk

# Component Makefile
#
## These include paths would be exported to project level
COMPONENT_ADD_INCLUDEDIRS    += src \
                                src/include  \
                                src/mesh_cli_cmds  \

## not be exported to project level
COMPONENT_PRIV_INCLUDEDIRS   :=

## This component's src 
COMPONENT_SRCS   := src/access.c \
					src/adv.c \
					src/beacon.c \
					src/cfg_cli.c \
					src/cfg_srv.c \
					src/crypto.c \
					src/health_cli.c \
					src/health_srv.c \
					src/main.c \
					src/net.c \
					src/prov.c \
					src/proxy.c \
					src/settings.c \
					src/transport.c \
					src/mesh_cli_cmds/mesh_cli_cmds.c \
					src/local_operation.c \

ifeq ($(CONFIG_BT_MESH_FRIEND),1)
COMPONENT_SRCS   += src/friend.c
endif

ifeq ($(CONFIG_BT_MESH_LOW_POWER),1)
COMPONENT_SRCS   += src/lpn.c
endif

#for mesh model source
#common
COMPONENT_ADD_INCLUDEDIRS += src/mesh_models \
							 src/mesh_models/common/include \
							 src/mesh_models/common/btc/include \
							 src/mesh_models/bfl_ble_mesh/api \
							 src/mesh_models/bfl_ble_mesh/api/core/include \
							 src/mesh_models/bfl_ble_mesh/api/models/include \
							 src/mesh_models/bfl_ble_mesh/btc/include \
							 src/mesh_models/bfl_ble_mesh/mesh_common/include \
							 src/mesh_models/bfl_ble_mesh/mesh_models/include \
							 src/mesh_models/bfl_ble_mesh/mesh_models/server/include \
							 src/mesh_models/bfl_ble_mesh/mesh_models/client/include \
							 src/mesh_models/bfl_ble_mesh/mesh_models/common/include \

COMPONENT_SRCS += src/mesh_models/common/btc/core/btc_manage.c \
				  src/mesh_models/common/btc/core/btc_task.c \
				  src/mesh_models/bfl_ble_mesh/mesh_common/mesh_mutex.c \
				  src/mesh_models/bfl_ble_mesh/mesh_common/mesh_common.c \
				  src/mesh_models/bfl_ble_mesh/api/core/bfl_ble_mesh_local_data_operation_api.c \
				  src/mesh_models/bfl_ble_mesh/api/core/bfl_ble_mesh_networking_api.c \
				  src/mesh_models/bfl_ble_mesh/api/models/bfl_ble_mesh_generic_model_api.c \
				  src/mesh_models/bfl_ble_mesh/api/models/bfl_ble_mesh_lighting_model_api.c \
				  src/mesh_models/bfl_ble_mesh/btc/btc_ble_mesh_generic_model.c \
				  src/mesh_models/bfl_ble_mesh/btc/btc_ble_mesh_lighting_model.c \
				  src/mesh_models/bfl_ble_mesh/btc/btc_ble_mesh_prov.c \

#server
COMPONENT_SRCS += src/mesh_models/bfl_ble_mesh/mesh_models/server/generic_server.c \
				  src/mesh_models/bfl_ble_mesh/mesh_models/server/lighting_server.c \
				  src/mesh_models/bfl_ble_mesh/mesh_models/server/state_transition.c \
				  src/mesh_models/bfl_ble_mesh/mesh_models/server/state_binding.c \
				  src/mesh_models/bfl_ble_mesh/mesh_models/server/device_property.c \
				  src/mesh_models/bfl_ble_mesh/mesh_models/server/server_common.c \

#client
COMPONENT_SRCS   += src/mesh_models/bfl_ble_mesh/mesh_models/client/generic_client.c \
					src/mesh_models/bfl_ble_mesh/mesh_models/client/lighting_client.c \
					src/mesh_models/bfl_ble_mesh/mesh_models/client/client_common.c \
					
#for mesh model source end

COMPONENT_OBJS   := $(patsubst %.c,%.o, $(COMPONENT_SRCS))
COMPONENT_SRCDIRS:= src \
                    src/mesh_cli_cmds \

#for mesh model source
COMPONENT_SRCDIRS += src/mesh_models/bfl_ble_mesh/mesh_models/server \
					 src/mesh_models/bfl_ble_mesh/mesh_models/client \
					 src/mesh_models/bfl_ble_mesh/mesh_common \
					 src/mesh_models/bfl_ble_mesh/api/models \
					 src/mesh_models/bfl_ble_mesh/api/core \
					 src/mesh_models/bfl_ble_mesh/btc \
					 src/mesh_models/common/btc/core \

#for mesh model source end