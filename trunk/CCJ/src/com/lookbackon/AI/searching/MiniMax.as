package com.lookbackon.AI.searching
{
	//--------------------------------------------------------------------------
	//
	//  Imports
	//
	//--------------------------------------------------------------------------
	import com.lookbackon.ccj.CcjConstants;
	import com.lookbackon.ccj.managers.GameManager;
	import com.lookbackon.ccj.model.ChessPiecesModel;
	import com.lookbackon.ccj.model.vos.PositionVO;
	import com.lookbackon.ccj.utils.LogUtil;
	import com.vizsage.as3mathlib.math.alg.Point;
	
	import mx.logging.ILogger;

	/**
	 * <b>MiniMax.as class.</b></br>
	 * 
	 * The idea here is that both players will try all possible moves in their position and then choose, respectively,
	 * the one which makes the value of the position as high as possible (the white side) or as low as possible (black).</br> 
	 * I have called one color 'WHITE', this is the side which tries to maximize the value, 
	 * and the other side tries to minimize the value. </br>
	 * You can see that player 'WHITE' starts with a value of -INFINITY, 
	 * and then goes on to try every move, 
	 * and always maximizes the best value so far with the value of the current move.</br>
	 * The other player, BLACK, will start out with +INFINITY and try to reduce this value. </br>
	 * Note how I use a function checkwin(p)  to detect a winning position <b>during</b> the tree search. </br>
	 * If you only check winning conditions at the end of your variation, 
	 * you can generate variations where both sides have won,
	 *  for instance in connect 4 you could generate a variation where first one side connects four, 
	 * and later the other side does. </br>
	 * Also, note the use of handlenomove(p)  - that's what you need to do when you have no legal move left. 
	 * In checkers you will lose, in chess it's a draw.</br>
	 * If the (average) number of possible moves at each node is N, 
	 * you see that you have to search N^D positions to search to depth D. N is called the branching factor. </br>
	 * Typical branching factors are 40 for chess, 7 for connect 4, 10 for checkers and 300 for go. </br>
	 * The larger the branching factor is, the less far you will be able to search with this technique. </br>
	 * This is the main reason that a game like connect 4 has been solved, 
	 * that checkers programs are better than humans, 
	 * chess programs are very strong already, 
	 * but go programs are still playing very poorly - always when compared to humans.  </br> 
	 * @see http://www.fierz.ch/strategy1.htm	
	 * @author Knight.zhou
	 * @langVersion 3.0
	 * @playerVersion 9.0
	 * Created Jul 9, 2010 4:12:01 PM
	 */   	 
	public class MiniMax extends SearchingBase
	{		
		//--------------------------------------------------------------------------
		//
		//  Variables
		//
		//--------------------------------------------------------------------------
		//----------------------------------
		//  CONSTANTS
		//----------------------------------
		private static const LOG:ILogger = LogUtil.getLogger(MiniMax);
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
		public function MiniMax(gamePosition:PositionVO,depth:int)
		{
			//
			this.depth = depth;
			//
			super(gamePosition);
		}     	
		//--------------------------------------------------------------------------
		//
		//  Public methods
		//
		//--------------------------------------------------------------------------
		override public function execute():void
		{
			//
			miniMax(gamePosition,depth);
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
		private function miniMax(gamePosition:PositionVO,depth:int):int
		{
			LOG.debug("depth:{0}",depth.toString());
			if(willNoneMove(gamePosition))
			{
				if(gamePosition.color==CcjConstants.FLAG_RED)
				{
					return int.MIN_VALUE;
				}else
				{
					return int.MAX_VALUE;
				}
			}
			if(depth==0)
			{
				return doEvaluation(bestMove,gamePosition);
			}
			if(gamePosition.color==CcjConstants.FLAG_RED)
			{
				bestValue = int.MIN_VALUE;
			}else
			{
				bestValue = int.MAX_VALUE;
			}
			if(gamePosition.color==CcjConstants.FLAG_RED)
			{
				orderingMoves = generateMoves(ChessPiecesModel.getInstance().reds);
				//pluge to death.
				if(0==orderingMoves.length)
				{
					GameManager.computerWin();
				}
			}else
			{
				orderingMoves = generateMoves(ChessPiecesModel.getInstance().blues);
				//pluge to death.
				if(0==orderingMoves.length)
				{
					GameManager.humanWin();
				}
			}
			LOG.debug("orderingMoves.length:{0}",orderingMoves.length);
			//Notice:exceed 60s limit,just 35 steps.
			for(var i:int=0;i<orderingMoves.length/2;i++)
			{
				//
				LOG.debug("current orderingMoves.step:{0}",i.toString());
				tempMove = orderingMoves[i];
				//
				makeMove(tempMove);
				tempValue = miniMax(ChessPiecesModel.getInstance().gamePosition,depth-1);
				unmakeMove(tempMove);
				//
				if(gamePosition.color==CcjConstants.FLAG_RED)
				{
					bestValue = Math.max(tempValue,bestValue);
					//
					if(tempValue>=bestValue)
					{
						bestMove = tempMove; 
					}
					LOG.debug("RED,worstMove:{0}",bestMove.dump());
				}else
				{
					bestValue = Math.min(tempValue,bestValue);
					//
					if(bestValue>=tempValue)
					{
						bestMove = tempMove; 
					}
					LOG.debug("BLUE,bestMove:{0}",bestMove.dump());
				}
			}
			return bestValue;
		}
	}
	
}