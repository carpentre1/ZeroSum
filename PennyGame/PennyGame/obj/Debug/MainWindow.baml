   M S B A M L   `   `   `  ����D  @PennyGame, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:PennyGame	PennyGame  5   	       PennyGame.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:PennyGame     5   	     � Title$  
MainWindow��5   	   $��442.157��6   $��934.804��6-   .��5	      � .+�5
      �� -   5         ��Name$ ButtonReveal��5
      $��Reveal coins��6!   $
��Left=�68   $��193,234,0,0q�6S   $	��Top=�6h   $	��125��6�   $��41��6�   �� 5      -   5         ��Name$ LabelPlayerA��5   
   $��Player A��6    $
��Left=�63   $��	57,38,0,0q�6N   $	��Top=�6a   $��18(�6y   �� 5      -   5        $ LabelPlayerB��5   
   $��Player B��6    $
��Left=�63   $��
316,38,0,0q�6N   $	��Top=�6b   $��18(�6z    J� RenderTransformOrigin$ 0.372,1.141&�6�   �� 5      -   5        $ LabelPlayerAResult��5   
   $��Coin was: heads��6&   $
��Left=�6@   $��
57,239,0,0q�6[   $	��Top=�6o   $	��138��6�   $��16(�6�   �� 5      -   5        $ LabelPlayerBResult��5   
   $��Coin was: heads��6&   $
��Left=�6@   $��323,239,0,0q�6[   $	��Top=�6p   $	��129��6�   $��16(�6�   �� 5      -   5        $ LabelPlayerAAmount��5   
   $��Pennies: 10��6&   $
��Left=�6<   $��
57,109,0,0q�6W   $	��Top=�6k   $��16(�6�   �� 5      -   5        $ LabelPlayerBAmount��5   
   $��Pennies: 10��6&   $
��Left=�6<   $��316,109,0,0q�6W   $	��Top=�6l   $��16(�6�   �� 5      -   5        $ ButtonHeads��5      $��Set next penny to heads��6    $
��Left=�6B   $��
24,168,0,0q�6]   $	��Top=�6q   $	��162��6�   $��27��6�   �� 5      -	   5        $ ButtonTails��5      $��Set next penny to tails��6    $
��Left=�6B   $��
24,202,0,0q�6]   $	��Top=�6q   $	��162��6�   $��27��6�   �� 5      -
   5        $ LabelTotalResult��5   
   $�� ��6$   $
��Left=�6/   $��
10,275,0,0q�6J   $	��Top=�6^   $	��497��6v   $��18(�6�   �� 5      
���   �$��3q�6   $
��Left=�63   $	��224��6N   $��
255,10,0,0q�6[   $	��Top=�6o   $��5��6�   �� 5      -   5        $ LabelPlayerAGained��5   
   $��	Change: 0��6&   $
��Left=�6:   $��
57,132,0,0q�6U   $	��Top=�6i   $��16(�6�   �� 5      -   5        $ LabelPlayerBGained��5   
   $��	Change: 0��6&   $
��Left=�6:   $��316,132,0,0q�6U   $	��Top=�6j   $��16(�6�   �� 5      $
��Left=�6   $	��344��6*   $��
501,38,0,0q�67   $	��Top=�6K   $	��426��6c   .@�5      �� -   5         ��Name$ TabHead1��5      $��
Game Rules��6   .��5      � -   5         �Name$
 Grid��5      ���	#FFE5E5E5.+�5      �� -   5         ��Name$ Rules1��5      $
��Left=�6!   $
��Wrap=�6<   $)��#Both players start with 10 pennies.��6P   $	��Top=�6{   $��46��6�   $	��400��6�   $��	10,10,0,0q�6�   $��16(�6�   �� 5      -   5        $ Rules2��5      $
��Left=�6!   $
��Wrap=�6<   ${��uEach time you click "Reveal coins", you (player A) and the AI opponent will compare the sides of your selected coins.��6P   $	��Top=�6�   $��67��6�   $	��400��6�   $��	10,56,0,0q�6  $��16(�6  �� 5      -   5        $ Rules3��5      $
��Left=�6!   $
��Wrap=�6<   $_��YIf both coins are are same side up, you get your penny back and you get player B's penny.��6P   $	��Top=�6�   $��67��6�   $	��400��6�   $��
10,133,0,0q�6�   $��16(�6�   �� 5      -   5        $ Rules4��5      $
��Left=�6!   $
��Wrap=�6<   $g��aIf one coin is heads and the other is tails, player B gets his penny back and he gets your penny.��6P   $	��Top=�6�   $��75��6�   $	��400��6�   $��
10,205,0,0q�6�   $��16(�6�   5      5      �� 5       -   5        $ TabHead2��5       $��Zero-Sum��6   .��5!      � ���	#FFE5E5E5.+�5"      �� -   5        $ TabText2��5"      $
��Left=�6#   $��	10,10,0,0q�6>   $
��Wrap=�6Q   $f��`A zero-sum game is one where the gains and losses of each participant balance out to equal zero.��6e   $	��Top=�6�   $��82��6�   $	��400��6�   $��16(�6�   �� 5#      -   5        $ TabText2_Copy��5#      $
��Left=�6(   $��	10,97,0,0q�6C   $
��Wrap=�6V   $����This can be seen in this penny game by monitoring the "Change" values of both participants. Add the two change values together, and they should always equal zero.��6j   $	��Top=�6  $	��119��66  $	��400��6C  $��16(�6O  �� 5$      -   5        $ TabText2_Copy1��5$      $
��Left=�6)   $��
10,221,0,0q�6D   $
��Wrap=�6X   $����If the items being gained and lost are different, it is not zero-sum. For example, trading 5 pencils for 5 pens is not zero-sum.��6l   $	��Top=�6�   $��85��6  $	��400��6  $��16(�6$  5%      5&      �� 5'      -   5        $ TabHead3��5'      $��Test Knowledge��6   $��
-2,-2,-2,0q�67   .��5(      � ���	#FFE5E5E5.+�5)      �� -   5        $ 	Question1��5)      $
��Left=�6$   $��	10,10,0,0q�6?   $
��Wrap=�6R   $K��E1. Can a game be zero-sum if one player can end up with zero pennies?��6f   $	��Top=�6�   $��39��6�   $	��400��6�   $��14(�6�   �� 5*      -   5        $ Answer1��5*      $
��Left=�6"   $��	10,49,0,0q�6=   $
��Wrap=�6P   $h��bYes. As long as all the pennies that player loses are given to other players, it's still zero sum.��6d   $	��Top=�6�   $��41��6�   $	��400��6�   $��14(�6�   �� 5+      -   5        $ Question1_Copy��5+      $
��Left=�6)   $��	10,95,0,0q�6D   $
��Wrap=�6W   $����2. If both players are awarded 1 extra penny by an outside source when both pennies are revealed to be tails, is it still a zero-sum game?��6k   $	��Top=�6�   $��54��6  $	��400��6!  $��14(�6-  �� 5,      -   5        $ Answer1_Copy��5,      $
��Left=�6'   $��
10,154,0,0q�6B   $
��Wrap=�6V   $T��NNo.  The aggregate gains and losses of the players would no longer equal zero.��6j   $	��Top=�6�   $��39��6�   $	��400��6�   $��14(�6�   �� 5-      -   5        $ Hider1��5-      $��Reveal answer��6   $
��Left=�66   $��	10,49,0,0q�6Q   $	��Top=�6d   $	��400��6|   $��41��6�   �� 5.      -   5        $ Hider2��5.      $��Reveal answer��6   $
��Left=�66   $��
10,154,0,0q�6Q   $	��Top=�6e   $	��400��6}   $��39��6�   6�   �� 5/      -   5        $ ButtonAward��5/      $ ��Award both players 1 penny��6#   $
��Left=�6H   $��
10,198,0,0q�6c   $	��Top=�6w   $	��175��6�   $��25��6�   6�   �� 50      -   5        $ AwardA��50      $
��Left=�6!   $��191,193,0,0q�6<   $
��Wrap=�6Q   $��0��6e   $	��Top=�6n   $��29��6�   $��36��6�   $��20(�6�   $
��Bold"�6�   �� 51      -    5        $ AwardB��51      $
��Left=�6!   $��249,193,0,0q�6<   $
��Wrap=�6Q   $��0��6e   $	��Top=�6n   $��29��6�   $��34��6�   $��20(�6�   $
��Bold"�6�   �� 52      -!   5        $ 	AwardPlus��52      $
��Left=�6$   $��227,193,0,0q�6?   $
��Wrap=�6T   $��+��6h   $	��Top=�6q   $��29��6�   $��22��6�   $��20(�6�   �� 53      -"   5        $ AwardEquals��53      $
��Left=�6&   $��288,193,0,0q�6A   $
��Wrap=�6V   $��=��6j   $	��Top=�6s   $��29��6�   $��22��6�   $��20(�6�   �� 54      -#   5        $ 
AwardTotal��54      $
��Left=�6%   $��315,193,0,0q�6@   $
��Wrap=�6U   $��0��6i   $	��Top=�6r   $��29��6�   $��37��6�   $��20(�6�   $
��Bold"�6�   �� 55      -$   5        $ Question1_Copy1��55      $
��Left=�6*   $��
10,244,0,0q�6E   $
��Wrap=�6Y   $���}3. Try explaining zero-sum to someone nearby (or to an inanimate object). This is a great way to test your own understanding!��6m   $	��Top=�6�   $��62��6
  $	��400��6  $��14(�6"  56      57      58      5:      5;      