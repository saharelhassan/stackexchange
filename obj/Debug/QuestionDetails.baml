   M S B A M L   `   `   `  ����Q  MStackoverflowQuestions, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:StackoverflowQuestionsStackoverflowQuestions  5   	   ,    &StackoverflowQuestions.QuestionDetails   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6local$clr-namespace:StackoverflowQuestions     5   	     � Title$  Question Details��5   	   $	��500��6"   $	��400��6/   ���#F0F8FF.��5	      ��  �� Padding$ 10q�6   ._�5
   
   �� .+�5      �� $��Title��6   $
��Bold"�6%   �� 5      -   5         ��Name$ 	TitleText��5         textBoxStyle#��[  6)    �� TextWrapping$
 Wrap=�6O   �� 5      $��Owner��6   $
��Bold"�6%   $��0 10 0 0q�67   �� 5      -   5        $ 	OwnerText��5      #��[  6)   �� 5      $
��Link��6   $
��Bold"�6$   $��0 10 0 0q�66   �� 5      �� 5      -   5         ��Name$ 	LinkHyper��5      .�6[   .�5      �� -   5         ��Name$ LinkText��5       $��	Underline{�62   5      5      5      � 5       � ColumnDefinitions 5      �� 5       $��* �6'   �� 5!      $��* �6'   .+�5%      �� $��0��6   $��	0 10 10 0q�6-   .+�5&      �� $��Creation Date��6    $
��Bold"�65   �� 5'      -   5        $ CreationDateText��5'      #��[  68   5(      �� 5+      $��1��6   $��0 10 0 0q�6-   .+�5,      �� $��Last Activity Date��6    $
��Bold"�6:   �� 5-      -   5        $ LastActivityDateText��5-      #��[  6<   5.      5/      �� 52      $
��Tags��6   $
��Bold"�6$   $��0 10 0 0q�66   �� 53      -   5        $ TagsText��53      #��[  6(   � 56       57      �� 58      $��* �6'   �� 59      $��* �6'   �� 5:      $��* �6'   .+�5>      �� $��0��6   $��	0 10 10 0q�6-   .+�5?      �� $��Score��6    $
��Bold"�6-   �� 5@      -   5        $ 	ScoreText��5@      #��[  61   5A      �� 5D      $��1��6   $��	0 10 10 0q�6-   .+�5E      �� $��
View Count��6    $
��Bold"�62   �� 5F      -	   5        $ ViewCountText��5F      #��[  65   5G      �� 5J      $��2��6   $��0 10 0 0q�6-   .+�5K      �� $��Answer Count��6    $
��Bold"�64   �� 5L      -
   5        $ AnswerCountText��5L      #��[  67   5M      5N      �� 5Q      -   5         ��Name$ IsAnsweredCheckBox��5Q      $��Is Answered��63   $��0 10 0 0q�6I   {�.  $
��Bold"�6m   5S      5T      5U      