Þ    o                 `	  è   a	  \   J
  Ó   §
  [   {  ¥   ×     }               °  	   ¾    È  o   ×  X   G  ×      Q   x     Ê  C   M  0     °   Â  9   s  Ï   ­  c   }     á     s  ¸   w  ±   0  
   â     í  V   ò     I     Z     i  »   y     5  j   E    °  i   Æ  à   0  s     ^        ä  m   h  %   Ö     ü  o     b     v   í     d  g  t  t   Ü  r   Q  ¼   Ä            ï   '   Î   !  ³   æ!    "  5   «#  ã   á#     Å$     J%  !   `%  !   %    ¤%  ¿   µ&     u'  ¥   (     µ(     <)  b   Ô)  )   7*  k   a*  O   Í*  ;   +  9   Y+     +  ´   +,  '   à,     -  Í   -     a.  T   }.  A   Ò.     /     ¢/     «/     ´/     »/  	   Ê/     Ô/     â/     ê/  	   ó/     ý/     0     0     %0     20     90     A0     I0     O0     ^0     n0     v0     0  %   0  $   ´0     Ù0  l  ö0    c2  Z   e3  Ù   À3  Z   4  ±   õ4     §5     ·5  $   Ó5     ø5     ÿ5  P  6  ¾   W7     8    °8  f   µ9  ¼   :  n   Ù:  _   H;  #  ¨;  M   Ì<    =     )>  ­   Á>     o?    s?    w@  
   A     A  |   A     B     B     4B  ú   DB     ?C  ±   [C  !  D     /E  ,  ÊE  ¬   ÷F  r   ¤G     H     ¯H  1   8I  3   jI  ¦   I  u   EJ  ¾   »J     zK  Ú  K  Y   kM  b   ÅM  ­   (N     ÖN  °   ñN  E  ¢O  Ú   èP  ã   ÃQ  L  §R  *   ôS  2  T  ½   RU  '   V  *   8V  $   cV  M  V    ÖW  Ú   ÞX  ·   ¹Y  Ì   qZ  §   >[  ]   æ[  7   D\     |\  l   ]  H   o]  N   ¸]  ï   ^     ÷^  N   `  Ã   g`  0  +a     \b  G   wb  7   ¿b  J   ÷b     Bc     Kc     Tc     [c  	   jc     tc     c     c  	   c     c     «c     ¹c     Åc     Òc     Ùc     ác     éc     ïc     þc     d     d  $   d  )   Dd  8   nd  ,   §d                e   O           8   J                               )   %   +      F          <   ^   i   5   g   &                 d   .   @   c      m   S               Z      $           V   E         b          0   !   `              >   
                 -      _   h      #   [       *   U   H   ;         Y   Q       ]   9   D   T   j   B   ?      M                   X   N             f      ,   R   A   a   C   6       k           /       =   '   P   1       7   W         	   K       3       n       l   L       2   (      I   :   G   \   o   "       4        A number between -1 and 1 that control the placement of the audio. If this is -1, then all audio is sent to the left channel. If it's 0, then the two channels are equally balanced. If it's 1, then all audio is sent to the right ear. A prefix that is prepended to the filenames of the sound files being played on this channel. A specified duration of silence can played using a filename like "<silence 3.0>", where 3.0 is the number of seconds of silence that is desired. This can be used to delay the start of a sound file. For example:: A suffix that is appended to the filenames of the sound files being played on this channel. As this may return None before a channel starts playing, or if the audio channel involved has been muted, callers of this function should always handle a None value. Audio Audio Namespace For example, one can write:: For example:: Functions If True, then the queue is cleared, making these files the files that are played when the currently playing file finishes. If it is False, then these files are placed at the back of the queue. In either case, if no music is playing these files begin playing immediately. If not None, this is a time in seconds to fade for. Otherwise the fadeout time is taken from config.fade_music. If the given channel is playing, returns the playing file name. Otherwise, returns None. If this is True, and the music file is currently playing, then it will not be stopped/faded out and faded back in again, but instead will be kept playing. (This will always queue up an additional loop of the music.) If this is True, the tracks will loop while they are the last thing in the queue. If this is True, then fadeouts will span into the next-queued sound. If None, this is true when loop is True, and false otherwise. If true, music on the channel is stopped when the channel is muted. If true, sounds on this channel loop by default. If true, sounds will loop even when fadeout is occurring. This should be set to True for a sound effects or seamless music channel, and False if the music fades out on its own. If true, this channel will be set up to play back videos. In addition to the normal channel, there is one special channel, ``audio``. The audio channel supports playing back multiple audio files at one time, but does not support queueing sound or stopping playback. In-game, the usual way to play music and sound in Ren'Py is using the three music/sound statements. It takes delay seconds to change/fade the volume from the old to the new value. This value is persisted into saves, and participates in rollback. MP3 Most renpy.music functions have aliases in renpy.sound. These functions are similar, except they default to the sound channel rather than the music channel, and default to not looping. Normal channels support playing and queueing audio, but only play back one audio file at a time. New normal channels can be registered with :func:`renpy.music.register_channel`. OGG Vorbis OPUS On the audio channel, multiple play statements play multiple sounds at the same time:: Partial Playback Play Statement Playing Silence Plays a sound effect. If `channel` is None, it defaults to :var:`config.play_channel`. This is used to play sounds defined in styles, :propref:`hover_sound` and :propref:`activate_sound`. Queue Statement Ren'Py supports an arbitrary number of audio channels. There are three normal channels defined by default: Ren'Py supports partial of audio files. This is done by putting a playback specification, enclosed in angle brackets, at the start of the file. The partial playback specification should consist of alternating property name and value pairs, with every thing separated by spaces. Ren'Py supports playing music and sound effects in the background, using the following audio file formats Ren'Py will ensure that all channels of with synchro_start set to true will start playing at exactly the same time. Synchro_start should be true when playing two audio files that are meant to be synchronized with each other. Returns True if the channel is currently playing a sound, False if it is not, or if the sound system isn't working. Returns True if the given filename has been played at least once on the current user's system. Returns the current position of the audio or video file on `channel`, in seconds. Returns None if no audio is playing on `channel`. Returns the duration of the audio or video file on `channel`. Returns 0.0 if no file is playing on `channel`. Returns the pause flag for `channel`. Sets the pan of this channel. Sets the pause flag for `channel` to `value`. If True, the channel will pause, otherwise it will play normally. Sets the volume of this channel, as a fraction of the volume of the mixer controlling the channel. Should we buffer the first second or so of a queued file? This should be True for audio, and False for movie playback. Sound Functions Sounds can also be set to play when buttons, menu choices, or imagemaps enter their hovered or activated states. See :ref:`Button Style Properties <button-style-properties>`. Two configuration variables, :var:`config.main_menu_music` and :var:`config.game_menu_music` allow for the given music files to be played as the main and game menu music, respectively. Specifies the position in the file at which the file ends playing. (This defaults to the full duration of the file.) Specifies the position in the file at which the first play-through begins playing. (This defaults to 0.0 seconds.) Specifies the position in the file at which the second and later play-throughs begin playing. (This defaults to the start time given by ``from`` if specified, or to the start of the file.) Stop Statement The 'Music Volume', 'Sound Volume', and 'Voice Volume' settings of the in-game preferences menu are used to set individual volumes for these channels. The ``fadein`` and ``fadeout`` clauses are optional. Fadeout gives the fadeout time for currently playing music, in seconds, while fadein gives the time it takes to fade in the new music. If fadeout is not given, config.fade_music is used. The ``loop`` and ``noloop`` clauses are also optional. The loop clause causes the music to loop, while noloop causes it to play only once. If both of them isn't given, the default of the channel is used. :: The ``play`` and ``queue`` statements evaluate their arguments in the audio namespace. This means it is possible to use the define statement to provide an alias for an audio file. The advantage of using these statements is that your program will be checked for missing sound and music files when lint is run. The functions below exist to allow access to allow music and sound to be controlled from python, and to expose advanced (rarely-used) features. The amount of time it takes for the panning to occur. The callback is called with no parameters. It can queue sounds by calling renpy.music.queue with the appropriate arguments. Please note that the callback may be called while a sound is playing, as long as a queue slot is empty. The channel the panning takes place on. This can be a sound or a music channel. Often, this is channel 7, the default music channel. The channel to be set The channel to play the sound on. The channel to stop the sound on. The name of a channel is expected following keyword ``play``, (Usually, this is either "sound", "music", "voice", or "audio"). This is followed by audiofile(s), where audiofile(s) can be one file or list of files. When the list is given, the item of it is played in order. The name of the mixer the channel uses. By default, Ren'Py knows about the "music", "sfx", and "voice" mixers. Using other names is possible, but may require changing the preferences screens. The play statement is used to play sound and music. If a file is currently playing on a normal channel, it is interrupted and replaced with the new file. The queue statement begin with keyword ``queue``, followed by the the name of a channel to play sound on. It optionally takes the ``loop`` and ``noloop`` clauses. :: The queue statement is used to queue up audio files. They will be played when the channel finishes playing the currently playing file. The stop statement begin with keyword ``stop``, followed by the the name of a channel to stop sound on. It may optionally have a ``fadeout`` clause. :: The values are always interpreted as seconds from the start of the file. The three properties are: This clears the pause flag for `channel`. This is a number between 0.0 and 1.0, and is interpreted as a fraction of the mixer volume for the channel. This is the number of seconds to fade the music in for, on the first loop only. This may be a single file, or a list of files to be played. This queues the given filenames on the specified channel. This registers a new audio channel named `name`. Audio can then be played on the channel by supplying the channel name to the play or queue statements. This sets a callback that is called when the queue is empty. This callback is called when the queue first becomes empty, and at least once per interaction while the queue is empty. This sets the last queued file to None. This stops the music currently playing on the numbered channel, dequeues any queued music, and begins playing the specified file or files. This stops the music that is currently playing, and dequeues all queued music. If fadeout is None, the music is faded out for the time given in config.fade_music, otherwise it is faded for fadeout seconds. WAV (uncompressed PCM only) Will play 10.5 seconds of waves.opus, starting at the 5 second mark. The statement:: Will play silence for half a second, and then an explosion sound. Will play song.opus all the way through once, then loop back to the 6.333 second mark before playing it again all the way through to the end. ``from`` ``loop`` ``to`` `buffer_queue` `channel` `clear_queue` `delay` `fadein` `fadeout` `file_prefix` `file_suffix` `filenames` `if_changed` `loop` `mixer` `movie` `pan` `stop_on_mute` `synchro_start` `tight` `volume` and then use:: music - A channel for music playback. sound - A channel for sound effects. voice - A channel for voice. Project-Id-Version: renpy-doc
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-08-04 18:15+0900
PO-Revision-Date: 2017-08-04 20:17+0900
Last-Translator: 
Language-Team: Japanese <ja@li.org>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2015-03-29 05:43+0000
X-Generator: Poedit 1.5.7
 é³æºã®ä½ç½®ãå¶å¾¡ãã -1 ãã 1 ã¾ã§ã®éã®æ°å­ã§ããããã -1 ã ã¨å¨ã¦ã®é³ã¯å·¦å´ã®ãã£ã³ãã«ã«éããã 0 ã ã¨ 2 ã¤ã®ãã£ã³ãã«ã¯ç­ãããªãã¾ãã 1 ãªãå¨ã¦ã®é³ã¯å³å´ã«éããã¾ãã ãã®ãã£ã³ãã«ã§åçãããæ²ã®ãã¡ã¤ã«åã«ã¤ããããæ¥é ­è¾ã 3.0 ç§ã®ç¡é³ãæ¬²ããå ´åã "<silence 3.0>" ã®ãããªååã®ãã¡ã¤ã«åãä½¿ç¨ãã¦ãæå®ãããæéç¡é³ãåçã§ãã¾ããããã«ããåçä½ç½®ãéå»¶ã§ãã¾ãã ä¾ :: ãã®ãã£ã³ãã«ã§åçãããæ²ã®ãã¡ã¤ã«åã«ã¤ããããæ¥å°¾è¾ã ãã£ã³ãã«ãåçåã§ãã£ããããã¥ã¼ãã«ãããã¨ None ãè¿ãããããã®é¢æ°ãå¼ã³åºãã³ã¼ãã¯å¸¸ã« None ãå¦çããã¹ãã§ãã ãªã¼ãã£ãª Audio ãã¼ã ã¹ãã¼ã¹ ä¾ãã°ãã®ããã«æ¸ãã¨ :: ä¾ :: é¢æ° True ãªãç¾å¨ã®åçãçµäºããã¨ã­ã¥ã¼ãã¯ãªã¢ãããã¨å±ã«ãããã®ãã¡ã¤ã«ãåçããã¾ãã False ãªããããã®ãã¡ã¤ã«ã¯ã­ã¥ã¼ã®æ«å°¾ã«éç½®ããã¾ããã©ã¡ãã®å ´åã§ãé³æ¥½ãåçããã¦ããªããã°ãããã®ãã¡ã¤ã«ã¯å³åº§ã«åçéå§ãã¾ãã None ãæå®ãããããã§ã¼ãã¢ã¦ãã«ãããç§æ°ãæå®ãã¾ããããã§ãªããã°ãã§ã¼ãã¢ã¦ãã®æéã¯ :var:`config.fade_music` ããåããã¾ãã æå®ããããã£ã³ãã«ãåçä¸­ã®å ´åãåçä¸­ã®ãã¡ã¤ã«ã®ååãè¿ãã¾ããããä»¥å¤ã®å ´åã¯ None ãè¿ãã¾ãã ããã True ã§ãã®ãªã¼ãã£ãªãã¡ã¤ã«ãç¾å¨åçä¸­ãªããåæ­¢ããã§ã¼ãã¢ã¦ããåã³æåããåçãããã«åçãç¶ç¶ãã¾ãã ( ããã¯å¸¸ã«ãã®ãªã¼ãã£ãªãã¡ã¤ã«ãã­ã¥ã¼ã«è¿½å ãã¾ãã ) ããã True ãªããã©ãã¯ã¯ãããã­ã¥ã¼ã®æå¾ã«ããéã«ã¼ããç¶ãã¾ãã True ãªããã§ã¼ãã¢ã¦ãã¯æ¬¡ã«ã­ã¥ã¼ããããµã¦ã³ãã«ãé©ç¨ããã¾ããNone ãªã loop ã True ã®ã¨ã True ã«ãªããããã§ãªããã° false ã§ãã True ã®å ´åããã®ãã£ã³ãã«ã®æ²ã¯ãã£ã³ãã«ããã¥ã¼ãã«ãªã£ããåæ­¢ãã¾ãã True ã®å ´åããã®ãã£ã³ãã«ã®ãµã¦ã³ãã¯ããã©ã«ãã§ã«ã¼ããã¾ãã True ã®å ´åããµã¦ã³ãã¯ãã§ã¼ãã¢ã¦ãä¸­ã§ãã«ã¼ããã¾ããããã¯ããµã¦ã³ãã¨ãã§ã¯ããã·ã¼ã ã¬ã¹ãªãã¥ã¼ã¸ãã¯ãã£ã³ãã«ã«å¯¾ãã¦ True ã«ãæ²ãããèªèº«ã§ãã§ã¼ãã¢ã¦ãããå ´åã¯ False ã«è¨­å®ãã¹ãã§ãã True ãªããã®ãã£ã³ãã«ã¯ãããªåçç¨ã«è¨­å®ããã¾ãã ãã¼ãã«ãã£ã³ãã«ã«å ãã¦ãç¹å¥ãªãã£ã³ãã« ``audio`` ãããã¾ãããã® audio ãã£ã³ãã«ã¯åæã«è¤æ°ã®ãªã¼ãã£ãªã®åçããµãã¼ããã¾ããããµã¦ã³ãã®ã­ã¥ã¼ãåçã®åæ­¢ã¯ãµãã¼ããã¾ããã ã²ã¼ã ä¸­ã«ã Ren'Py ã§æ²ã¨å¹æé³ãåçããéå¸¸ã®æ¹æ³ã¯ 3 ã¤ã® music/sound  ã¹ãã¼ãã¡ã³ããä½¿ç¨ãããã¨ã§ãã ä»¥åã®å¤ããæ°ããå¤ã«é³éãå¤æ´ããã®ã« ``delay`` ç§æããã¾ãããã®å¤ã¯ã»ã¼ãã«ä¿å­ãããã­ã¼ã«ããã¯ã«ãåå ãã¾ãã MP3 ã»ã¨ãã©ã® renpy.music é¢æ°ã¯ renpy.sound ã«ã¨ã¤ãªã¢ã¹ãæã¡ã¾ãããããã®é¢æ°ã¯ããã©ã«ãã§ music ãã£ã³ãã«ã§ã¯ãªã sound ãã£ã³ãã«ã«è¨­å®ããã¦ãããã«ã¼ãããªããã¨ãé¤ãã¦åãã§ãã ãã¼ãã«ãã£ã³ãã«ã¯ãªã¼ãã£ãªã®åçãã­ã¥ã¼ã«å¯¾å¿ãã¾ãããåæã«ã²ã¨ã¤ã®ãªã¼ãã£ãªãã¡ã¤ã«ã®ã¿åçãã¾ããæ°ãããã¼ãã«ãã£ã³ãã«ã¯ :func:`renpy.music.register_channel` ã§ç»é²ããã¾ãã OGG Vorbis OPUS ãã® auido ãã£ã³ãã«ã§ã¯è¤æ°ã® play ã¹ãã¼ãã¡ã³ãã§åæã«è¤æ°ã®ãµã¦ã³ããåçãã¾ãã é¨ååç play ã¹ãã¼ãã¡ã³ã Playing Silence å¹æé³ãåçãã¾ãã `channel` ã None ãªããããã©ã«ãã§ :var:`config.play_channel` ã«ãªãã¾ããããã¯  :propref:`hover_sound` ã¨ :propref:`activate_sound` ã¹ã¿ã¤ã«ã§å®ç¾©ããããµã¦ã³ããåçãã¾ãã queue ã¹ãã¼ãã¡ã³ã Ren'Py ã¯ä»»æã®æ°ã®ãªã¼ãã£ãªãã£ã³ãã«ããµãã¼ããã¦ãã¾ããããã©ã«ãã§ã¯ 3 ã¤ã®ãã¼ãã«ãã£ã³ãã«ãå®ç¾©ããã¦ãã¾ãã : Ren'Py ã¯ãªã¼ãã£ãªãã¡ã¤ã«ã®é¨åçãªåçããµãã¼ããã¾ãããã®ããã«ã¯ãã¡ã¤ã«ã®å§ãã®å±±æ¬å¼§ã®ãªãã§ä½ç½®ãæå®ãã¾ããé¨ååçæå®ã¯é©åãªååã¨å¤ã®ãã¢ãããªããããããã¹ãã¼ã¹ã§åºåããã¾ãã Ren'Py ã¯ä»¥ä¸ã®ãã©ã¼ãããã®ãã¡ã¤ã«ãä½¿ç¨ããããã¯ã°ã©ã¦ã³ãã§ã®é³æ¥½ãå¹æé³åçããµãã¼ããã¦ãã¾ãã Ren'Py ã§ã¯ãsynchro_start ã True ã«è¨­å®ããããã£ã³ãã«ã®éã§ãåçã®éå§ãåæã«è¡ããã¨ãä¿è¨¼ã§ãã¾ããäºãã«åæããããã¨ãæå³ãã2ã¤ã®ãªã¼ãã£ãªãã¡ã¤ã«ãåçããå ´åãsynchro_start ã True ã«è¨­å®ãã¹ãã§ãã æå®ããããã£ã³ãã«ãåçä¸­ãªã True ãè¿ãã¾ããåçä¸­ã§ãªãããµã¦ã³ãã·ã¹ãã ãåä½ãã¦ããªããªã False ãè¿ãã¾ãã æå®ãããã¡ã¤ã«åã 1 åº¦ã§ãç¾å¨ã®ã¦ã¼ã¶ã¼ã«åçããã¦ããã° True ãè¿ãã¾ãã `channel` ã®ãªã¼ãã£ãªããããªã®ç¾å¨ä½ç½®ãç§æ°ã§è¿ãã¾ãããã¡ã¤ã«ãåçããã¦ããªããã° None ãè¿ãã¾ãã `channel` ã®ãªã¼ãã£ãªããããªã®é·ããè¿ãã¾ãã ãã¡ã¤ã«ãåçããã¦ããªããã° 0.0 ãè¿ãã¾ãã `channel` ã®ãã¼ãºãã©ã°ãè¿ãã¾ãã ãã®ãã£ã³ãã«ã®ãã³ãè¨­å®ãã¾ãã `channel` ã®ãã¼ãºãã©ã°ã `value` ã«è¨­å®ãã¾ãã True ãªãããã£ã³ãã«ã¯ãã¼ãºããããã§ãªããã°éå¸¸ã©ããåçãã¾ãã ãã®ãã£ã³ãã«ã®é³éãããã£ã³ãã«ãå¶å¾¡ãããã­ãµã¼ã®é³éã®å²åã§è¨­å®ãã¾ãã ã­ã¥ã¼ã«å¥ãããã¡ã¤ã«ã®æåã®æ°ç§ãã¡ã¢ãªã«å±éãã¾ããï¼ããã¯ãªã¼ãã£ãªã«å¯¾ãã¦ã¯ True ãã ã¼ãã¼ã«å¯¾ãã¦ã¯ False ã«ãã¹ãã§ãã ãµã¦ã³ãã®é¢æ° ãµã¦ã³ãã¯ãã¿ã³ãé¸æè¢ãã¤ã¡ã¼ã¸ãããããã©ã¼ã«ã¹ãæã¤ãæ¼ãããã¨åçããããã«ãè¨­å®åºæ¥ã¾ãã :ref:`Button Style Properties <button-style-properties>` ãåç§ãã¦ãã ããã 2 ã¤ã®è¨­å®å¤æ° :var:`config.main_menu_music` ã¨ :var:`config.game_menu_music` ããããæå®ããããªã¼ãã£ãªãã¡ã¤ã«ãã¡ã¤ã³ã¡ãã¥ã¼ã¨ã²ã¼ã ã¡ã¤ã³ã¡ãã¥ã¼ã§åçããããã«åºæ¥ã¾ãã æåã«åçãåæ­¢ããä½ç½®ãæå®ãã¾ãã (ããã©ã«ãã§ã¯ 0.0 ç§) æåã«åçãéå§ããã¨ãã®ä½ç½®ãæå®ãã¾ãã (ããã©ã«ãã§ã¯ 0.0 ç§) äºåç®ããã®åçéå§ä½ç½®ãæå®ãã¾ãã (ããã©ã«ãã§ã¯ ``from`` ã§æå®ãããéå§ä½ç½®ã¾ãã¯ãã®ãã¡ã¤ã«ã®éå§ä½ç½®ã§ãã ) stop ã¹ãã¼ãã¡ã³ã ã²ã¼ã åã§è¨­å®ç»é¢ã® 'Music Volume', 'Sound Volume',  'Voice Volume'  ãè¨­å®ãã¦ããããã®ãã£ã³ãã«ã®åãã®ããªã¥ã¼ã ãè¨­å®ã§ãã¾ãã ``fadein`` ã¨ ``fadeout`` ç¯ã¯ä»»æã§ãã fadeout ã¯ç¾å¨åçä¸­ã®æ²ããã§ã¼ãã¢ã¦ãããæéãç§æ°ã§æå®ãã fadein ã¯æ°ããæ²ããã§ã¼ãã¤ã³ããã®ã«ãããæéãæå®ãã¾ãã fadeout ãæå®ããã¦ããªãã¨ã :var:`config.fade_music` ãä½¿ç¨ããã¾ãã ``loop``, ``noloop`` ç¯ãä»»æã§ãã loop ç¯ã¯æ²ãã«ã¼ããã noloop ç¯ã¯ä¸åº¦ã ãåçãã¾ããä¸¡æ¹ã¨ãæå®ãããªãå ´åã¯ãã£ã³ãã«ã®ããã©ã«ããä½¿ç¨ããã¾ãã :: ``play`` ã¨ ``queue`` ã¹ãã¼ãã¡ã³ãã¯ audio ãã¼ã ã¹ãã¼ã¹ã§ãã®å¼æ°ãè©ä¾¡ãã¾ããããã«ãã define ã¹ãã¼ãã¡ã³ãã§ãªã¼ãã£ãªãã¡ã¤ã«ã«ã¨ã¤ãªã¢ã¹ãå®ç¾©åºæ¥ã¾ãã ãããã®ã¹ãã¼ãã¡ã³ããä½¿ç¨ããå©ç¹ã¯ lint ãå®è¡æã«ãªã¼ãã£ãªãã¡ã¤ã«ã®æ¶å¤±ããã§ãã¯åºæ¥ããã¨ã§ããä»¥ä¸ã®é¢æ°ã¯æ²ã¨å¹æé³ã python ããå¶å¾¡åºæ¥ãããã«ãã ( æ»å¤ã«ä½¿ç¨ããã¾ããã ) åé²çãªæ©è½ãå©ç¨ããããã«å­å¨ãã¾ãã ãã³ã®å®è¡ã«æããæéã§ãã ã³ã¼ã«ããã¯ã¯å¼æ°ãªãã§å¼ã³åºããã¾ããããã¯é©åãªå¼æ°ã§ :func:`renpy.music.queue` ãå¼ã³åºãã¦æ²ãã¨ã³ã­ã¥ã¼åºæ¥ã¾ããã³ã¼ã«ããã¯ã¯ã­ã¥ã¼ãç©ºã§ããéãæ²ãåçããã¦ããéãå¼ã³åºããããã¨ã«æ³¨æãã¦ãã ããã ãã³ãå®è¡ãããã£ã³ãã«ã§ããããã¯ sound ã¾ãã¯ music ãã£ã³ãã«ã§ããå¤§æµããã¯ãã£ã³ãã« 7 ã§ãããã©ã«ãã® music ãã£ã³ãã«ã§ãã è¨­å®ããããã£ã³ãã«ã§ãã ãµã¦ã³ããåçãããã£ã³ãã« åçãåæ­¢ãããã£ã³ãã« ãã£ã³ãã«åãã­ã¼ã¯ã¼ã ``play`` ã«ç¶ããã¨ãæå¾ããã¾ãã ( éå¸¸ããã¯ãsound ããã music ãã voice ãã®ããããã§ãã ) ãã®å¾ã«ã¯ãªã¼ãã£ãªãã¡ã¤ã«ããã¡ã¤ã«ã®ãªã¹ããç¶ãã¾ãããªã¹ããæå®ãããã¨ãã®è¦ç´ ãé çªã«åçããã¾ãã ãã£ã³ãã«ãä½¿ç¨ãããã­ãµã¼ã®ååãããã©ã«ãã§ Ren'Py ã«ã¯ã music ã,ã sfx ã,ã voice ããã­ãµã¼ãè¨­å®ããã¦ãã¾ããä»ã®ååã®ä½¿ç¨ã¯å¯è½ã§ãããè¨­å®ç»é¢ã®å¤æ´ãå¿è¦ããããã¾ããã play ã¹ãã¼ãã¡ã³ãã¯æ²ãå¹æé³ãåçããããã«ä½¿ç¨ããã¾ãããã¡ã¤ã«ãéå¸¸ã®ãã¼ãã«ãã£ã³ãã«ã§åçä¸­ãªããåæ­¢ãã¦æ°ãããã¡ã¤ã«ã§ç½®ãæãã¾ãã queue ã¹ãã¼ãã¡ã³ãã¯ã­ã¼ã¯ã¼ã ``queue`` ã§å§ã¾ããåçãããã£ã³ãã«ã®ååãç¶ãã¾ããä»»æã§ ``loop`` ã ``noloop`` ç¯ãåãã¾ãã :: queue ã¹ãã¼ãã¡ã³ãã¯ãªã¼ãã£ãªãã¡ã¤ã«ãã­ã¥ã¼ããããã«ä½¿ç¨ããã¾ãããããã¯ãã£ã³ãã«ãç¾å¨åçä¸­ã®ãã¡ã¤ã«ãçµäºããã¨åçããã¾ãã stop ã¹ãã¼ãã¡ã³ãã¯ã­ã¼ã¯ã¼ã ``stop`` ã§å§ã¾ããã¹ããããã ãã£ã³ãã«ãç¶ãã¾ããä»»æã§ ``fadeout`` ç¯ãæã¡ã¾ãã :: å¤ã¯ãã¡ã¤ã«ã®éå§ããã®ç§æ°ã¨è§£éããã¾ãã3ã¤ã®ãã­ããã£ã¼ : `channel` ã®ãã¼ãºãã©ã°ãã¯ãªã¢ãã¾ãã ããã¯ 0.0 ã¨ 1.0 ã®éã®æ°å­ã§ããã®ãã£ã³ãã«ã®ãã­ãµã¼ããªã¥ã¼ã ã®å²åã¨ãã¦è§£éããã¾ãã ããã¯æ²ããã§ã¼ãã¤ã³ããã®ã«ãããç§æ°ã§ãæåã®ã«ã¼ãã§ã®ã¿æå¹ã§ãã ããã¯åçããããã¡ã¤ã«ããã¡ã¤ã«ã®ãªã¹ãã§ãã æå®ããããã¡ã¤ã«ãç¹å®ã®ãã£ã³ãã«ã«ã­ã¥ã¼ãã¾ãã `name` ã¨åä»ããããæ°ãããªã¼ãã£ãªãã£ã³ãã«ãç»é²ãã¾ãããªã¼ãã£ãªã¯ãã£ã³ãã«ã®ååã play ã¾ãã¯ queue ã¹ãã¼ãã¡ã³ãã«ä¸ããã¨ããã®ãã£ã³ãã«ã§åçããã¾ãã ããã¯ã­ã¥ã¼ãç©ºã«ãªã£ãã¨ãã«å¼ã³åºãããã³ã¼ã«ããã¯ãè¨­å®ãã¾ãããã®ã³ã¼ã«ããã¯ã¯ã­ã¥ã¼ãæåã«ç©ºã«ãªã£ãã¨ãã¨ã­ã¥ã¼ãç©ºã«ãªã£ã¦ããéã®ã¤ã³ã¿ã©ã¯ã·ã§ã³æ¯ã«å°ãªãã¨ã 1 åå¼ã³åºããã¾ãã ããã¯æå¾ã«ã­ã¥ã¼ããããã¡ã¤ã«ã None ã«è¨­å®ãã¾ãã ããã¯æå®ããããã£ã³ãã«ã§ç¾å¨åçä¸­ã®æ²ãåæ­¢ããã­ã¥ã¼ãããæ²ãã¯ãªã¢ããæå®ããããã¡ã¤ã«ããã¡ã¤ã«ãªã¹ããåçéå§ãã¾ãã ããã¯ç¾å¨åçä¸­ã®æ²ãåæ­¢ãã¦ãã¨ã³ã­ã¥ã¼ãããå¨ã¦ã®æ²ããã­ã¥ã¼ãã¾ãã ``fadeout`` ã None ãªãæ²ã¯ :var:`config.fade_music` ã§æå®ãããæéã§ãã§ã¼ãã¢ã¦ããã¾ããããã§ãªããã° ``fadeout`` ç§ã§ãã§ã¼ãã¢ã¦ããã¾ãã WAV (éå§ç¸® PCM ã®ã¿) 5 ç§ããéå§ãã 10.5 ç§é waves.opus ãåçãã¾ãã :: 0.5 ç§ã®ç¡é³ã®å¾ãççºé³ãåçãã¾ãã song.opus ãä¸ååçããã¨ã 6.333 ç§ããã«ã¼ããã¾ãã ``from`` ``loop`` ``to`` `buffer_queue` `channel` `clear_queue` `delay` `fadein` `fadeout` `file_prefix` `file_suffix` `filenames` `if_changed` `loop` `mixer` `movie` `pan` `stop_on_mute` `synchro_start` `tight` `volume` ãã®ããã«ä½¿ç¨ãã¾ãã :: music - é³æ¥½åçç¨ãã£ã³ãã«ã sound - ãµã¦ã³ãã¨ãã§ã¯ãç¨ãã£ã³ãã«ã voice - ãã¤ã¹åçç¨ãã£ã³ãã«ã 