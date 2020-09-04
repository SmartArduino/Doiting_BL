# AT Command

## 基本命令

### AT测试启动
测试AT是否启动。
+ 命令: `AT`
+ 响应: `OK`
#### 示例


### AT帮助
打印当前AT系统所有支持的命令以及用法。
+ 命令: `AT+S.HELP`
+ 响应: 当前系统支持的指令列表
#### 示例
```
AT+S.HELP

# AT -- Null cmd, always returns OK
# AT+ACT -- Switch WiFi work mode
# AT+RST -- Reset the module
# AT+S.HELP -- This text
# AT+S.GCFG =<key> -- Get config key
# AT+S.SCFG =<key>,<value> -- Set config key
# AT+CWJAP=<SSID>,<PSK> -- join ap and do not save into flash
# AT+CWQAP -- disconnect ap
# AT+CIPSTART=<link id>,<TCP|UDP>,<IP>,<port> -- create udp or tcp connection
# AT+CIPCLOSE=<link id> -- close the network
# AT+CIPSEND=<link id>,<data len> -- send the data
```

## WIFI相关命令
### 连接WiFi
连接制定的WiFi，不写入到Flash，默认启用自动重连。WiFi连接成功或者失败将以事件的方式通知。
+ 命令: `AT+CWJAP=<SSID>,<PSK>`
+ 响应: `OK`
+ 事件:
  + `+EVT:0:wifi connected`

#### 示例
```
AT+CWJAP=bl_test_019,12345678

OK

+EVT:0:wifi connected
```

### 断开WiFi
断开当前连接的WiFi，并关闭自动重连机功能。
+ 命令: `AT+CWQAP`
+ 响应: `OK`

## Socket相关命令
### 连接Socket
创建TCP/UDP连接，目前支持4个连接。

*注意，发送连接请求后,不会马上返回连接成功或者失败的状态,等成功连接后或者超时后才发送相应状态。*

+ 命令: `AT+CIPSTART=<link id>,<"TCP"|"UDP">,<IP>,<port>`
+ 响应: `+IPS:<link id>,<status>`
  + link id：连接ID
  + status：连接状态，0成功，-1失败

#### 示例
```
AT+CIPSTART=0,TCP,192.168.19.124,8000

+IPS:0,0
```

### 断开Socket
断开指定socket连接，并释放相关资源

+ 命令: `AT+CIPCLOSE=<link id>`
+ 响应: `+IPS:<link id>,-1`
  + link id：连接ID

#### 示例
```
AT+CIPCLOSE=0

+IPS:0,-1
```

### 发送数据
向指定Socket发送数据。接收的数据以异步的方式返回。

+ 命令: `AT+CIPSEND=<link id>,<data len>`，回车，并发送data len长度的数据
+ 响应: `+IPS:<link id>,-1`
  + link id：连接ID

#### 示例
```
AT+CIPCLOSE=0

+IPS:0,-1
```

### 接收数据
接受socket数据，以异步的方式返回

+ 响应: `+IPD:<link id>,<data len>`，回车，并跟随data len长度的接收数据
