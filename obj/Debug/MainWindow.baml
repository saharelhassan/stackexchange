   M S B A M L   `   `   `  ����Q  MStackoverflowQuestions, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:StackoverflowQuestionsStackoverflowQuestions  5   	   '    !StackoverflowQuestions.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:StackoverflowQuestions     5   	     � Title$  Stackoverflow Questions��5   	   
�������.��5	      ��  �� Padding$ 10q�6   ._�5
   
   �� $��0,0,0,0q�6   .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ dgQuestions��5         RowBackground �#F0F8FF   columnHeaderStyle   ColumnHeaderStyle# [  6D      AutoGenerateColumns .  $	��Top=�6�      
IsReadOnly .    AreRowDetailsFrozen . $��Stretch=�6  $	��600��6*  $
��1350��67     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn	   Header$	 Title��6)   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 68   �� *title+  5      $
	 Link��6)   
 67   �� *link+5      � 5      .+�5      �� -   5         ��Name$ 
btnRefresh��5      $��Refresh��6F   $
��Left=�6X   $��43��6s   $��	10,10,0,0q�6   $��Bottom=�6�   $	��111��6�   $
��Bold"�6�   5      5      5      5      