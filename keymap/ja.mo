Þ          ì   %   ¼      P     Q  o   h  ´   Ø  ¹     ]   G  +  ¥  U   Ñ  r   '  e     £      |   ¤  i   !  &     r   ²  ½  %	  h   ã
  w   L  ë   Ä  Ç   °     x     |                      l    $     s   -    ¡    º     Ã  «  F  ~   ò  °   q     "  è   Â  Ä   «     p  9   ö     0  ´  Ç  ¥   |     "  F  ½  $       )     -     2     7     ?     F                                     
                                                                                 	       Customizing the Keymap For example, the keysym "shift_alt_K_F5" will match the F5 key being pressed while Shift and Alt are held down. Gamepad bindings work a little differently. Gamepad bindings work by mapping a gamepad event to one or more Ren'Py event names. The default set of gamepad bindings is given below:: Gamepad buttons have an event name of the form "pad_*button*_press" or "pad_*button*_release". Analog axis events have the form "pad_*axis*_pos", "pad_*axis*_neg", or "pad_*axis*_zero". In Ren'Py keysyms are strings representing mouse buttons, joystick buttons, or keyboard keys. Keyboard keysyms can also be the symbolic name for the key. This can be any of the K\_ constants taken from pygame.constants. This type of keysym looks like "K\_BACKSPACE", "K\_RETURN", and "K\_TAB"; a full list of this kind of keysyms may be found `here <http://www.pygame.org/docs/ref/key.html>`_. Keyboard keysyms may be preceded by the following prefixes, separated by underscores: Many players have learned the default set of Ren'Py keybindings, and expect them to be the same from game to game. Matches if the Alt key is pressed. Keysyms without this prefix match when the Alt key is not pressed. Matches if the Ctrl key is pressed. Keysyms without this prefix match when the Ctrl key is not pressed. (Ctrl is not very useful, as it usually triggers skipping.) Matches if the meta, Command, or Windows key is pressed. Keysyms without this prefix match when the meta key is not pressed. Matches when the Shift key is not pressed. A K\_ keysym ignores the state of the Shift key when matching. Matches when the Shift key is pressed. Matches when the key is a repeat due to the key being held down. Keysyms without this prefix do not match repeats. Mouse buttons use keysyms of the form 'mouseup_#' or 'mousedown_#', where # is a button number. Ren'Py assumes a five button mouse, where buttons 1, 2, and 3 are the left, middle, and right buttons, while buttons 4 and 5 are generated by scrolling the wheel up and down. For example, "mousedown_1" is generally a press of the left mouse button, "mouseup_1" is a release of that button, and "mousedown_4" is a turn of the scroll wheel to the top. The default keymap is contained inside renpy/common/00keymap.rpy, and as of version 6.99 is as follows:: The variable :var:`config.keymap` contains a map from event names to lists of keysyms that cause those events to occur. There are two kinds of keyboard keysyms. The first is a string containing a character that is generated when a key is pressed. This is useful for binding alphabetic keys and numbers. Examples of these keysyms include "a", "A", and "7". To change a binding, update the appropriate list in :var:`config.keymap`. The following adds the 't' key to the list of keys that dismiss a say statement, and removes the space key from that list. :: alt ctrl meta noshift repeat shift Project-Id-Version: renpy-doc
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-09-11 07:24+0900
PO-Revision-Date: 2019-05-05 15:05+0900
Last-Translator: 
Language-Team: Japanese <ja@li.org>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-06-21 06:27+0000
X-Generator: Poedit 1.5.7
 ã­ã¼ãããã®ã«ã¹ã¿ãã¤ãº ä¾ãã° "shift_alt_K_F5" ã¯ shift ã¨ alt ãæ¼ããªãã F5 ã­ã¼ãæ¼ããå ´åã«ããããã¾ãã ã²ã¼ã ãããã®ãã¤ã³ãã£ã°ã¯å°ãéãåä½ããã¾ããã²ã¼ã ããããã¤ã³ãã£ã°ã²ã¼ã ãããã®ã¤ãã³ããã²ã¨ã¤ä»¥ä¸ã® Ren'Pyã®ã¤ãã³ãåã«ããããã¦åä½ãã¾ããããã©ã«ãã®è¨­å®ã¯ä»¥ä¸ã®éãã§ãã :: ã²ã¼ã ãããã®ãã¿ã³ã«ã¯  "pad_*button*_press" ã "pad_*button*_release" ã®å½¢å¼ã§ã¤ãã³ãåãããã¾ããã¢ãã­ã°è»¸ã¤ãã³ãã«ã¯ "pad_*axis*_pos" ã "pad_*axis*_neg", "pad_*axis*_zero" å½¢å¼ã®ã¤ãã³ãåãããã¾ãã Ren'Py ã§ã¯ã­ã¼ã·ã³ãã«ã¯ãã¦ã¹ãã¿ã³ãã¸ã§ã¤ã¹ãã£ãã¯ãã­ã¼ãã¼ãã­ã¼ãè¡¨ãæå­åã§ãã ã­ã¼ãã¼ãã®ã­ã¼ã·ã³ãã«ã«ã¯ãã®ã­ã¼ã®ã·ã³ãã«åãå¯è½ã§ããããã¯ pygame.constants ããæå¾ããã©ããª k\_ å®æ°ãå¯è½ã§ããã®å½¢å¼ã®ã­ã¼ã·ã³ãã«ã¯ã K\_BACKSPACE ã,ã K\_RETURN ã, ã K\_TAB ãã®ããã«ãªãã¾ãããã®ç¨®é¡ã®ã­ã¼ã·ã³ãã«ã®å®å¨ãªãªã¹ãã¯ `ãã¡ã <http://www.pygame.org/docs/ref/key.html>`_ ã§è¦ã¤ãããã¾ãã ã­ã¼ãã¼ãã®ã­ã¼ã·ã³ãã«ã«ã¯ä»¥ä¸ã®æ¥é ­è¾ãã¢ã³ãã¼ã¹ã³ã¢åºåãã§ã¤ãããããã¾ããã å¤ãã®äººãã¯ Ren'Py ã®ã­ã¼ãã¤ã³ãã£ã³ã°ã®ããã©ã«ãè¨­å®ãçµé¨ãã¦ããã®ã§ãããããã²ã¼ã éã§ä¸è´ãããã¨ãæå¾ãã¾ãã alt ã­ã¼ãæ¼ããã¦ããã¨ããããã¾ãã alt ã­ã¼ãæ¼ããã¦ããªãã¨ãã®æ¥é ­è¾ããªãã­ã¼ã·ã³ãã«ãããããã¾ãã ctrl ã­ã¼ãæ¼ããã¦ããã¨ããããã¾ãã ctrl ã­ã¼ãæ¼ããã¦ããªãã¨ãã®æ¥é ­è¾ããªãã­ã¼ã·ã³ãã«ãããããã¾ãã( ctrl ã­ã¼ã¯æ®éã¹ã­ããã«ä½¿ç¨ããã®ã§ä¸ä¾¿ã§ãã) metaãã³ãã³ããã¦ã£ã³ãã¦ãºã­ã¼ãæ¼ããã¦ããã¨ããããã¾ãã meta ã­ã¼ãæ¼ããã¦ããªãã¨ãã®æ¥é ­è¾ããªãã­ã¼ã·ã³ãã«ãããããã¾ãã shift ã­ã¼ãæ¼ããã¦ããªãã¨ããããã¾ãã K\_ keysym ã¯ãããæã« shift ã­ã¼ã®ç¶æãç¡è¦ãã¾ãã Shift ã­ã¼ãæ¼ããã¦ããã¨ããããã¾ãã ã­ã¼ãæ¼ãã£ã±ãªãã§ãªãã¼ãããã¦ããã¨ãããããã¾ãããã®æ¥é ­è¾ããªãã¨ãªãã¼ãã«ããããã¾ããã ãã¦ã¹ãã¿ã³ã¯ ã mouseup_# ããã mousedown_# ãã®å½¢å¼ã§ã­ã¼ã·ã³ãã«ãä½¿ç¨ãã¾ããããã§ã® # ã¯ãã¿ã³çªå·ã§ãã Ren'Py ã¯5 ã¤ã®ãã¿ã³ 1, 2, 3 ãããããå·¦ãä¸­ãå³ãã¿ã³ã 4, 5 ã¯ãã¤ã¼ã«ã¢ããããã¤ã¼ã«ãã¦ã³ã¨è§£éãã¾ããä¾ãã°ã mousedown_1 ãã¯å·¦ãã¿ã³ãæ¼ããã¨ãã mousedown_4 ãã¯ãã¤ã¼ã«ãä¸æ¹ã«åããæã§ãã ããã©ã«ãã®ã­ã¼ãããã¯ãRen'Py ã®å®è£ã³ã¼ãã®åé¨ã«å«ã¾ãã¦ãã¾ãããã¼ã¸ã§ã³ 6.99 ã§ã¯ä»¥ä¸ã®ããã«ãªã£ã¦ãã¾ã:: å¤æ° :var:`config.keymap` ã«ã¯ã¤ãã³ãåã¨ãã®ã¤ãã³ããçºçãããã­ã¼ã·ã³ãã«ã®ãªã¹ããããªãè¾æ¸ãå¥ãã¾ãã 2 ç¨®é¡ã®ã­ã¼ã·ã³ãã«ãå­å¨ãã¾ãã 1 ã¤ç®ã¯ã­ã¼ãæ¼ãããã¨çæãããæå­ãå«ããæå­åã§ãã ããã¯ã¢ã«ãã¡ãããã­ã¼ã¨æ°å­ã«å¯¾ãããã¤ã³ãã£ã³ã°ã«ä¾¿å©ã§ãããããã®ã­ã¼ã·ã³ãã«ã®ä¾ã« ã a ããã  Aããã 7 ã ãããã¾ãã ãã¤ã³ãã£ã³ã°ãå¤æ´ããã«ã¯ã å¤æ°  :var:`config.keymap` ã®é©åãªãªã¹ããæ´æ°ãã¾ããä»¥ä¸ã®ã³ã¼ãã¯ 't' ã­ã¼ã say ã¹ãã¼ãã¡ã³ããé²è¡ãããã­ã¼ã®ãªã¹ãã«å ãããã®ãªã¹ãããã¹ãã¼ã¹ã­ã¼ãåãé¤ãã¾ãã :: alt ctrl meta noshift repeat shift 