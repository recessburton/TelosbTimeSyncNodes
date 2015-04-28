configuration TimeSyncTestAppC{
}
implementation{
	
	components MainC;
	components LedsC;
	components TimeSyncTestC as App;
	components TelosbTimeSyncNodesC;

	App.TimeSync -> TelosbTimeSyncNodesC;

	App.Boot -> MainC;
	App.Leds -> LedsC;
	
}