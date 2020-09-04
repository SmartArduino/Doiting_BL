#ifndef _JOYLINK_EXTERN_SUB_DEV_H_
#define _JOYLINK_EXTERN_SUB_DEV_H_

#ifdef __cplusplus
extern "C"{
#endif /* __cplusplus */

#include "joylink.h"
#include "joylink_sub_dev.h"

/*
 * user set
 */

#define DEV_AUTH_VALUE    0          // 0: disable; 1: enable.
#define DEV_BATCH_BIND    0          // 0: disable; 1; enable.

#define SUBDEV_UUID       "4E4638"
#define SUBDEV_MAC        "AA0011223366"
#define SUBDEV_LICENSE    "d91fa7fc6ba19811747d9d6ddc0971f2"

/*---------------- sub dev api ---------------*/

/**
 * brief: 
 *
 * @Param: dev
 * @Param: num
 *
 * @Returns: 
 */
E_JLRetCode_t
joylink_dev_sub_add(JLSubDevData_t *dev, int num);

/**
 * brief: 
 *
 * @Param: dev
 * @Param: num
 *
 * @Returns: 
 */
E_JLRetCode_t
joylink_sub_dev_del(char *feedid);

/**
 * brief: 
 *
 * @Param: feedid
 * @Param: dev
 *
 * @Returns: 
 */
E_JLRetCode_t
joylink_dev_sub_get_by_feedid(char *feedid, JLSubDevData_t *dev);
/**
 * brief: 
 *
 * @Param: feedid
 * @Param: dev
 *
 * @Returns: 
 */
E_JLRetCode_t
joylink_dev_sub_version_update(char *feedid, int version);
/**
 * brief: 
 *
 * @Param: uuid
 * @Param: mac
 * @Param: dev
 *
 * @Returns: 
 */
E_JLRetCode_t
joylink_sub_dev_get_by_uuid_mac(char *uuid, char *mac, JLSubDevData_t *dev);

/**
 * brief: 
 *
 * @Param: uuid
 * @Param: mac
 * @Param: dev
 *
 * @Returns: 
 */
E_JLRetCode_t
joylink_dev_sub_update_keys_by_uuid_mac(char *uuid, char *mac, JLSubDevData_t *dev);

/**
 * brief: 
 *
 * @Param: count
 * @Param: scan_type
 *
 * @Returns: 
 */
JLSubDevData_t *
joylink_dev_sub_devs_get(int *count);

/**
 * brief: 
 *
 * @Param: cmd
 * @Param: cmd_len
 * @Param: feedid
 *
 * @Returns: 
 */
E_JLRetCode_t
joylink_dev_sub_ctrl(const char* cmd, int cmd_len, char* feedid);

/**
 * brief: 
 *
 * @Param: feedid
 * @Param: out_len
 *
 * @Returns: 
 */
char *
joylink_dev_sub_get_snap_shot(char *feedid, int *out_len);

/**
 * brief: 
 *
 * @Param: feedid
 *
 * @Returns: 
 */
E_JLRetCode_t
joylink_dev_sub_unbind(const char *feedid);


#ifdef __cplusplus
}
#endif

#endif



