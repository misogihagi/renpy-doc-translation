Þ    ^           ü      ø     ù                      /     &  Ê     ñ	     }
       s   ¤          0     7  !   ?  ,   a  ÷          §     x   º  ^   3          ¢  >   ¨  =   ç     %  	   *     4  
   8     C  i  J     ´     Í  M   Ù      '  B   È  ¾        Ê     Ï     Ó    â  j   ù     d     y  d   ü  W   a  I   ¹  H     Ï   L  Ù     ]   ö  Z   T  G   ¯     ÷  +   |  ,   ¨  >   Õ  2     3   G     {  E     (   Ù       /     d   I  `  ®  Þ     Q   î  Y   @          "      µ      8!     Ë!     Ì"  
   Ò"     Ý"  	   å"     ï"     û"     #     #     #  X   #  >   w#  ;   ¶#  H   ò#  Z   ;$  V   $  e   í$  D   S%  +   %  :   Ä%  l  ÿ%     l'     t'     {'     '  À   '  0   K(  z  |(  ¯   ÷)  à   §*  ­   +  µ   6,     ì,     -     -  2   -  B   F-    -  §   .  ê   A/     ,0  d   Á0     &1     E1  X   K1  X   ¤1     ý1  	   2     2  
   2     2    "2     54     E4  [   Q4  Ö   ­4  n   5  é   ó5     Ý6     â6     æ6  L  õ6  ¨   B8  !   ë8  ²   9  v   À9  {   7:  o   ³:  e   #;    ;  $  <  ^   ¿=  y   >  o   >  ¤   ?  I   ­?  J   ÷?  O   B@     @  L   «@     ø@  `   A  B   xA  !   »A  *   ÝA  [   B  Ð  dB  &  5D  w   \E  f   ÔE  ¹   ;F  ¡   õF  ¢   G  Ð   :H  M  I     YJ  
   _J     jJ  	   rJ     |J     J     J     J     J  h   «J  >   K  ;   SK  H   K  ]   ØK  V   6L  e   L  D   óL  +   8M  :   dM                          7       .   P   ,   +   '   T   $   L       #          !   O                 Y       R   J   F   3              I   K   ^   /      5   [      W   *   D       ]   S   6   H   4   %             V          C   (            "      M              >   @   \   0              X       :       9   G             U   Z                   N   B       1       E   ;             8   =   Q   
   &         	   -       <   A      2                 )                  ?    "input" "what" "who" "window" A list of NVL Entry objects, each of which corresponds to a line of dialogue to be displayed. Each entry has the following fields: A string giving the caption of the menu choice. A text displayable, displaying the dialogue being said by the speaking character. The character object can be given arguments that style this displayable. **A displayable with this id must be defined**, as Ren'Py uses it to calculate auto-forward-mode time, click-to-continue, and other things. A text displayable, displaying the name of the speaking character. The character object can be given arguments that style this displayable. A window or frame. This conventionally contains the who and what text. The character object can be given arguments that style this displayable. An action that should be invoked when the menu choice is chosen. This may be None if this is a menu caption, and :var:`config.narrator_menu` is False. An input displayable, which must exist. This is given all the parameters supplied to renpy.input, so it must exist. CTC (Click-To-Continue) Choice Confirm Here's a very simple ctc screen:: Here's a very simple skip indicator screen:: If :ref:`multiple character dialogue <multiple-character-dialogue>`, this is a two component tuple. The first component is the one-based number of the dialogue block, and the second is the total number of dialogue blocks in the multiple statement. If present, ``skip_indicator`` screen is displayed when skipping is in progress, and hidden when skipping finishes. It takes no parameters. If present, the ``ctc`` screen is displayed when dialogue has finished showing, to prompt the player to click to display more text. It may be given a single parameter. If the :func:`Character` object is given a `ctc` argument, it is passed as the first positional argument to this screen. In general, the preferences are either actions or bar values returned from :func:`Preference`. In-Game Screens Input It is expected to declare a displayable with the following id: It's expected to declare displayables with the following ids: Load Main Menu NVL Navigation Notify On this page, we'll give example screens. It's important to realize that, while some screens must have minimal functionality, the screen system makes it possible to add additional functionality to screens. For example, while the standard say screen only displays text, the screen system makes it easy to add features like skipping, auto-forward mode, or muting. Out-Of-Game Menu Screens Preferences Preferred ids for the speaker, dialogue, and window associated with an entry. Properties associated with the speaker, dialogue, and window. These are automatically applied if the id is set as above, but are also made available separately. Remember, menu screens can be combined and modified fairly freely. Ren'Py also supports an ``nvl_choice`` screen, which takes the same parameters as ``nvl``, and is used in preference to ``nvl`` when an in-game choice is presented to the user, if it exists. Save Say Skip Indicator Some of the screens also have special ids associated with them. A special id should be assigned to a displayable of a given type. It can cause properties to be assigned to that displayable, and can make that displayable accessible to the part of Ren'Py that displays the screen. Some special screens take parameters. These parameters can be accessed as variables in the screen's scope. Special Screen Names The ``choice`` screen is used to display the in-game choices created with the menu statement. It is given the following parameter: The ``confirm`` screen is used to ask yes/no choices of the user. It takes the following parameters: The ``input`` screen is used to display :func:`renpy.input`. It is given one parameter: The ``load`` screen is used to select a file from which to load the game. The ``main_menu`` screen is the first screen shown when the game begins. The ``navigation`` screen isn't special to Ren'Py. But by convention, we place the game menu navigation in a screen named ``navigation``, and then use that screen from the save, load and preferences screens. The ``notify`` screen is used by :func:`renpy.notify` to display notifications to the user. It's generally used in conjunction with a transform to handle the entire task of notification. It's given a single parameter: The ``nvl`` screen is used to display NVL-mode dialogue. It is given the following parameter: The ``preferences`` screen is used to select options that control the display of the game. The ``save`` screen is used to select a file in which to save the game. The ``say`` screen is called by the say statement, when displaying ADV-mode dialogue. It is displayed with the following parameters: The action to run when the user picks "No". The action to run when the user picks "Yes". The default notify screen, and its associated transform, are:: The dialogue being said by the speaking character. The message to display to the user. This is one of: The message to display. The name of the speaking character, or None of there is no such name. The prompt text supplied to renpy.input. The text being spoken. The text of the name of the speaking character. The values of the variables are strings, which means they can be displayed using a text displayable. There are two kinds of special screen names in Ren'Py. The first are screens that will be automatically displayed when Ren'Py script language commands (or their programmatic equivalents) are run. The other type are menu screens. These have conventional names for conventional functionality, but screens can be omitted or changed as is deemed necessary. These are the menu screens. The ``main_menu`` and ``yesno_prompt`` are invoked implicitly.  When the user invokes the game menu, the screen named in :data:`_game_menu_screen` will be displayed. (This defaults to ``save``.) These screens are automatically displayed when certain Ren'Py statements execute. This is True if this choice has been chosen at least once in any playthrough of the game. This is a list of menu entry objects, representing each of the choices in the menu. Each of the objects has the following fields on it: This is the same list of items that would be supplied to the :ref:`choice screen <choice-screen>`. If this is empty, the menu should not be shown. True if this is the current line of dialogue. The current line of dialogue must have its what text displayed with an id of "what". Until Ren'Py 6.99.10, this screen was known as the ``yesno_prompt`` screen. If no ``confirm`` screen is present, ``yesno_prompt`` is used instead. When `items` is not present, the NVL screen is expected to always give a text widget an id of "what". Ren'Py uses it to calculate auto-forward-mode time, click-to-continue, and other things. (This is satisfied automatically if the default what_id is used.) `arg` `dialogue` `items` `message` `no_action` `prompt` `what` `who` `yes_action` gui.ARE_YOU_SURE - "Are you sure?" This should be the default if the message is unknown. gui.DELETE_SAVE - "Are you sure you want to delete this save?" gui.END_REPLAY - "Are you sure you want to end the replay?" gui.FAST_SKIP_SEEN - "Are you sure you want to skip to the next choice?" gui.FAST_SKIP_UNSEEN - "Are you sure you want to skip unseen dialogue to the next choice?" gui.LOADING - "Loading will lose unsaved progress.\nAre you sure you want to do this?" gui.MAIN_MENU - "Are you sure you want to return to the main\nmenu? This will lose unsaved progress." gui.OVERWRITE_SAVE - "Are you sure you want to overwrite your save?" gui.QUIT - "Are you sure you want to quit?" gui.SLOW_SKIP - "Are you sure you want to begin skipping?" Project-Id-Version: renpy-doc
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-09-11 07:24+0900
PO-Revision-Date: 2019-05-05 17:19+0900
Last-Translator: 
Language-Team: Japanese <ja@li.org>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-06-21 06:27+0000
X-Generator: Poedit 1.5.7
 "input" "what" "who" "window" NVL ã¹ã¯ãªã¼ã³ã§å¥åãããªãã¸ã§ã¯ãã®ãªã¹ãã§ãè¡¨ç¤ºãããå°è©ã®ä¸è¡ä¸è¡ã«ããããå¯¾å¿ãã¾ããåå¥åã¯ä»¥ä¸ã®ãã£ã¼ã«ããæã¡ã¾ã : é¸æè¢ã®è¦åºãã¨ãªãæå­åã§ãã ãã­ã¹ã displayable ã§ãè©±ãæã«è©±ããã¦ããå°è©ãè¡¨ç¤ºãã¾ãã character ãªãã¸ã§ã¯ãã«ã¯ãã® displayable ã®ä½è£ãæ´ããå¼æ°ãä¸ãããã¾ããRen'Py ãèªåé²è¡ã®æéãã¯ãªãã¯å¾ã¡ãã¼ã¯ç­ãè¨ç®ããããã«ä½¿ç¨ããã®ã§ã **ãã® ID ãæã¤ displayable ã¯å®ç¾©ãããå¿è¦ãããã¾ã** ãã­ã¹ã displayable ã§ãè©±ãæã®ååãè¡¨ç¤ºãã¾ãã character ãªãã¸ã§ã¯ãã«ã¯ãã® displayable ã®ä½è£ãæ´ããå¼æ°ãä¸ãããã¾ãã ã¦ã£ã³ãã¦ã¾ãã¯ãã¬ã¼ã ã§ããããã¯æ£ä¾ã¨ãã¦ã who ã¨ what ã®ãã­ã¹ããå«ã¿ã¾ãã character ãªãã¸ã§ã¯ãã«ã¯ãã® displayable ã®ä½è£ãæ´ããå¼æ°ãä¸ãããã¾ãã ãã®é¸æè¢ãé¸æãããã¨å®è¡ãããã¢ã¯ã·ã§ã³ã§ããããã menu ã®ã­ã£ãã·ã§ã³ã§ :var:`config.narrator_menu` ã Falseãªã None ã§ãã input displayable ã§ãå­å¨ããå¿è¦ãããã¾ããããã«ã¯ renpy.input ã«æä¾ããããã¹ã¦ã®å¼æ°ãä¸ããããã®ã§å­å¨ããå¿è¦ãããã¾ãã CTC (Click-To-Continue) Choice Confirm ã¨ã¦ãåç´ãª ctc ã¹ã¯ãªã¼ã³ã§ãã :: ã¨ã¦ãåç´ãªã¹ã­ããã¤ã³ãã£ã±ã¼ã¿ã¼ã§ãã :: :ref:`è¤æ°ã­ã£ã©ã¯ã¿ã¼ãã¤ã¢ã­ã° <multiple-character-dialogue>` ãªããããã¯2ã¤ã®è¦ç´ ã®ã¿ãã«ã¨ãªãã¾ããï¼ã¤ç®ã¯å°è©ãã­ãã¯æ°ã«åºã¥ããã®ã§ã2ã¤ç®ã¯è¤æ°ã¹ãã¼ãã¡ã³ãåè¨ã®å°è©ãã­ãã¯æ°ã§ãã å­å¨ããã°ãã¹ã­ããå¦çä¸­ã« ``skip_indicator`` ã¹ã¯ãªã¼ã³ãè¡¨ç¤ºãããã¹ã­ããåæ­¢ã§éè¡¨ç¤ºããã¾ããå¼æ°ã¯åãã¾ããã å­å¨ããã°ãå°è©ã®è¡¨ç¤ºãå®äºããã¨ ``ctc`` ã¹ã¯ãªã¼ã³ãè¡¨ç¤ºããããã¬ã¤ã¤ã¼ã«ã¯ãªãã¯ãã¦æ¬¡ã®ãã­ã¹ããè¡¨ç¤ºããããä¿ãã¾ããããããä¸ã¤ã®å¼æ°ãæå®ããã¾ãã `ctc` å¼æ°ã« :func:`Character` ãªãã¸ã§ã¯ããæå®ãããã¨ãæåã®ä½ç½®å¼æ°ã¨ãã¦ãã®ã¹ã¯ãªã¼ã³ã«æ¸¡ããã¾ãã ä¸è¬çã«ãè¨­å®ã¯ :func:`Preference` ããè¿ãããã¢ã¯ã·ã§ã³ã bar value ã§ãã ã²ã¼ã åã®ã¹ã¯ãªã¼ã³ Input ä»¥ä¸ã® ID ãä¼´ã£ã¦ displayable ãå®£è¨ããããã¨ãæå¾ããã¾ãã : ä»¥ä¸ã® ID ãä¼´ã£ã¦ displayable ãå®£è¨ããããã¨ãæå¾ããã¾ãã : Load Main Menu NVL Navigation Notify ãã®ãã¼ã¸ã§ã¯ã¹ã¯ãªã¼ã³ã®ä¾ãç¤ºãã¾ããããã¤ãã®ã¹ã¯ãªã¼ã³ã«ã¯å¿è¦æä½éã®æ©è½ãæãããªããã°ãªããªãä¸æ¹ã§ãã¹ã¯ãªã¼ã³ã·ã¹ãã ã¯è¿½å ã®æ©è½ãã¹ã¯ãªã¼ã³ã«å ãããã¨ãåºæ¥ãã¨çè§£ãããã¨ãéè¦ã§ããä¾ãã°ãåºæ¬çãª say ã¹ã¯ãªã¼ã³ã¯ãã­ã¹ããè¡¨ç¤ºããã ãã§ãããã¹ã¯ãªã¼ã³ã·ã¹ãã ã¯ç°¡åã«ã¹ã­ãããèªåé²è¡ããã¥ã¼ãã®ãããªæ©è½ãè¿½å åºæ¥ãããã«ãã¾ãã Menu Screen å¤ Preferences å¥åã«å¯¾ããè©±èãå°è©ãã¦ã£ã³ãã¦ã«å¯¾ããåªåããã id ã§ãã è©±èãå°è©ãã¦ã£ã³ãã¦ã«é¢ãããã­ããã£ã¼ã§ãããã® id ãä¸è¿°ã®ããã«è¨­å®ããã¦ããã°ããããã«èªåçã«é©ç¨ããã¾ãããç¬ç«çã«ãå©ç¨å¯è½ã§ãã menu ã¹ã¯ãªã¼ã³ã¯ãããªãèªç±ã«çµ±åã»ä¿®æ­£ã§ãããã¨ãè¦ãã¦ããã¦ãã ããã Ren'Py ã¯ ``nvl`` ã¨åãå¼æ°ãåã ``nvl_choice`` ã¹ã¯ãªã¼ã³ããµãã¼ããã¦ãããããå­å¨ããã¨ã²ã¼ã åé¸æè¢ãã¦ã¼ã¶ã¼ã«è¡¨ç¤ºãããã¨ãã¯ ``nvl`` ã«åªåãã¦ä½¿ç¨ããã¾ãã Save Say Skip Indicator ãã®ã¹ã¯ãªã¼ã³ã®ããã¤ãã¯ãããã«é¢é£ã¥ããããç¹å¥ãª ID ãæã£ã¦ãã¾ããç¹å¥ãª ID ã¯ç¹å®ã®ç¨®é¡ã® displayable ã«ä»£å¥ããããã­ããã£ã¼ããã® displayable ã«ä»£å¥ãããããã«åºæ¥ããã® displayable ãå¼ã³åºãã³ã¼ãããã¢ã¯ã»ã¹å¯è½ã«ãã¾ãã ããã¤ãã®ç¹å¥ãªã¹ã¯ãªã¼ã³ã¯å¼æ°ãåãã¾ãããããã®å¼æ°ã¯ãã®ã¹ã¯ãªã¼ã³ã®ã¹ã³ã¼ãã§å¤æ°ã¨ãã¦ã¢ã¯ã»ã¹å¯è½ã§ãã ç¹å¥ãªååã®ã¹ã¯ãªã¼ã³ ``choice`` ã¹ã¯ãªã¼ã³ã¯ menu ã¹ãã¼ãã¡ã³ãã«ãã£ã¦ä½æãããã²ã¼ã åé¸æè¢ãè¡¨ç¤ºããããã«ä½¿ç¨ãããä»¥ä¸ã®å¼æ°ãåãã¾ãã : ``confirm`` ã¯ yes/no ã®é¸æè¢ãã¦ã¼ã¶ã¼ã«å°ã­ãããä½¿ç¨ãããä»¥ä¸ã®å¼æ°ãåãã¾ãã : ``input`` ã¹ã¯ãªã¼ã³ã¯ :func:`renpy.input` ãè¡¨ç¤ºããããã«ä½¿ç¨ãããä¸ã¤ã®å¼æ°ãåãã¾ãã : ``load`` ã¹ã¯ãªã¼ã³ã¯ã²ã¼ã ãã­ã¼ããããã¡ã¤ã«ãé¸æããããã«ä½¿ç¨ããã¾ãã ``main_menu`` ã¹ã¯ãªã¼ã³ã¯ã²ã¼ã éå§æã«æåã«è¡¨ç¤ºãããã¹ã¯ãªã¼ã³ã§ãã ``navigation`` ã¹ã¯ãªã¼ã³ã¯ Ren'Py ã«ã¨ã£ã¦ç¹å¥ã§ã¯ããã¾ããããæ£ä¾ã¨ãã¦ ``navigation`` ã¨åä»ããããã¹ã¯ãªã¼ã³ã game menu ã«è¨­ç½®ãã   save, load, preferences ã¹ã¯ãªã¼ã³ãããã®ã¹ã¯ãªã¼ã³ãä½¿ç¨ãã¾ãã ``notify`` ã¹ã¯ãªã¼ã³ã¯ :func:`renpy.notify` ã«ãã£ã¦ã¦ã¼ã¶ã¼ã«éç¥ãã displayable ãè¡¨ç¤ºããããã«ä½¿ç¨ããã¾ããéå¸¸ã¯éç¥ã®ã¿ã¹ã¯ã®ãã¹ã¦ãå¦çããããã«å¤æã¨é£æºãã¦ä½¿ç¨ããã¾ããä¸ã¤ã®å¼æ°ãä¸ãããã¾ãã ``nvl`` ã¹ã¯ãªã¼ã³ã¯ NVL ã¢ã¼ã ã§ä½¿ç¨ãããä»¥ä¸ã®å¼æ°ãåãã¾ãã : ``preferences`` ã¹ã¯ãªã¼ã³ã¯ã²ã¼ã ã®è¡¨ç¤ºãå¶å¾¡ãªãã·ã§ã³ãé¸æããããã«ä½¿ç¨ããã¾ãã ``save`` ã¹ã¯ãªã¼ã³ã¯ã²ã¼ã ãã»ã¼ããããã¡ã¤ã«ãé¸æããããã«ä½¿ç¨ããã¾ãã ADV ã¢ã¼ãã®å°è©ãè¡¨ç¤ºããã¨ãã« ``say`` ã¹ã¯ãªã¼ã³ã¯ say ã¹ãã¼ãã¡ã³ãã«ãã£ã¦ä»¥ä¸ã®å¼æ°ãä¼´ã£ã¦å¼ã³åºããã¾ãã : ã¦ã¼ã¶ã¼ãã No ããé¸æããã¨å®è¡ãããã¢ã¯ã·ã§ã³ ã¦ã¼ã¶ã¼ãã Yes ããé¸æããã¨å®è¡ãããã¢ã¯ã·ã§ã³ ããã©ã«ãã® notify ã¹ã¯ãªã¼ã³ã¨ãã®é¢é£ã¥ããããå¤æ : è©±ãæã«ããå°è© ã¦ã¼ã¶ã¼ã«è¡¨ç¤ºããã¡ãã»ã¼ã¸ã§ãä»¥ä¸ã®ããããã§ã: è¡¨ç¤ºãããã¡ãã»ã¼ã¸ è©±ãã¦ããã­ã£ã©ã¯ã¿ã¼ã®ååããã®ãããªååããªããã° None ã§ãã renpy.input ã«æä¾ããããã­ã³ãããã­ã¹ãã§ãã è©±ããããã­ã¹ãã§ãï¼ è©±ãã¦ããã­ã£ã©ã¯ã¿ã¼ã®åå å¤æ°ã®å¤ã¯æå­åã§ããã­ã¹ã displayable ãä½¿ç¨ãã¦è¡¨ç¤ºåºæ¥ã¾ãã Ren'Py ã«ã¯2ç¨®é¡ã®ç¹å¥ãªååã®ã¹ã¯ãªã¼ã³ãããã¾ãã1ã¤ç®ã¯ Ren'Py ã®ã¹ã¯ãªããè¨èªã®ã³ãã³ã ( ã¾ãã¯ãã­ã°ã©ã çã«ç­ä¾¡ãªãã® ) ãå®è¡ãããã¨èªåçã«è¡¨ç¤ºãããã¹ã¯ãªã¼ã³ã§ããããä¸ã¤ã¯ menu ã¹ã¯ãªã¼ã³ã§ããããã¯ä¸è¬çãªæ©è½ã«å¯¾å¿ããä¸è¬çãªååãæã¡ã¾ãããå¿è¦ã«å¿ãã¦ãã¹ã¯ãªã¼ã³ãçç¥ãããå¤æ´ãããåºæ¥ã¾ãã ãããã¯ menu ã¹ã¯ãªã¼ã³ã§ãã ``main_menu`` ã¨ ``yesno_prompt`` ã¯ç¡æ¡ä»¶ã«ä½¿ç¨ããã¾ããã¦ã¼ã¶ã¼ã game menu ãä½¿ç¨ããã¨ã  :data:`_game_menu_screen` ã§åä»ããããã¹ã¯ãªã¼ã³ãè¡¨ç¤ºããã¾ãã ( ããã©ã«ãã§ã¯ ``save`` ã§ãã ) ãããã®ã¹ã¯ãªã¼ã³ã¯ç¹å®ã® Ren'Py ã¹ãã¼ãã¡ã³ããå®è¡ããã¨èªåçã«è¡¨ç¤ºããã¾ãã ãã®ã²ã¼ã ã®ãã¬ã¤ä¸­ã«å°ãªãã¨ãä¸åº¦é¸æãããé¸æè¢ãªãã° True ã§ãã ããã¯ã¡ãã¥ã¼ã«å¥åãããªãã¸ã§ã¯ãã®ãªã¹ãã§ãé¸æç»é¢ã®åé¸æè¢ãè¡¨ãã¾ããåãªãã¸ã§ã¯ãã¯ä»¥ä¸ã®ãã£ã¼ã«ãããã¡ã¾ãã : ããã¯ :ref:`choice screen <choice-screen>` ã«æ¸¡ããããã®ã¨åã item ã®ãªã¹ãã§ãããããç©ºãªããé¸æè¢ã¯è¡¨ç¤ºããã¾ããã ãããå°è©ã®ç¾å¨ã®è¡ãªã True ã§ããå°è©ã®ç¾å¨ã®è¡ã«ã¯ "what" ã® id ãæã¤è¡¨ç¤ºããããã­ã¹ãããªããã°ãªãã¾ããã Ren'Py 6.99.10 ã¾ã§ãã®ã¹ã¯ãªã¼ã³ã¯ ``yesno_prompt`` ã¹ã¯ãªã¼ã³ã¨å¼ã°ãã¦ãã¾ããã ``confirm`` ã¹ã¯ãªã¼ã³ããªããã°ã ``yesno_prompt`` ãä»£ããã«ä½¿ç¨ããã¾ãã `items` ãå­å¨ããªãã¨ã NVL ã¹ã¯ãªã¼ã³ã¯ "what" id ã®ãã­ã¹ãã¦ã£ã¸ã§ãããå¸¸ã«æ¸¡ãã§ããããRen'Py ã¯ãããä½¿ç¨ãã¦ãªã¼ãã¢ã¼ãã®æéã click-to-continue, ãã®ä»ãè¨ç®ãã¾ãã(ããã©ã«ãã® what_id ãä½¿ç¨ããã¦ããã°ãããã¯ååèªåçã§ãã ) `arg` `dialogue` `items` `message` `no_action` `prompt` `what` `who` `yes_action` gui.ARE_YOU_SURE - "Are you sure?" ããã¯ã¡ãã»ã¼ã¸ãæªç¥ã®ã¨ãã®ããã©ã«ãã§ãã gui.DELETE_SAVE - "Are you sure you want to delete this save?" gui.END_REPLAY - "Are you sure you want to end the replay?" gui.FAST_SKIP_SEEN = "Are you sure you want to skip to the next choice?" gui.FAST_SKIP_UNSEEN = "Are you sure you want to skip to unseen dialogue to the next choice?" gui.LOADING - "Loading will lose unsaved progress.\nAre you sure you want to do this?" gui.MAIN_MENU - "Are you sure you want to return to the main\nmenu? This will lose unsaved progress." gui.OVERWRITE_SAVE - "Are you sure you want to overwrite your save?" gui.QUIT - "Are you sure you want to quit?" gui.SLOW_SKIP = "Are you sure you want to begin skipping?" 