package com.godpaper.utils
{
	//--------------------------------------------------------------------------
	//
	//  Imports
	//
	//--------------------------------------------------------------------------
	import com.lookbackon.ccj.model.vos.ConductVO;
	/**
	 * FilterUtil.as class.   	
	 * @author yangboz
	 * @langVersion 3.0
	 * @playerVersion 9.0
	 * Created Jan 7, 2011 5:09:27 PM
	 */   	 
	public class FilterUtil
	{		
		//--------------------------------------------------------------------------
		//
		//  Variables
		//
		//--------------------------------------------------------------------------
		
		//----------------------------------
		//  CONSTANTS
		//----------------------------------
		
		//--------------------------------------------------------------------------
		//
		//  Public properties
		//
		//-------------------------------------------------------------------------- 
		
		//--------------------------------------------------------------------------
		//
		//  Protected properties
		//
		//-------------------------------------------------------------------------- 
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		//--------------------------------------------------------------------------
		//
		//  Public methods
		//
		//--------------------------------------------------------------------------
		//
		public static function onCaptures(item:ConductVO, index:int, vector:Vector.<ConductVO>):Boolean
		{
			return Boolean(item.target.chessVO.captures.celled);
		}
		public static function onEatOff(item:ConductVO, index:int, vector:Vector.<ConductVO>):Boolean
		{
			return Boolean(item.eatOff!=null);
		}
		public static function onDefends(item:ConductVO, index:int, vector:Vector.<ConductVO>):Boolean
		{
			return Boolean(item.target.chessVO.defends.celled);
		}
		public static function onSuicide(item:ConductVO, index:int, vector:Vector.<ConductVO>):Boolean
		{
			return Boolean(item.target.omenVO.threat>=0);
		}
		//--------------------------------------------------------------------------
		//
		//  Protected methods
		//
		//--------------------------------------------------------------------------
		
		//--------------------------------------------------------------------------
		//
		//  Private methods
		//
		//--------------------------------------------------------------------------
	}
	
}