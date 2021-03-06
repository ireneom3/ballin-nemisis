﻿package code
{
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	
	public class moveButton extends MovieClip
	{
		//*************************
		// Properties:
		
		public var player_x:Number = 0;
		public var player_y:Number = 0;
		public var move_cancel:Boolean = false;
		
		// Animation
		public var speed:Number = 7;
		
		//*************************
		// Constructor:
		
		
		public function moveButton()
		{
			player_x = player.x;
			player_y = player.y;
			move_area.visible = false;
			
			trace("Player position : ( " + player_x + "," + player_y + " )\n");
			
			// Respond to mouse events
			move_button.addEventListener(MouseEvent.CLICK,moveBtnClick,false,0,true);
		
			// Capture clicks on the stage
			stage.addEventListener(MouseEvent.MOUSE_DOWN,movePlayer);
	
			// Update screen every frame
			//addEventListener(Event.ENTER_FRAME,enterFrameHandler);
		}
		
		protected function moveBtnClick(event:MouseEvent):void
		{
			if( event.target == move_button && move_cancel == false ){
				move_area.visible = true;
				move_cancel = true;
			}else{
				move_area.visible = false;
				move_cancel = false;
			}
		}
		
		protected function movePlayer(event:MouseEvent):void
		{
			
			if(event.target == move_area){
				player_x = root.mouseX;
				player_y = root.mouseY;
				
				player.x = player_x;
				player.y = player_y;
				
				move_area.x = player_x;
				move_area.y = player_y;
				
				move_area.visible = false;
				move_cancel = false;
			}else{
				trace("You can only move to areas highlighted");
			}
		}
		
		
	}
}