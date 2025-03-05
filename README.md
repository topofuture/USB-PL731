# USB-PL731
PL731是一款USB总线的转接模块，实现USB转7个异步串口功能。用于为计算机扩展异步串口，满足大多数一对多应用场景。
![image](https://github.com/topofuture/USB-PL731/blob/main/pictures/PL731_solution.jpg)

## 特性
12 Mbps全速USB 2.0设备接口，模块封装，硬件只需要连接USB和TTL串口。
4个标准串口，最高波特率3M bps；3个模拟串口，最高波特率115200 bps。
Windows 10以上操作系统内置驱动，Linux内核自带USB CDC驱动。 
硬件全双工串口，支持TTL电平，支持硬件外加电平转换RS232或RS485。 
串口支持1个起始位，8个数据位，1-2个停止位，奇偶校验。 
每个串口内置1024字节的接收FIFO，512字节的发送FIFO。 
不支持硬件流控。支持基于FIFO的发送方向软件流控。
支持半双工，提供串口正在发送状态指示TNOW，可用于控制RS485收发切换。 
串口接收信号允许波特率误差2%，发送信号波特率误差<1.2%。
提供7路串口打开关闭状态指示GPIO(LEDx)。
支持批量芯片VID、PID、产品信息以及厂商信息等参数定制服务。
通过USB接口供电（DC 5V）。 
超小体积嵌入式封装，邮票孔接口。
温度范围：-40℃～85℃（工业级）。

## 内容
docs - 模块说明文档
examples - 应用参考
hw - 硬件封装和设计参考
tools - 相关工具

## 购买方式
- 淘宝：https://item.taobao.com/item.htm?id=815558970742
- 嘉立创【硬创社】：https://x.jlc.com/platform/detail/31b1cb50c0ea4a91bc851e70bc6d9041?type=2&share=jlc1741139253709


