package com.lookbackon.ccj.business.fsm.states
{
	import com.lookbackon.ccj.business.fsm.ChessAgent;
	
	/**
	 * 
	 * @author Knight.zhou
	 * 
	 */	
	public class DefenseState extends StateBase
	{
		public function DefenseState(agent:ChessAgent,resource:*,description:String=null)
		{
			super(agent,resource,description);
		}
		
		override public function enter():void
		{
			//TODO: implement function
		}
		
		override public function exit():void
		{
			//TODO: implement function
		}
		
		override public function update(time:Number=0):void
		{
			//TODO: implement function
		}
	}
}