package com.lookbackon.ccj.business.fsm
{
	import com.lookbackon.AI.finiteStateMachine.Agent;
	import com.lookbackon.ccj.utils.LogUtil;
	
	import mx.core.IVisualElement;
	import mx.logging.ILogger;
	
	/**
	 * 
	 * @author Knight.zhou
	 * 
	 */	
	public class ChessAgent extends Agent
	{
		//--------------------------------------------------------------------------
		//
		//  Variables
		//
		//--------------------------------------------------------------------------
		private static const LOG:ILogger = LogUtil.getLogger(ChessAgent);
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		/**
		 *  Constructor.
		 */
		public function ChessAgent(name:String, carrier:IVisualElement, traceTarget:IVisualElement=null)
		{
			//TODO: implement function
			super(name, carrier, traceTarget);
//			LOG.info("{0} say:Hello!",name);
		}
		//--------------------------------------------------------------------------
		//
		//  Properties
		//
		//--------------------------------------------------------------------------
		//--------------------------------------------------------------------------
		//
		//  Methods:
		//
		//--------------------------------------------------------------------------
	}
}