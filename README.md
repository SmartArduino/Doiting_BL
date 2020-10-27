# 入门指南    
* [English version](./README_EN.md)    

## 概述
BL602/BL604 是博流智能推出的一款 Wi-Fi + BLE 组合的芯片组，用于低功耗和高性能应用开发。
无线子系统包含 2.4G 无线电，Wi-Fi 802.11b/g/n 和 BLE 5.0 基带/MAC 设计。微控制器子系统包含一个低功耗的 32位 RISC CPU，高速缓存和存储器。电源管理单元控制低功耗模式。此外，还支持各种安全性能。
外围接口包括 SDIO，SPI，UART，I2C，IR remote，PWM，ADC，DAC，PIR 和 GPIO。

## 准备
* 一块BL602开发板
* USB 数据线 (A 转 Micro-B)
* 一台PC主机

## 开发流程
以下演示Linux环境下的开发流程，其他开发环境请参考[docs](docs)

## 搭建开发环境
1. 准备一台Linux主机，win10用户可使用Liunx子系统
2. 打开终端，安装make，命令`sudo apt-get install make`
    * 国内用户可更改镜像源，加快安装速度
3. 安装git，命令`sudo apt-get install git`
4. 克隆仓库`git clone https://github.com/SmartArduino/Doiting_BL.git`
5. 修改权限，运行以下两条命令
   ```
   chmod -R 777 ./Doiting_BL/bl_iot_sdk/toolchain/
   find ./Doiting_BL/bl_iot_sdk/customer_app -name "genromap"|xargs chmod 777
   ```

## 编译
以下使用hello-world为例
* 由于工具链以放在SDK中，故无需再下载工具链，可直接编译
1. 进入例程目录，命令`cd Doiting_BL/bl_iot_sdk/customer_app/sdk_app_helloworld/`
2. 使用项目提供的sh脚本进行编译，命令`./genromap`
3. 编译完成提示：
    ```
    Generating BIN File to /home/hogc/Doiting_BL/bl/bl_iot_sdk/ customer_app/sdk_app_helloworld/build_out/sdk_app_helloworld.bin
    Building Finish. To flash build output.
    ```

## 固件烧录
1. 将开发板连接到电脑，请确保已安装串口驱动，win10自动安装
2. 打开烧录工具，存放路径：Doiting_BL\bl_iot_sdk\tools\flash_tool
3. 芯片类型选择：BL602/604
4. 将Interface选择为Uart，并选择开发板相应的串口
5. 选择固件
    1. 将Partition Table、Boot2 Bin、Firmware Bin选项卡打勾
    2. 为Partition Table添加文件，点击Partition Table后的Browse，选择partition_cfg_2M.toml
    3. 点击Boot2 Bin后的Browse，选择blsp_boot2.bin
    4. 点击Firmware Bin后的Browse，找到sdk_app_helloworld目录下的build_out，选择sdk_app_helloworld.bin
    <img src="docs/_static/download.png" height="300">
6. 使开发板进入烧录模式，按住D8(GPIO8)按键，再按一次EN键，再松开D8键
7. 点击Create&Download，进度条变绿，显示Success即为显示成功

## 验证固件
1. 使用串口工具，连接开发板
    * 波特率：2000000     数据位：8    校验位：None     停止位：1
2. 打开串口，复位开发板（点击EN键）
3. 显示以下，即为运行成功
    ```
    [helloworld]   start
    [helloworld]   helloworld
    [helloworld]   end
    ```

## SDK和项目分离
1. 打开Linux终端，配置profile文件，命令`vim ~/.profile`
2. 添加环境变量，填写真实的路径
    ```
    export BL60X_SDK_PATH="$HOME/Doiting_BL/bl_iot_sdk"
    ```


## 注意
* 烧录可能会自动升级，Partition文件可能会不一样，若程序运行不正常可更换此Partition文件[partition_cfg_2M.toml](docs/_static/partition_cfg_2M.toml)
* 烧录后进度条出现红色，请再次尝试，或先使用串口工具连接，正确进入下载模式，串口会一直打印东西


## 资源
* 开发板购买地址 [淘宝](https://item.taobao.com/item.htm?spm=a1z10.3-c-s.w4002-23087949821.11.58325ac1BMHbKT&id=627734275519) 或 [我们英文网站](https://bit.ly/35RmF9V)
* 技术交流QQ群: 278888900, mail: yichone@doit.am


