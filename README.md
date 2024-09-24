# PicoSweepInLabview

Freqency sweep in Labview. Support dq-frame and positive-negative-sequence mode. Need PicoScope.

我不想写这个说明文档。不过还好写了。

这是一个基于Labview的软件，它可以应用于扫频，支持单相、三相同步系、三相正负序模式。

这个仓库将在我申请到专利之后公开。

更新：寄了，专利说明书都写完了才知道这个涉及的算法多多少少都有大佬写过，只能申软著了。

## 它需要的软件与硬件支持有：

（我不会弄这个，这些都是我预估的。可能有多，可能有少）

### 1. 注入端硬件：

一台 DSP，它外接 RS485 通信转接用于接收上位机指令，后级接控制单相或三相以注入电流的变流器。

### 2. 测量端硬件：

两台 PicoScope 240xB，它们对应的连线。在测三相的情况下，其中一台用于测量三相电压，另一台测量三相电流。

### 3. 上位机软件：

Labview 2024 Q1, Labview modbus library

[PicoScope7, 32位PicoSDK11](https://www.picotech.com/downloads)

[picosdk-ni-labview-examples/PicoScope2000aLib, picosdk-ni-labview-shared](https://github.com/picotech)

## 它的功能与实现方法包括：

### 1. 扫频模式在单相测量信号、单相注入扫频、三相同步系扫频、三相正负序扫频间的选择，下述所有功能关于各模式的适配

它的实现方法是，在主界面设置分支选项，在各种功能模块内，根据分支的取值开关决定是否插入不同的子模块，或选择执行不同的子模块。根据用户选择的选项，部分无效选项不会显示。

### 2. 扫频点集的基础设置与生成

主循环中监视任何设置是否被改变；当发生改变时，重新生成一次扫频点集。

首先是 myFreqGen.vi。根据用户在界面上设置的频点上下限与基础频点数，它可以实现类似 matlab 中 logspace 的功能，生成对数均匀分布的频点集。它可以使得足够大的频率有足够大的因数（比如如果取到了一个大于 1000 Hz 的频点，那么它一定是 100 Hz 的整数倍）；也可以基于用户设置，加大某一频点附近的频点分布密度。

然后是 myFreqSymm.vi。它用于实现对功能模块的补充：对同步系模式，它会剔除与基波完全相同的频点，以防止后续需要DSP对硬件电路进行直流注入；对正负序模式，它将小于2倍基波频率以内的频点按照同样的密度扩充至2倍基波频率以上，并构造负半轴的注入频率，以保证负序注入有着足够的低频频点密度。

注：在这个扫频程序里，由于同一频率的正序与负序注入对应的耦合响应频率不同，所以正负序拆分成为注入频率的正负半轴。

### 3. 根据DSP最大同时扫频能力的频点分组

实现这个功能的是 myFreqGroup.vi。根据设置的DSP最大同时输出谐波数量，构造频点组；查看扫频点集，按绝对值从小到大的顺序，填充该频点组内容，使得频点组内所有频点及其关于基波的对称频率互不重叠。在所有频点集中的频点都被填充至频点组集后，结束填充，并将此时频点组的个数作为扫频遍历的次数。

在构造频点组时，同时生成了频点集（1维）与频点组集（2维）之间的对应索引。

注：在同步系扫频模式下，考虑到后续三相DSP需要同时的双频率注入，它生成的频点组长度只有预设的一半。

### 4. 频点组对应的扫频参数生成

它由 myFreqParamGen.vi 实现。这部分功能对用户不太重要，但它是扫频功能的核心。根据模式与设置情况，对各频点组生成PICO采样需要的最小采样量与最大时间分辨率。根据各模式下需要的采样频率与扫频点之间的关系，生成待测频点在采样的FFT结果中对应的所需索引。

### 5. PICO设备的检测与设备数检验

按键使能扫频循环后，程序先会进行一次PICO设备检测，以保证能够正常驱动设备。myPICO_CheckNum.vi 中调用了 ps2000a 库函数以实现该功能。若 DSP 最大输出频点数或 PICO 设备数不足以满足当前扫频模式的要求，它会禁止扫频开始。

### 6. PICO设备在扫频循环内的开机、运行、数据获取、关机

在扫频循环开始时，除强制停止键之外，所有设置选项与按钮均会被禁止更改，在扫频结束时才会被重新使能。

myPICO_Open.vi, my_PICO_run.vi, myPICO_close.vi 是在 PICO 官方例程 PicoScope2000aExampleBlockMSO.vi 的基础上，根据扫频模式进行修改得到；此外为了能够模块化方便在扫频循环中调用，增加了一些输入输出关系的转换。

### 7. 与DSP间的串口在扫频循环内的打开、通信、关闭

在每次扫频内，在开启PICO采样之前，需通过串口告知DSP需要输出的频点组，并等待至硬件电路到达稳定。myCommOpen.vi, myCommOut.vi, myCommClose.vi 调用 Labview 的附加库 modbus library，实现 RS485 MODBUS 协议的通信功能。按照注入的频率与设置的幅值选项，按照以下的方式向 DSP 输出信息。与DSP间通信方式：

	开启：
		开启串口
		送出1字节FFFF，以提醒DSP，接下来要进入允许输出的模式
		等待回应1字节（内容不限），以确认已建立联系
	第k次扫频循环中：
		送出1字节FF00，以提醒DSP，接下来要输出一组频率
		第1频点A相频率输出（1字节，16位无符号整型）
		第1频点A相幅值输出（2字节，32位浮点数）
		第1频点A相相位输出（1字节，16位无符号整型，360角度制）
		第1频点B相频率
		第1频点B相幅值
		第1频点B相相位
		第1频点C相频率
		第1频点C相幅值
		第1频点C相相位
		第2频点……
		……
		第n频点……
		送出1字节FF00，以表示这一组频点已经发送完毕
		等待DSP回应1字节，确认DSP已收到指令
		等待一段时间，该时间可在主界面内设置
	关闭：
		送出1字节F000，以提醒DSP，接下来要结束了
		等待DSP回应1字节，确认DSP知道要关闭了
		关闭串口

- 备注：如果已知DSP可接收的最大频点数，请设置在该界面内。
- 备注：通信中，多余的频点位会用全0补齐。
- 备注：虽然仿真软件生成波形时往往用的是sin计算，但这里定义DSP内的波形生成指令、FFT分解和dq分解用的都是cos计算；所有相位以A相电压为参考，d轴平行于A相电压cos矢量，q轴滞后90°。

此外，对于同步系扫频，待测频率对应的两个输出频率（待测频率加上与减去基波频率）需要同时输出相反的波形，该功能通过占用偶数个DSP输出频点实现。

### 8. 扫频结果的提取、运算、显示与CSV表格存储

根据 4 计算得的FFT索引，myFFT_RowSave.vi 处理扫频结果并计算各模式所需的响应，从FFT分解结果中提取所需的频域矢量。这个功能模块对程序来说也很重要。三相的两个模式有特殊的响应计算方式：

- 在同步系下，先对同步信号进行FFT提取基波相位信号，再将其转换成时域的同步系坐标变换矩阵，作用于采样，得到d、q轴分量。对d、q轴分量进行原频率的FFT分解，即得同步系信号。
- 在正负序下，由于待测频率通过正负半轴来表达正负序，因此耦合频率统一通过减去基波频率来计算；通过相位位移叠加提取相序表达的信号。

myBodePlot.vi 显示扫频结果。 myCSVWrite.vi 将扫频结果存入CSV表格内。第1列为频率，往后，偶数列为幅值（未取dB的绝对值），奇数列为相位（180角度制）。具体模式下的响应顺序可在程序界面里确认。
