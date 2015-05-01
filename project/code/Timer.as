package code{
	
	import flash.display.MovieClip;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	
	public class Timer extends MovieClip{
		
		var nCount:Number = 10;
		var myTimer:Timer = new Timer(1000, nCount);
		
		public function Timer() {
			timer_txt.text = nCount.toString();
			myTimer.start();
			myTimer.addEventListener(TimerEvent.TIMER, countdown);
		}	
		
		

		function countdown(e:TimerEvent):void
		{
			nCount--;
			timer_txt.text = nCount.toString();
		}
	}	
}
