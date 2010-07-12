package com.lookbackon.ccj.managers
{
	import com.lookbackon.AI.searching.ISearching;
	import com.lookbackon.AI.searching.MinMax;
	import com.lookbackon.AI.searching.MiniMax;
	import com.lookbackon.AI.searching.RandomWalk;
	import com.lookbackon.AI.searching.SearchingBase;
	import com.lookbackon.ccj.CcjConstants;
	import com.lookbackon.ccj.model.ChessPiecesModel;
	import com.lookbackon.ccj.model.HistoryTableModel;
	import com.lookbackon.ccj.model.vos.ConductVO;
	import com.lookbackon.ccj.utils.LogUtil;
	import com.lookbackon.ccj.utils.MathUtil;
	import com.lookbackon.ccj.view.components.ChessPiece;
	import com.lookbackon.ccj.view.components.IndicatoryProgressBar;
	
	import de.polygonal.ds.Array2;
	
	import flash.display.DisplayObject;
	import flash.geom.Point;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.core.Application;
	import mx.core.FlexGlobals;
	import mx.core.IFlexDisplayObject;
	import mx.logging.ILogger;
	import mx.managers.CursorManager;

	/**
	 * A player manager class to maintain turn-based game.
	 * 
	 * @author Knight.zhou
	 * 
	 */	
	public class GameManager
	{
		//--------------------------------------------------------------------------
		//
		//  Variables
		//
		//--------------------------------------------------------------------------
		private static var _turnFlag:int=CcjConstants.FLAG_BLUE;
//		private static var iThinkingProgressBar:IFlexDisplayObject;
		private static var gameAI:ISearching;
		[Bindable]public static var indicatorReadOut:Boolean = false;
		[Bindable]public static var indication:String = INDICATION_THINKING;
		//----------------------------------
		//  CONSTANTS
		//----------------------------------
		private static const LOG:ILogger = LogUtil.getLogger(GameManager);
		public static const INDICATION_THINKING:String 	= "Thinking..";
		public static const INDICATION_CHECK:String 	= "Eschequier";
		//--------------------------------------------------------------------------
		//
		//  Properties
		//
		//--------------------------------------------------------------------------
		//----------------------------------
		//  turnFlag(read-only)
		//----------------------------------
		public static function get turnFlag():int
		{
			return _turnFlag;
		}
		//--------------------------------------------------------------------------
		//
		//  Methods
		//
		//--------------------------------------------------------------------------
		//----------------------------------
		//  startGame
		//----------------------------------
		public static function startGame():void
		{
			//TODO:
			//logic condition who's turn now at first.
//			isComputerTurnNow();
			isHumanTurnNow();
		}
		//----------------------------------
		//  computerWin
		//----------------------------------
		public static function computerWin():void
		{
			//TODO:
			Alert.show("COMPUTER WIN!!!");
		}
		//----------------------------------
		//  humanWin
		//----------------------------------
		public static function humanWin():void
		{
			//TODO:
			Alert.show("HUMAN WIN!!!");
		}
		//----------------------------------
		//  isComputerTurnNow
		//----------------------------------
		public static function isComputerTurnNow():void
		{
			//TODO:
			//hold turn flag
			_turnFlag = CcjConstants.FLAG_BLUE;
			//about view
			CursorManager.setBusyCursor();
			//
			GameManager.indicatorReadOut = true;
			//about data
			//TODO:switch any searching class to test.
			gameAI = new RandomWalk(ChessPiecesModel.getInstance().gamePosition);
//			gameAI = new MinMax(ChessPiecesModel.getInstance().gamePosition);
//			gameAI = new MiniMax(ChessPiecesModel.getInstance().gamePosition,1);
		}
		//----------------------------------
		//  isHumanTurnNow
		//----------------------------------
		public static function isHumanTurnNow():void
		{
			//TODO:
			//hold turn flag
			_turnFlag = CcjConstants.FLAG_RED;
			//about view
			CursorManager.removeBusyCursor();
			//
			GameManager.indicatorReadOut = false;
			//about data
			
		}
		
	}
}