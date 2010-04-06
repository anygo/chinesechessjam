package com.lookbackon.ccj.model.vos.cvo
{
	import com.lookbackon.ccj.model.ChessPositionModelLocator;
	import com.lookbackon.ccj.utils.MathUtil;

	/**
	 * 
	 * @author Knight.zhou
	 * 
	 */	
	public class CannonVO extends ChessVO
	{
		/**
		 * @inheritDoc
		 */
		public function CannonVO(width:int, height:int, rowIndex:int, colIndex:int,flag:int=0)
		{
			//TODO: implement function
			super(width, height, rowIndex, colIndex, flag);
		}
		/**
		 * @inheritDoc
		 */
		override public function initialization(rowIndex:int, colIndex:int,flag:int=0) : void
		{
			// s - *
			// -
			// *
			//about occupies.
			for(var r:int=0;r<this.row;r++)
			{
				if(r!=rowIndex)
				{
					this.occupies.setBitt(r,colIndex,true);
				}
			}
			for(var c:int=0;c<this.row;c++)
			{
				if(c!=colIndex)
				{
					this.occupies.setBitt(rowIndex,c,true);
				}
			}
			//about legal moves.
			
			//about attacked captures.
		}
	}
}