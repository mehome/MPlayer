package com.hlet.btn
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	
	import mx.core.BitmapAsset;

	public dynamic class InnerVideoPlayButton extends InnerButton
	{
		[Embed(source="../images/palybutton1.png")]  
		[Bindable]    
		private var en:Class;  
		
		[Embed(source="../images/palybutton2.png")]  
		[Bindable]
		private var over:Class;
		
		private var img:Bitmap = new Bitmap();
		
		public function InnerVideoPlayButton()
		{
			var data:BitmapData = BitmapAsset(new en()).bitmapData;
			img.bitmapData = data;
			//img.y = 5;
			addChild(img);
			super();
		}
		public override function switchFrame(index:int):void{
			if(index == 1){
				img.bitmapData = BitmapAsset(new en()).bitmapData;
			}else if(index == 2){
				img.bitmapData = BitmapAsset(new over()).bitmapData;
			}
		}
	}
}