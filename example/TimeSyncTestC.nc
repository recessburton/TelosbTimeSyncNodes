module TimeSyncTestC{
	uses interface Boot;
	uses interface Leds;
	uses interface TelosbTimeSyncNodes as TimeSync;

}
implementation{

	uint32_t CaptureTime = 0;	


	event void Boot.booted() {
		call TimeSync.Sync();
	}

	event void TimeSync.SyncDone(uint32_t RealTime){
			CaptureTime = RealTime;
			call Leds.led1Toggle();	
		}
	
}