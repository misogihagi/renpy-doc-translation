Þ          Ì      |      ð     ñ  ÷   t  ý   l  /   j  0     ,   Ë  -   ø  )   &  =   P  ¦     :   5     p       ¿     \   ^  º   »     v  Ü   	     à	  
   ô	  ¢   ÿ	  l  ¢
  k     <  {  %  ¸  $   Þ  $     $   (  $   M  3   r  '   ¦  Ø   Î  '   §     Ï     ë  ­     B   ²  ä   õ     Ú  ð   b     S     s  Õ                 
              	                                                                     A creator can define a transform using the :ref:`animation and transformation language <atl>`, or the :class:`Transform` function. A displayable always has a transform associated with it. If no transform is given, the prior transform is used. When the transform is changed, undefined values are taken from the prior transform, or from ``default`` if there is no prior transform. A transform can be applied to a displayable to yield another displayable. The built-in transforms are used to control where an object is placed on the screen, while user-defined transforms can cause more complex effects, like motion, zoom, and rotation. Aligns to the bottom-left corner of the screen. Aligns to the bottom-right corner of the screen. Aligns to the top-left corner of the screen. Aligns to the top-right corner of the screen. Centers both horizontally and vertically. Centers horizontally, and aligns to the bottom of the screen. Centers horizontally, and aligns to the bottom of the screen. This can be redefined to change the default placement of images shown with the show or scene statements. Centers horizontally, and aligns to the top of the screen. Creator-Defined Transforms Default Transforms Multiple transforms can be applied by separating them with commas. These transforms are applied from left-to-right, with the rightmost transform taking precedence in the case of conflicts. :: Places the displayable off the left side of the screen, aligned to the bottom of the screen. Ren'Py ships with a number of transforms defined by default. These transforms position things on the screen. Here's a depiction of where each default transform will position an image. :: Resets the transform. Places the displayable in the top-left corner of the screen, and also eliminates any zoom, rotation, or other effects. The offscreenleft and offscreenright transforms position images off the screen. These transforms can be used to move things off the screen (remember to hide them afterwards, to ensure that they do not consume resources). The transforms are: Transforms Transforms can be applied by giving the at clause to the scene and show statements. The following applies the "right" transform to the eileen happy displayable.:: Project-Id-Version: renpy-doc
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-08-04 18:15+0900
PO-Revision-Date: 2017-08-06 19:44+0900
Last-Translator: 
Language-Team: Japanese <ja@li.org>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2015-03-29 05:43+0000
X-Generator: Poedit 1.5.7
 éçºèã¯ã :ref:`ATL <atl>` , ã :class:`Transform`  é¢æ°ãä½¿ã£ã¦å¤æãå®ç¾©ã§ãã¾ãã displayable ã«ã¯ãå¿ãå¤æãé¢ããã¾ããå¤æãä¸ããããªãã¨ãããã¾ã§ä½¿ã£ã¦ããå¤æãå¼ãç¶ãã¾ããå¤æãå¤ããããã¨ãå®ç¾©ããã¦ããªãå¤ã¯ä½¿ã£ã¦ããå¤æãå¼ãç¶ããä½¿ã£ã¦ããå¤æããªããã° ``default`` ããåããã¾ãã å¤æã displayable ã«é©ç¨ããã¨å¥ã® displayable ãå¾ããã¾ããçµã¿è¾¼ã¿ã®å¤æãä½¿ãã¨ç»é¢ä¸ã®ãªãã¸ã§ã¯ãã®ä½ç½®åº§æ¨ãå¤æåºæ¥ã¾ããã¦ã¼ã¶ã¼å®ç¾©ã®å¤æã§ã¯ç§»åããºã¼ã ãåè»¢ãªã©ããè¤éãªå¹æãä¸ãããã¾ãã ç»é¢ã®å·¦ä¸ã«éç½®ãã¾ãã ç»é¢ã®å³ä¸ã«éç½®ãã¾ãã ç»é¢ã®å·¦ä¸ã«éç½®ãã¾ãã ç»é¢ã®å³ä¸ã«éç½®ãã¾ãã æ°´å¹³ã«ãåç´ã«ãä¸­å¤®ã«éç½®ãã¾ãã ç»é¢ã®ä¸­å¤®ä¸ã«éç½®ãã¾ãã ç»é¢ã®ä¸­å¤®ä¸ã«éç½®ãã¾ããããã¯ãshow ã¹ãã¼ãã¡ã³ãã scene ã¹ãã¼ãã¡ã³ãã«ãã£ã¦è¡¨ç¤ºãããç»åã®ä½ç½®ã®ããã©ã«ããå¤æ´ãããã¨ã§åå®ç¾©ã§ãã¾ãã ç»é¢ã®ä¸­å¤®ä¸ã«éç½®ãã¾ãã ã¦ã¼ã¶ã¼å®ç¾©ã®å¤æ ããã©ã«ãã®å¤æ è¤æ°ã®å¤æãã«ã³ãã§åºåã£ã¦é©ç¨ã§ãã¾ãããã®å¤æã¯å·¦ããå³ã¸é ã«é©ç¨ãããç«¶åãããæãå³ã®ãã®ãåªåããã¾ãã:: ç»é¢ãããå·¦ã«éç½®ããç»é¢ä¸é¨ã«åããã¾ãã Ren'Py ã§ã¯ãçµã¿è¾¼ã¿ã®å¤æãããã¤ãå®ç¾©ãã¦ãã¾ãããããã®å¤æã¯ãç»åãç»é¢ä¸ã«éç½®ãã¾ããçµã¿è¾¼ã¿ã®åå¤æãã©ãã«ç»åãéç½®ããããããã«ç¤ºãã¾ãã:: å¤æããªã»ãããã¾ããdisplayable ãç»é¢ã®å·¦ä¸ã«éç½®ãããºã¼ã ãåè»¢ãã®ä»ã®å¹æãæ¶å»ãã¾ãã offscreenleft ããã³ offscreenright å¤æã¯ãç»é¢å¤ã«ç»åãéç½®ãã¾ãããã®å¤æã¯ãç»é¢å¤ã«ç»åãåããã®ã«ä½¿ãã¾ã (ãªã½ã¼ã¹ãæµªè²»ããªãããã«ãå¾ã§å¿ã hide ãã¦ãã ãã)ã å¤æã¯æ¬¡ã®ã¨ããã§ã: å¤æ (Transform) scene ã¹ãã¼ãã¡ã³ãã show ã¹ãã¼ãã¡ã³ãã« at ç¯ãä¸ãããã¨ã§å¤æãé©ç¨ã§ãã¾ããä»¥ä¸ã®ã³ã¼ãã¯ãeileen happy displayable ã« ã right ãå¤æãé©ç¨ãã¾ãã:: 