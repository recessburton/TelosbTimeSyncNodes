Author:YTC 
Mail:recessburton@gmail.com
Created Time: 2015.4.27

Description：
	Telosb 节点时钟同步模块封装。使用TelosbTimeSyncNodes为接口名。
	使用Sync()来启动节点间的时钟同步过程。节点间建立时间同步树，每5s发送一次同步包，每次同步触发SyncDone(uint32_t)时间，
	携带了同步获得的真实时间。如果同步失败，则Leds2闪灯。
	使用范例见example.
	
Known Bugs: 
		none.

