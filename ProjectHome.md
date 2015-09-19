
---

------------------------------“The question of whether computers can think is like the question of whether submarines can swim."-------------------------------------------------
----------------------------------------------------------------------------------------------Edsger W. Dijkstra(1930-2002)-------------------------------------------------------------------------------------

---


**This project describes the current state of computer Chinese chess (Xiang Qi).** <p>
For two reasons,Chinese-chess programming is important in the field of Artificial Intelligence.<p>
First, Chinese chess is one of the most popular and oldest board games worldwide; <p>
currently the strength of a Chinesechess program can be compared to that of human players. <p>
Second, the complexity of Chinese chess is between that of chess and Go. <p>
We assume that after DEEP BLUE’s victory over Kasparov in 1997,<p>
Chinese chess will be the next popular chess-like board game at which a program will defeat a human top player.<p>
In the article we introduce some techniques for developing Chinese-chess programs.<p>
In the Computer Olympiads of 2001 and 2002,<p>
the programs ELP and SHIGA were the top Chinese-chess programs. <p>
Although these two programs roughly have the same strength, <p>
they were developed following completely different techniques, as described in the article.<p> The improvements of the best Chinese-chess programs over the last twenty years suggest that a human top player will be defeated before 2010.<p>

<strong>1. INTRODUCTION</strong>

Chinese chess (Xiang Qi) is one of the most popular board games worldwide,<p>
being played by approximately one billion people in China, Taiwan,and wherever Chinese have settled. <p>
Having a long history, the modern form of Chinese chess was popular during the Southern Song Dynasty (1127–1279 A.D.). <p>
The earliest record of a Chinese-chess game and a book on the theory of the game originates from that time.<p>

概述<br>
<br>
象棋是中国传统的二人对弈棋类游戏。其他类似的有国际象棋及日本将棋。为与国际象棋等区别，又称中国象棋，主要流行于华人及亚太地区。是首届世界智力运动会正式比赛项目。<br>
<br>
棋盘<br>
<a href='http://chinesechessjam.googlecode.com/files/cb.JPG'>http://chinesechessjam.googlecode.com/files/cb.JPG</a>
象棋的棋盘由九条直线和十条横线相交而成。棋子放在各条线的相交点上，并在线上移动。棋盘中间的一行没有画上直线，称为“河界”，通常标上楚河汉界字样，源自楚汉相争时的鸿沟，或标上“观棋不语真君子，起手无回大丈夫”等字样。<br>
<br>
现行的中式记录方法是：九条直线，红方从右到左用汉字“一”至“九”表示，黑方在自己的那一面从右到左用数字“1”至“9”表示。也就是说，红方的直线“一”就是黑方的直线“9”，以此类推。第四条直线（或第 6 条直线）和第六条直线（或第 4 条直线）称为“两肋”、“两肋线”，简称“肋”。棋盘上，划有斜交叉线而构成“米”字形方格的地方，双方各有一块，称为“九宫格”，简称“九宫”，是将/ 帅和士/仕活动的区域。<br>
<br>
棋子<br>
<br>
棋子的颜色分红和黑(或蓝、绿)，双方各有 16 只棋子：<br>
<br>
分别是一只将( 或帅 )、二只士( 或仕 )、二只象( 或相 )、二只车( 或伡 )、二只马( 或傌 )、二只砲( 或炮 )、五只卒( 或兵 )。<br>
<br>
<br>
<h1>IMPORTANT</h1>

SOURCE CODE MOVED TO GITHUB: <a href='https://github.com/yangboz/godpaper'>https://github.com/yangboz/godpaper</a>

//<br>
<wiki:gadget url="http://www.ohloh.net/p/487276/widgets/project_users.xml?style=blue" height="100" border="0"/><br>
<wiki:gadget url="http://www.ohloh.net/p/487276/widgets/project_factoids.xml" height="180" width="400" border="0"/><br>
<wiki:gadget url="http://www.ohloh.net/p/487276/widgets/project_basic_stats.xml" height="220" border="1"/><br>
<wiki:gadget url="http://www.ohloh.net/p/487276/widgets/project_cocomo.xml" height="240" width="400" border="0"/>