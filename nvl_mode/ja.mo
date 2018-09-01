Þ    )      d  ;   ¬        &    a   À  M   "  H   p  Ì   ¹  4     Ã   »               §  Í   ·  û     é   	  <   k
  í   ¨
  Õ        l     r  ¹        >  ³   Ù  ¢        0  ¯   ?     ï  )      Ý   *  &        /     ¶  §   O  A   ÷  4   9  '   n  ¢     Ï   9  $  	  3   .  µ   b  g     l    ´  í     ¢  X   %  d   ~  *  ã  W       f     r  '        §  é   ´      ï       t   !  ;  "  :  A#     |$     $  þ   $  Á   %  ù   X&  Á   R'  !   (  õ   6(     ,)  1   :)  /  l)  2   *  Ú   Ï*  ì   ª+  Ý   ,  G   u-  ;   ½-  6   ù-  ê   0.    /  h  *0  T   1    è1     3     )   '           %                                         #       	          "                 (                               $                
              !                       &                     A second look has the character's name embedded in with the text. Dialogue spoken by the character is enclosed in quotes. Note that here, the character's name is placed in the ''what_prefix'' parameter, along with the open quote. (The close quote is placed in the ''what_suffix'' parameter.) :: A third look dispenses with the character name entirely, while putting the dialogue in quotes. :: An NVL-mode narrator can also be used by including the following definition:: An example of using the window commands to show and hide the window is:: By default, menus are displayed in ADV-mode, taking up the full screen. There is also an alternate NVL-mode menu presentation, which displays the menus immediately after the current page of NVL-mode text. Changed to use NVL-mode, those declarations become:: Characters can be declared to use NVL-mode by adding a ``kind=nvl`` parameter to each of the Character declarations. For example, if we the character declarations from the Quickstart manual are:: Config Variables Customizing Characters Getting Started If not None, the maximum length of the the list of NVL dialogue. This can be set (often in conjuction with forcing the dialogue to have a fixed height) in order to emulate an infinite scrolling NVL window. If not None, this is the click-to-continue indicator position that is used for NVL mode characters that are at the end of a page. (That is, immediately followed by an nvl clear statement.) This replaces the ctc_position parameter of :func:`Character`. If not None, this is the click-to-continue indicator that is used for NVL mode characters that are at the end of a page. (That is, immediately followed by an nvl clear statement.) This replaces the ctc parameter of :func:`Character`. If true, NVL-mode rollback will occur a full page at a time. If we ran the game like this, the first few lines would display normally, but after a while, lines would begin displaying below the bottom of the screen. To break the script into pages, include an ``nvl clear`` statement after each page. In this tutorial, we will explain how to make an NVL-mode game using Ren'Py. This tutorial assumes that you are already familiar with the basics of Ren'Py, as explained in the :doc:`Quickstart manual<quickstart>`. Menus NVL-Mode Tutorial NVL-mode can be added to a Ren'Py script in two steps. The first is to declare the characters to use NVL-mode, and the second is to add ``nvl clear`` statements at the end of each page. NVL-mode characters can be customized to have several looks, hopefully allowing you to pick the one that is most appropriate to the game you are creating. Note that we have also added an NVL-mode declaration of ``narrator``. The ``narrator`` character is used to speak lines that do not have another character name associated with it. Of course, a completely uncustomized NVL-mode character can be used, if you want to take total control of what is shown. (This is often used for the narrator.) :: Paged Rollback Paged rollback causes Ren'Py to rollback one NVL-mode page at a time, rather than one block of text at a time.  It can be enabled by including the following in your script. :: Python Functions Script of The Question (NVL-mode Edition) Setting :var:`config.empty_window` to ``nvl_show_core`` will cause the NVL-mode window to be displayed during a transition. (The last two lines select the default transitions to be used for showing and hiding the window.) Showing and Hiding the NVL-mode Window Since the third look might make it hard to distinguish who's speaking, we can tint the dialogue using the ''what_color'' parameter. :: The NVL-mode window can be controlled with the standard ``window show`` and ``window hide`` statements. To enable this, add the following to your game:: The default look has a character's name to the left, and dialogue indented to the right of the name. The color of the name is controlled by the ''color'' parameter. :: The following config variables control nvl-related functionality. The following is an example script with pagination:: The layer the nvl screens are shown on. The menu will disappear after the choice has been made, so it usually makes sense to follow menus with an "nvl clear" or some sort of indication as to the choice. There are also explicit ``nvl show`` and ``nvl hide`` commands that show hide the NVL-mode window. These take an optional transition, and can be used in games that use a mix of NVL-mode and ADV-mode windows. There are two main styles of presentation used for visual novels. ADV-style games present dialogue and narration one line at a time, generally in a window at the bottom of the screen. NVL-style games present multiple lines on the screen at a time, in a window that takes up the entire screen. To access this alternate menu presentation, write:: While nvl-mode games generally have more text per paragraph, this example demonstrates a basic NVL-mode script. (Suitable for use in a kinetic novel that does not have transitions.) You can view the full script of the NVL-mode edition of ''The Question'' :ref:`here <thequestion_nvl>`. Project-Id-Version: renpy-doc
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-02-23 10:20+0900
PO-Revision-Date: 2018-02-23 10:32+0900
Last-Translator: 
Language-Team: Japanese <ja@li.org>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2015-03-28 05:30+0000
X-Generator: Poedit 1.5.7
 2ã¤ç®ã¯ãã­ã£ã©ã¯ã¿ã¼åããã­ã¹ãã«å«ã¾ãã¦ãã¾ããã­ã£ã©ã¯ã¿ã¼ãè©±ããå°è©ã¯ã¯ã©ã¼ãã¼ã·ã§ã³(")ã§å²ã¾ãã¦ãã¾ããããã§æ³¨æãããã¨ã¯ãã­ã£ã©ã¯ã¿ã¼åã what_prefix ãã©ã¡ã¼ã¿ã¼ã®ä¸­ã«éãã¯ã©ã¼ãã¼ã·ã§ã³(æ¬å¼§éã)ã¨ã¨ãã«ãããã¨ã§ãã(éãã¯ã©ã¼ãã¼ã·ã§ã³ã¯ what_suffix ãã©ã¡ã¼ã¿ã¼ã®ä¸­ã«ããã¾ãã) :: 3ã¤ç®ã¯ã­ã£ã©ã¯ã¿ã¼åãå®å¨ã«çãã¨ã¨ãã«ãå°è©ãã¯ã©ã¼ãã¼ã·ã§ã³ã®ä¸­ã«å¥ãã¦ãã¾ãã :: NVL ã¢ã¼ãã®ãã¬ã¼ã¿ã¼ã¯ä»¥ä¸ã®å®ç¾©ã«ãã£ã¦ãä½¿ç¨å¯è½ã§ãã :: window ã³ãã³ããç¨ãã¦ã¦ã£ã³ãã¦ã®è¡¨ç¤º/éè¡¨ç¤ºãè¡ãä¾ãæ¬¡ã«ç¤ºãã¾ã:: æ¢å®ã§ã¯ã¡ãã¥ã¼ã¯ ADV ã¢ã¼ãã®ä¸­ã§è¡¨ç¤ºãããç»é¢å¨ä½ãå ãã¾ããä¸æ¹ã® NVL ã¢ã¼ãã§ã¯ãNVL ã¢ã¼ãåãã®ã¡ãã¥ã¼ãè¡¨ç¤ºã§ãã¾ãããã®å ´åãã¡ãã¥ã¼ã¯ NVL ã¢ã¼ãã®ç¾å¨ã®ãã¼ã¸ã®ãã­ã¹ãã®ç´å¾ã«è¡¨ç¤ºããã¾ãã NVL ã¢ã¼ãã«å¤æ´ããã«ã¯ããããã®å®£è¨ãä»¥ä¸ã®ããã«ãã¾ã:: ã­ã£ã©ã¯ã¿ã¼ã NVL ã¢ã¼ãã§ä½¿ãããã«å®£è¨ããã«ã¯ã ``kind=nvl`` ãã©ã¡ã¼ã¿ã¼ãããããã®ã­ã£ã©ã¯ã¿ã¼å®£è¨ã«è¿½å ãã¾ããä¾ãã°ãã¯ã¤ãã¯ã¹ã¿ã¼ãããã¥ã¢ã«ã®ã­ã£ã©ã¯ã¿ã¼å®£è¨ãå¼ç¨ããã¨:: è¨­å®å¤æ° ã­ã£ã©ã¯ã¿ã¼ã®ã«ã¹ã¿ãã¤ãº ã¯ããã« None ããNVLãã¤ã¢ã­ã°ãªã¹ãã®æå¤§é·ãã§ãããããè¨­å®ãã¦ç¡éã«ã¹ã¯ã­ã¼ã«ããNVL ã¦ã£ã³ãã¦ãåç¾åºæ¥ã¾ã(ãã°ãã°ãã¤ã¢ã­ã°ãåºå®é·ã«å¼·å¶ãã¦åé¡ã«ãªãã¾ã)ã None ãæå®ãããããã¼ã¸ã®æå¾ ( ç´å¾ã« nvl clear ã¹ãã¼ãã¡ã³ããç¶ããã® ) ã§ NVL ã­ã£ã©ã¯ã¿ã¼ã«ä½¿ç¨ãã ctc ã®åº§æ¨ãæå®ãã¾ããããã¯ :func:`Character` ã® ctc_position å¼æ°ãç½®ãæãã¾ãã None ãæå®ãããããã¼ã¸ã®æå¾ ( ç´å¾ã« nvl clear ã¹ãã¼ãã¡ã³ããç¶ããã® ) ã§ NVL ã­ã£ã©ã¯ã¿ã¼ã«ä½¿ç¨ãã ctc ãæå®ãã¾ããããã¯ :func:`Character` ã® ctc å¼æ°ãç½®ãæãã¾ãã True ã®å ´åãä¸åº¦ã«ãã¼ã¸å¨ä½ã«å¯¾ãã¦çºçããNVLã¢ã¼ãã»ã­ã¼ã«ããã¯ã¨ãªãã¾ãã ãã®ãããªã²ã¼ã ãå®è¡ããã¨ãã¯ããã®æ°è¡ã¯æ®éã«è¡¨ç¤ºããã¾ããããã°ããããã¨ãè¡ãç»é¢ä¸é¨ãããä¸ã«è¡¨ç¤ºããã¦ãã¾ãã¾ããã¹ã¯ãªããã®éä¸­ã§æ¹ãã¼ã¸ãããã«ã¯ãããããã®ãã¼ã¸ã®æå¾ã« ``nvl clear`` ãå«ãã¾ãã ãã®ãã¥ã¼ããªã¢ã«ã§ã¯ãRen'Py ãä½¿ã£ã NVL ã¢ã¼ãã®ã²ã¼ã ãã©ã®ããã«ä½ãããèª¬æãã¾ãããã®ãã¥ã¼ããªã¢ã«ã§ã¯ã :doc:`ã¯ã¤ãã¯ã¹ã¿ã¼ãããã¥ã¢ã«<quickstart>` ã§èª¬æãã Ren'Py ã®åºæ¬äºé ãçç¥ãã¦ãããã¨ãåæã¨ãã¾ãã ã¡ãã¥ã¼ NVL ã¢ã¼ã NVL ã¢ã¼ãã¯ãä»¥ä¸ã®æé ã§ Ren'Py ã®ã¹ã¯ãªããã«è¿½å ã§ãã¾ããã¾ããã­ã£ã©ã¯ã¿ã¼ã NVL ã¢ã¼ãã§å®£è¨ããæ¬¡ã«ããããã®ãã¼ã¸ã®æå¾ã« ``nvl clear`` ã¹ãã¼ãã¡ã³ããè¿½å ããã ãã§ãã NVL ã¢ã¼ãã»ã­ã£ã©ã¯ã¿ã¼ã®å¤è¦³ã¯ã«ã¹ã¿ãã¤ãºã§ããããããã¾ãè¨­å®ãããã¨ã§ãä½æä¸­ã®ã²ã¼ã ã«æãé©åãªå¤è¦³ãé¸ã¶ãã¨ãã§ãã¾ãã ããã§ã ``narrator`` ã¨ãã NVL ã¢ã¼ãã®ã­ã£ã©ã¯ã¿ã¼ãè¿½å ãããã¨ã«æ³¨æãã¦ãã ããã ``narrator`` ã­ã£ã©ã¯ã¿ã¼ã¯ãé¢é£ä»ããããååãæããªãããã¬ã¼ã·ã§ã³è¡ã«ä½¿ç¨ããã¾ãã ãã¡ãããå¨ãã«ã¹ã¿ãã¤ãºããã¦ããªã NVL ã¢ã¼ãã®ã­ã£ã©ã¯ã¿ã¼ãä½¿ããã¨ãã§ãã¾ãã(ããã¯ãã¬ã¼ã¿ã¼ã«ä½¿ããããã¨ãå¤ãã§ãã) :: ãã¼ã¸æ¯ã®ã­ã¼ã«ããã¯ ãã¼ã¸æ¯ã®ã­ã¼ã«ããã¯ã«ãããRen'Py ã¯ NVL ã¢ã¼ãã®ãã¼ã¸1ã¤ã1åã§ã­ã¼ã«ããã¯ããããã«ãªãã¾ãããã®æ©è½ã¯ãä»¥ä¸ã®ã³ã¼ããã¹ã¯ãªããã«å¥ãããã¨ã§æå¹åã§ãã¾ãã :: Python é¢æ° The Question ã®ã¹ã¯ãªãã (NVLã¢ã¼ãç) :var:`config.empty_window` ã ``nvl_show_core`` ã«è¨­å®ããã¨ãNVL ã¢ã¼ãã»ã¦ã£ã³ãã¦ã¯ãã©ã³ã¸ã·ã§ã³ãä¼´ã£ã¦è¡¨ç¤ºããã¾ãã(æå¾ã®2è¡ã§ã¯ãã¦ã£ã³ãã¦ã®è¡¨ç¤º/éè¡¨ç¤ºã®åãæ¿ãã«ä½¿ãããæ¢å®ã®ãã©ã³ã¸ã·ã§ã³ãè¨­å®ãã¦ãã¾ãã) NVL ã¢ã¼ãã»ã¦ã£ã³ãã¦ã®è¡¨ç¤º/éè¡¨ç¤º 3ã¤ç®ã®è¡¨ç¤ºã¯ãèª°ãè©±ããè¨èãªã®ããè¦åããã®ãé£ãããªãå¯è½æ§ãããã¾ãããã®å ´åã¯ããwhat_colorããã©ã¡ã¼ã¿ã¼ãç¨ãã¦å°è©ã«è²ãä»ãããã¾ãã :: NVL ã¢ã¼ãã»ã¦ã£ã³ãã¦ã¯ãæ¨æºã® ``window show`` åã³ ``window hide`` ã¹ãã¼ãã¡ã³ãã«ãã£ã¦å¶å¾¡ã§ãã¾ãããã®å¶å¾¡æ¹æ³ãæå¹ã«ããã«ã¯ãä»¥ä¸ã®ã³ã¼ããã²ã¼ã ã«è¿½å ãã¾ã :: æ¢å®ã®ç¶æã§ã¯ã­ã£ã©ã¯ã¿ã¼åãå·¦å´ã§ãå°è©ãã­ã£ã©ã¯ã¿ã¼åã®å³å´ã«ã¤ã³ãã³ãããã¦éç½®ããã¦ãã¾ããååã®è²ã¯ãcolorããã©ã¡ã¼ã¿ã¼ã§è¨­å®ã§ãã¾ãã :: ä»¥ä¸ã®è¨­å®å¤æ°ã¯ nvl ã«é¢é£ããæ©è½ãå¶å¾¡ãã¾ãã æ¬¡ã¯ãæ¹ãã¼ã¸ãè¡ãã¹ã¯ãªããã®ä¾ã§ã:: NVLã¹ã¯ãªã¼ã³ãè¡¨ç¤ºããã¬ã¤ã¤ã¼ã§ãã ã¡ãã¥ã¼ã¯é¸æãè¡ãããå¾ã«æ¶å»ããããããã¡ãã¥ã¼ã ``nvl clear`` ã«ç¶ãã¦è¡¨ç¤ºããããé¸æãããã®ãä½ã§ãããåãããããªè¡¨ç¤ºãããããã«ããã¨è¯ãã§ãããã ``nvl show`` ã¨ ``nvl hide`` ã³ãã³ãã¯ NVL ã¢ã¼ãã®ã¦ã£ã³ãã¦ãè¡¨ç¤ºãéè¡¨ç¤ºãã¾ãããããã¯ä»»æã§ãã©ã³ã¸ã·ã§ã³ãåããã¾ãã NVL ã¨ ADV ä¸¡æ¹ã®ã¢ã¼ãã®ã¦ã£ã³ãã¦ãæ··å¨ããã³ã¼ãã§ä½¿ç¨åºæ¥ã¾ãã ãã¸ã¥ã¢ã«ããã«ã«ã¯ãä¸»ã«2ã¤ã®è¡¨ç¤ºæ¹æ³ãããã¾ããADV ã¹ã¿ã¤ã«ã®ã²ã¼ã ã§ã¯ãä¸è¬ã«ç»é¢ã®ä¸é¨ã«ããã¦ã£ã³ãã¦ã«å°è©ã¨ãã¬ã¼ã·ã§ã³ãä¸åº¦ã«ä¸è¡ã ãè¡¨ç¤ºãã¾ããNVL ã¹ã¿ã¤ã«ã®ã²ã¼ã ã§ã¯ãç»é¢å¨ä½ã«åºããããã¦ã£ã³ãã¦ã«ä¸åº¦ã«è¤æ°ã®è¡ãè¡¨ç¤ºãã¾ãã NVL ã¢ã¼ãã®ã¡ãã¥ã¼è¡¨ç¤ºãè¡ãã«ã¯ãä»¥ä¸ã®ããã«æ¸ãã¾ã:: NVL ã¢ã¼ãã®ã²ã¼ã ã§ã¯ä¸è¬çã«æ®µè½ãã¨ã®ãã­ã¹ãéãå¤ããªãã¾ããããã®ä¾ã§ã¯åºæ¬çãª NVL ã¢ã¼ãã®ã¹ã¯ãªããã®ä¾ãç¤ºãã¦ãã¾ãã(ãã©ã³ã¸ã·ã§ã³ã®ç¡ãã­ããã£ãã¯ããã«ã§ã®ä½¿ç¨ã«é©ãã¦ãã¾ãã) NVL ã¢ã¼ãçã®ãThe Questionãã®å®å¨ãªã¹ã¯ãªããã¯ã :ref:`ãã <thequestion_nvl>` ã§å¥æã§ãã¾ãã 