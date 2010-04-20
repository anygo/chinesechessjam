package com.lookbackon.ds
{
	/**
	 * 
	 * @author Knight.zhou
	 * @see http://chess.dubmun.com/bitboard.html
	 */	
	public interface IBitBoard
	{
		function and(value:BitBoard):BitBoard;
		function or(value:BitBoard):BitBoard;
		function xor(value:BitBoard):BitBoard;
		function not():BitBoard;
		//rotate
		function rotate90():BitBoard;
		function rotate45():BitBoard;
		//reverse
		function reverse():BitBoard;
	}
}