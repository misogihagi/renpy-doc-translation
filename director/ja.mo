Þ    &      L  5   |      P  S   Q  ä   ¥                0        L  #   e  ³     Y   =  '        ¿     Ô     á  G   þ     F  R  \  b   ¯	    
  ?   !  ,   a  X     c   ç  Ã   K  3     7   C  Þ   {  Á   Z          :  	   M     W  ç   `     H  ö   M     D     c  I  p  c   º  â     ³     b  µ       ,        L  D   e  þ   ª  f   ©  #        4     I     V  J   s     ¾    Ô     ]    ô  U     K   ×  h   #  u     õ     +   ø  4   $  Ú   Y  Ø   4      !     +!     >!     E!    N!     m"  È   r"  <   ;#     x#                   "                                                                                            	                  &          
      !          #                %   $    A blacklist of tags that will not be shown for the show, scene, or hide statements. A list of transforms that will be presented as part of the editor. In addition to these, any transform defined using the transform statement outside of Ren'Py itself will be added to the list of transforms, which is then sorted. A list of transitions that are available to the with statement. Since transitions can't be auto-detected, these must be added manually. A map from a channel name to the list of audio patterns that are available in that audio channel. For example, if this is set to ``{ 'sound' : [ 'sound/*.opus' ], 'music' : [ 'music/*.opus' ] }`` the music and sound channels get their own lists of patterns. Access Audio (play, queue, stop, and voice) statements. Audio Filename Functions Click "Done" when finished editing. If True, the director displays a screen with a button to access the director window. If False, the game can provide it's own access, by making available the director.Start action. If not empty, only the tags present in this set will be presented for the show statement. Image (say, show, and hide) statements. Interactive Director Line Spacing Play, Queue, Stop, and Voice Rather, it's intended to help you direct your game's script, by adding: Scene, Show, and Hide The Interactive Director is a tool that allows you to edit the script of your game from inside Ren'Py itself, with a live preview of the results of your editing. The director is not not meant as a complete replacement for the use of  a text editor, which is still required for writing the dialogue, choices, and logic of the visual novel. The default list of audio patterns that are used to match the files available in an audio channel. The first director screen you'll see shows a list of lines that ran before the current line. Click outside the lines window to advance the script, or rollback outside it to roll back. Click the + between a lines to add a line, or the â before a line to edit that line. The maximum height of scrolling viewports used by the director. The name of the audio channel used by voice. The name of the audio channels that can be used with the play, show and stop statements. The set of tags that will be presented for the scene statement, and hidden from the show statement. The spacing between a director (scene, show, hide, with, play, queue, and voice) line and a non-director line, or vice versa. These spacings should be 0 or 1 lines, a higher spacing may not work. The spacing between two consecutive director lines. The spacing between two consecutive non-director lines. There are a number of audio filename functions that can be used to convert filenames on disk to filenames in Python source code. This can be used to match Ren'Py functionality that maps filenames. For example, if one has:: There are a number of variables defined in the ``director`` namespace that control how the interactive director functions. These can be set using the define statement, or modified using Python. Transition (with) statements. Using the Director Variables Viewport When editing a line, the statement type can be selected, along with appropriate parameters. Choose "Add" to add the new line, "Change" to change an existing line, "Cancel" to cancel editing, and "Remove" to remove an existing line. With You can access the director after starting your game by pressing the D (without Shift) key on your keyboard. If this is your first time in a session running the director, Ren'Py will reload your game to ensure it has the data required to edit it. one can define the functions:: to match it. Project-Id-Version: Ren'Py Visual Novel Engine 6.99.13
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-09-11 07:24+0900
PO-Revision-Date: 2019-05-04 14:12+0900
Last-Translator: 
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 1.5.7
 show, scene, hide ã¹ãã¼ãã¡ã³ãã§è¡¨ç¤ºãããªãã¿ã°ã®ãã©ãã¯ãªã¹ãã§ãã editorã§è¡¨ç¤ºãããå¤æã®ãªã¹ãã§ãããããã«å ãã transform ã¹ãã¼ãã¡ã³ãã«ããå®ç¾©ããã Ren'Py ã®ããã©ã«ãã«ãªãå¤æãå¤æã®ãªã¹ãã«å ãããæ´åããã¾ãã with ã¹ãã¼ãã¡ã³ãã«å©ç¨å¯è½ãªãã©ã³ã¸ã·ã§ã³ã®ãªã¹ãã§ãããã©ã³ã¸ã·ã§ã³ã¯èªåæ¤åºã§ããªããããæåã§è¿½å ããã¹ãã§ãã ãã£ã³ãã«åãã­ã¼ããã®ãã£ã³ãã«ã§å©ç¨å¯è½ãªãã¡ã¤ã«ã®æ¤ç´¢ã«ä½¿ç¨ããããªã¼ãã£ãªãã¿ã¼ã³ãå¤ã¨ããmapåã§ããä¾ãã°ãããã ``{ 'sound' : [ 'sound/*.opus' ], 'music' : [ 'music/*.opus' ] }`` ã«è¨­å®ãããã¨ãmusic ã¨ sound ãã£ã³ãã«ã¯èªèº«ã®ãã¿ã¼ã³ãæå¾ãã¾ãã Access Audio (play, queue, stop, voice) statements. Audio Filename Functions ç·¨éãçµãã£ãã "Done" ãã¯ãªãã¯ãã¦ãã ããã True ãªãã director director ã¦ã£ã³ãã¦ã«ã¢ã¯ã»ã¹ãããã¿ã³ã¤ãã®ã¹ã¯ãªã¼ã³ãè¡¨ç¤ºãã¾ãã False ãªãã director.Start ã¢ã¯ã·ã§ã³ãå©ç¨å¯è½ã«ãã¦ãã²ã¼ã ã¯èªèº«ããã¢ã¯ã»ã¹å¯è½ã«ãã¾ãã ç©ºã§ãªããã°ããã®setã«ããã¿ã°ã®ã¿ã show ã¹ãã¼ãã¡ã³ãã«æ¸¡ããã¾ãã Image (say, show, hide) statements. Interactive Director Line Spacing Play, Queue, Stop, and Voice ä»¥ä¸ãå ãã¦ãã²ã¼ã ã¹ã¯ãªããã®ç£ç£ãå©ãã¾ãã : Scene, Show, and Hide Interactive Director ã¯ Ren'Py èªèº«ã®åé¨ã§ã²ã¼ã ã¹ã¯ãªãããç·¨éã§ããããã«ããç·¨éçµæãã©ã¤ããã¬ãã¥ã¼ã§ãã¾ããDirector ã¯ãã­ã¹ãã¨ãã£ã¿ã¼ã®ä½¿ç¨ãå®å¨ã«ç½®ãæãããã®ã§ã¯ããã¾ããããã­ã¹ãã¨ãã£ã¿ã¼ã¯å°è©ãé¸æè¢ããã¸ã¥ã¢ã«ããã«ã®è«çãè¨è¿°ããã«ã¯ã¾ã å¿è¦ã§ãã ãªã¼ãã£ãªãã£ã³ãã«ã§å©ç¨å¯è½ãªãã¡ã¤ã«ã®æ¤ç´¢ã«ä½¿ç¨ããããªã¼ãã£ãªãã¿ã¼ã³ã®ããã©ã«ããªã¹ãã§ãã æåã«è¡¨ç¤ºããã Director ã¹ã¯ãªã¼ã³ã¯ç¾å¨è¡ä»¥åã«å®è¡ãããè¡ã®ãªã¹ããè¡¨ç¤ºãã¾ããè¡ãªã¹ãå¤ãã¯ãªãã¯ãã¦ã¹ã¯ãªãããé²ããããè¡ãªã¹ãå¤ã§ã­ã¼ã«ããã¯ãæ¼ãã¦ã­ã¼ã«ããã¯ãã¦ãã ãããè¡éã® + ã®ã¯ãªãã¯ã§è¡ãè¿½å ãããã â ãã¯ãªãã¯ãã¦ãã®è¡ãç·¨éãã¦ãã ããã director ã«ä½¿ç¨ãããã¹ã¯ã­ã¼ã­å¯è½ãª viewport ã®æå¤§é«ãã§ãã ãã¤ã¹ã«ä½¿ç¨ããããªã¼ãã£ãªãã£ã³ãã«ã®ååã§ãã play, show, stop ã¹ãã¼ãã¡ã³ãã§ä½¿ç¨ããããªã¼ãã£ãªãã£ã³ãã«ã®ååã§ãã scene ã¹ãã¼ãã¡ã³ãã«æ¸¡ããã show ã¹ãã¼ãã¡ã³ãã§ã¯éè¡¨ç¤ºã«ãªãã¿ã°ã®setåã§ãã director ã® (scene, show, hide, with, play, queue, voice) è¡ããdirector ä»¥å¤ã®è¡ãªã©ã®è¡éãç©ºãã¾ãããããã®ã¹ãã¼ã¹ã¯ 0 ã¾ãã¯ 1 ã§ããã¹ãã§ãããä»¥ä¸ã®ã¹ãã¼ã¹ã¯åä½ããªãã§ãããã é£ç¶ãã director è¡ã®è¡éã§ãã é£ç¶ãã director ä»¥å¤ã®è¡ã®è¡éã§ãã ãã£ã¹ã¯ä¸ã®ãã¡ã¤ã«åã Python ã½ã¼ã¹ã³ã¼ãä¸ã§ã®ãã¡ã¤ã«åã«å¤æããå¤ãã®ãªã¼ãã£ãªãã¡ã¤ã«ãã¼ã é¢æ°ãããã¾ããä¾ãã°ãä»¥ä¸ã®ã¹ãã¼ãã¡ã³ãã¯ :: ååç©ºé director ã«ã¯ Interactive Director ã®æ©è½ãå¶å¾¡ããå®ç¾©ãããå¤ãã®å¤æ°ãããã¾ãããããã¯ define ã¹ãã¼ãã¡ã³ãã Python ã®å¤æ´ã«ãã£ã¦è¨­å®åºæ¥ã¾ãã Transition (with) statements. Director ã®ä½¿ç¨ å¤æ° Viewport è¡ç·¨éæã«ã¯ãé©åãªå¼æ°ã¨ã¨ãã«ã¹ãã¼ãã¡ã³ãã¿ã¤ããé¸æã§ãã¾ãã "Add" ãé¸ã¶ã¨æ°ããè¡ãè¿½å ãã "Change" ãªãæ¢å­ã®è¡ãå¤æ´ãã "Cancel" ãªãç·¨éãã­ã£ã³ã»ã«ãã "Remove" ãªãæ¢å­ã®è¡ãåé¤ãã¾ãã With D (Shiftãªã) ã­ã¼ãæ¼ããªããã²ã¼ã ãéå§ããã¨ Director ã«ã¢ã¯ã»ã¹ã§ãã¾ããååèµ·åæã¯ã²ã¼ã ãåèµ·åããç·¨éã«å¿è¦ãªãã¼ã¿ãç¨æãã¾ãã æ¬¡ã®é¢æ°ãå®ç¾©ãã¦åããã¨ãã§ãã¾ãã ::   