.. _ble-index:

BLE
==================

总览
------

本示例主要介绍如何使用ble。

使用步骤
-----------

- 编译 ``customer_app/bl602_demo_event`` 工程并下载工程；
- 使用 ``stack_ble`` 命令初始化ble，打印的部分log如下。

    .. figure:: imgs/image1.png
       :alt: 

- 依次使用 ``cmd_init`` 、 ``cmd_auth`` 进行相关的初始化；

    .. figure:: imgs/image2.png
       :alt: 

    .. figure:: imgs/image3.png
       :alt: 

- 使用 ``cmd_start_adv 0 0 0080 0080`` 命令开启ble。


    .. figure:: imgs/image4.png
       :alt: 

- 用户可以通过手机app ``nRFConnect`` scan附近的蓝牙，找到我们的设备并连接。

    .. figure:: imgs/image5.png
       :alt: 

    .. figure:: imgs/image6.png
       :alt: 