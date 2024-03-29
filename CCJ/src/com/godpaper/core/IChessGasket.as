package com.godpaper.core
{
	import com.godpaper.model.vos.ConductVO;

	import mx.core.IVisualElement;

	/**
	 * The interface of ChessGasket.
	 *
	 * @author Knight.zhou
	 * @history 2011-2-18 current conductVO property added.
	 *
	 */	
	public interface IChessGasket extends IVisualElement,IPosition
	{
		function get chessPiece():IChessPiece;
		function set chessPiece(value:IChessPiece):void;

		function get conductVO():ConductVO;
	}
}

