Þ    _                   0   	  S   :          §  9   ¯  ?  é  	   )
  Z   3
  î   
  *   }  h   ¨      !     x   µ  
   .  Ë   9       t     =     =   Ï  t    î     :   q  9   ¬  9   æ  @         a     r  þ     ª     (   /  '   X  4     v   µ  r   ,  =     O   Ý     -  ~   ¿  e   >  i  ¤  {          Z   )  ò     !   w       ¶     ¤   Ò  ´   w  Ò   ,  Ô   ÿ  §   Ô   |   |!  c   ù!  S   ]"     ±"  y   3#    ­#  ,   C%     p%  9   }%  ¬   ·%  æ   d&     K'     Ò'     ×'  	   ã'     í'     ô'  	   û'     (     (     (     #(     ,(     4(  	   <(  
   F(     Q(     `(     l(     u(     |(     (     (     (     ¦(     ®(     ¼(     Å(     Ò(     Ú(  	   â(  l  ì(  =   Y*  l   *  !   +     &+  =   6+  w  t+     ì,     õ,  T  -  <   á.  y   /    /  .   ª1     Ù1  
   d2  þ   o2     n3  ±   3  _   ?4  C   4  1  ã4    7  E   /8  E   u8  Q   »8  `   9     n9     9  !  9     À:  -   X;  .   ;  4   µ;     ê;     <  P   =  Z   m=     È=     f>     ÿ>  ®  ?  Ø   .A  ¯   B  `   ·B  1  C  5   JD  º   D    ;E  º   CF    þF  ö   H    þH  Í   J  §   ÚJ     K     L      L  Ò   %M  ÷  øM  X   ðO  	   IP  &   SP  é   zP  <  dQ  é   ¡R     S     S     ©S     ÂS     ÉS  	   ÐS     ÚS     âS     ïS     øS     T     	T  	   T  
   T     &T     5T     AT     JT     QT     ZT     bT     jT     {T     T     T     T     §T     ¯T  	   ·T     +   )   &              P             4   O      J   *   ?   $             .   9   -       \      =   T             >   L          0   E   B   A         ^      X   3       C                 (   ,   5   U       %          _       #   M           G       S      N   @   ;       [      W       Q      D   	   Y               "               6   H   F   K              /   
   !           ]      I          7          R          2         '       <      1   Z   V      8       :    (It really should have an `id` parameter added.) A callable python object (like a function or bound method) that takes no arguments. A list of other Actions. Actions An object of a class that inherits from the Action class. As an example of a creator-defined screen language statement, here's an implementation of the ``titledwindow`` statement given above. First, the statement must be registered in a python early block in a file that is loaded early - a name like 01custom.rpy will often load soon enough. The registration call looks like:: BarValues Called when the text of the input is changed, with the new text. This must be implemented. Called when the user presses enter. If this returns a non-None value, that value is returned from the interacton. This may also raise renpy.IgnoreEvent() to ignore the press. Otherwise, the enter-press is propagated to other displayables. Creator-Defined Screen Language Statements Creator-defined screen language statements are registered with the renpy.register_sl_statement function: Creator-defined screen language statements must be registered in a python early block. What's more, the filename containing the creator-defined statement must be be loaded earlier than any file that uses it. Since Ren'Py loads files in unicode sort order, it generally makes sense to prefix the name of any file registering a user-defined statement with 01, or some other small number. Here's an example python screen:: If true, the input is eligible to be editable by default. (That is, it may be given the caret when the screen is shown.) InputValue It can be used to update the value of the bar over time, like :func:`AnimatedValue` does. To do this, get_adjustment should store the adjustment, and periodic should call the adjustment's changed method. It takes one argument: Many of the displayables created in the screen language take actions as arguments. An action is one of three things: Note that __call__ can be called, even if this returns False. Note that `other` is not necessarily the same type as `self`. Ren'Py supports defining custom screen language statements. Creator-defined screen language statements are wrappers for the screen language :ref:`use statement <sl-use>`. Positional arguments remain positional arguments, properties become keyword arguments, and if the statement takes a block, so does the use statement. For example, the custom screen language statement:: Ren'Py supports defining screens in Python, as well as in the Ren'Py screen language. A Python screen is created by supplying a screen function to the :func:`renpy.define_screen` function. It can then be used like it was any other screen. Returns an action that disables text editing on the input. Returns an action that enables text editing on the input. Returns an action that toggles text editing on the input. Returns the default text of the input. This must be implemented. Screen Functions Screens and Python The UI functions are python equivalents of the screen language statements. For each screen language statement, there is a ui function with the same name. For example, ui.text corresponds to the text statement, and ui.add corresponds to the add statement. The advantage to inheriting from the Action class is that it allows you to override the methods that determine when a button should be sensitive, and when it is selected. The default implementation returns True. The default implemention returns False. The following UI functions do not take any children. The following UI functions take a single child. They must be given that child - use ui.null() if the child is missing. The following UI functions take multiple children. They continue taking children until :func:`ui.close` is called. The following actions are available as methods on InputValue: The following functions support the definition, display, and hiding of screens. The implementation of Ren'Py has changed, and UI functions that create displayables can now be far slower than their screen language equivalents. The main use of this is to call :func:`renpy.restart_interaction` if the value of get_selected or get_sensitive should change. The number of seconds since the screen or displayable this action is associated with was first shown. The screen function should have parameters corresponding to the scope variables it expects, and it should ignore extra keyword arguments. (That is, it should have `**kwargs` at the end of its parameter list.) It is then expected to call the UI functions to add displayables to the screen.The screen function is called whenever an interaction starts or restarts. Then, we define a screen that implements the custom statement. This screen can be defined in any file. One such screen is:: There are a few UI functions that do not correspond to screen language statements, as they correspond to concepts that are not present in the screen language. There are three groups of UI functions, corresponding to the number of children they take. There is a simple mapping between screen language parameters and arguments and python arguments. Screen language parameters become positional arguments, while properties become keyword arguments. For example, the screen language statement: :: This defaults to ("bar", "vbar"). This is called to determine if the button with this action should be sensitive. It should return true if the button is sensitive. This is called when a BarValue replaces another BarValue, such as when a screen is updated. It can be used to update this BarValue from the other. It is called before get_adjustment. This is the method that is called when the action is activated. In many cases, returning a non-None value from the action will cause the current interaction to end. This is used to determine the style of bars that use this value. It should return a tuple of two style names or style objects. The first is used for a bar, and the second for vbar. This method is called once at the start of each interaction, and then is called periodically thereafter. If it returns a number, it will be called before that many seconds elapse, but it might be called sooner. This method is called once at the start of each interaction. If it returns a number of seconds, it will be called before that many seconds elapse, but it might be called sooner. It is called after get_adjustment. This method is called to get an adjustment object for the bar. It should create the adjustment with :func:`ui.adjustment`, and then return the object created this way. This method must be overridden, as the default method will raise NotImplemented (and hence cause Ren'Py to report an error). This should return true if the button should be rendered as a selected button, and false otherwise. To define a new BarValue, inherit from this class and override some of the methods. To define a new InputValue, inherit from this class, override some or all of the methods, and set the value of the default field. To define a new action, inherit from this class. Override the methods in this class to change the behavior of the action. To ensure that this restarting is seamless to the user (and not causing things to reset), it's important that every call to a UI function supply the `id` argument. As a screen is re-created, Ren'Py will update each displayable with the contents of the old displayable with the same id. Ids are generated automatically by the screen language, but when doing things by hand, they must be manually specified. To run an action from python, use renpy.run. UI Functions Warning: UI Functions are deprecated and not recommended. When creating a bar, vbar, or hotbar, a BarValue object can be supplied as the `value` property. Methods on the BarValue object are called to get the adjustment and styles. When creating an input, an InputValue object can be supplied as the `value` property. Methods on the InputValue object are called to get and set the text, determine if the input is editable, and handle the enter key being pressed. When the action is used as the `hovered` parameter to a button (or similar object), this method is called when the object loses focus. `st` becomes: :: becomes:: ui.add ui.bar ui.button ui.drag ui.draggroup ui.fixed ui.frame ui.grid ui.hbox ui.hotbar ui.hotspot ui.imagebutton ui.imagemap ui.input ui.key ui.label ui.null ui.side ui.spritemanager ui.text ui.textbutton ui.timer ui.transform ui.vbar ui.vbox ui.window Project-Id-Version: renpy-doc
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-02-12 18:16+0900
PO-Revision-Date: 2018-02-12 21:40+0900
Last-Translator: 
Language-Team: Japanese <ja@li.org>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2015-04-08 05:43+0000
X-Generator: Poedit 1.5.7
 ( å®éã«ã¯ `id` å¼æ°ãè¿½å ãããã¹ãã§ãã ) å¼æ°ãåããªãå¼ã³åºãå¯è½ãª ( é¢æ°ã bound method ã®ãããª ) python ãªãã¸ã§ã¯ã ä»ã®ã¢ã¯ã·ã§ã³ã®ãªã¹ã ã¢ã¯ã·ã§ã³ Action ã¯ã©ã¹ãç¶æ¿ããã¯ã©ã¹ã®ãªãã¸ã§ã¯ã ã¦ã¼ã¶ã¼å®ç¾©ã¹ã¯ãªã¼ã³è¨èªã¹ãã¼ãã¡ã³ãã®ä¾ã¨ãã¦ãä¸è¨ã§æå®ãã ``titlewindow`` ã¹ãã¼ãã¡ã³ãã®å®è£ãç¤ºãã¾ããåãã 01custom.rpy ã®ãããªåæã«èª­ã¿è¾¼ã¾ãããã¡ã¤ã«ã® python early ãã­ãã¯ã§ã¹ãã¼ãã¡ã³ãã¯ç»é²ãããªããã°ãªãã¾ãããä»¥ä¸ã®ããã«ç»é²ãã¾ãã :: BarValue å¥åããããã­ã¹ããå¤æ´ãããã¨ãæ°ãããã­ã¹ãã§å¼ã³åºããã¾ããããã¯å®è£ãããªããã°ããã¾ããã ã¦ã¼ã¶ã¼ãã¨ã³ã¿ã¼ãæ¼ãã¨å¼ã³åºããã¾ããããã None ä»¥å¤ãè¿ãã¨ããã®å¤ãã¤ã³ã¿ã©ã¯ã·ã§ã³ããè¿ããã¾ããããã¯ renpy.IgnoreEvent() ã§ã¤ãã³ããæãã¦æ¼ä¸ãç¡è¦ãã¾ããããã§ãªããã°ãä»ã® displayable ã«ã¨ã³ã¿ã¼ã­ã¼ã®æ¼ä¸ãä¼éããã¾ãã ã¦ã¼ã¶ã¼å®ç¾©ã¹ã¯ãªã¼ã³è¨èªã¹ãã¼ãã¡ã³ã ã¦ã¼ã¶ã¼å®ç¾©ã¹ã¯ãªã¼ã³è¨èªã¹ãã¼ãã¡ã³ã renpy.register_sl_statement é¢æ°ã§ç»é²ããã¾ãã : ã¦ã¼ã¶ã¼å®ç¾©ã¹ã¯ãªã¼ã³è¨èªã¹ãã¼ãã¡ã³ãã¯ python early ãã­ãã¯ã§ç»é²ãããªããã°ãªãã¾ãããã¾ãããã®ã¦ã¼ã¶ã¼å®ç¾©ã¹ãã¼ãã¡ã³ãããããã¡ã¤ã«åã¯ãããä½¿ç¨ããã©ã®ãã¡ã¤ã«ãããåã«èª­ã¿è¾¼ã¾ããªãããªããã°ãªãã¾ãããRen'Py ã¯ãã¡ã¤ã«ãã¦ãã³ã¼ãé ã«èª­ã¿è¾¼ãã®ã§ãã¦ã¼ã¶ã¼å®ç¾©ã¹ãã¼ãã¡ã³ããç»é²ãããã¡ã¤ã«åã®åé ­ã« 01 ãããã«å°ããæ°ãä»ããã¨ããã§ãã python ã¹ã¯ãªã¼ã³ã®ä¾ãç¤ºãã¾ã :: Trueãªããinput ã¯ããã©ã«ãã§ç·¨éå¯è½ãªç¶æã§ã(ã¹ã¯ãªã¼ã³è¡¨ç¤ºæã«ãã­ã£ã¬ãããä¸ãããã¾ã)ã InputValue :func:`AnimatedValue` ã®ããã«æéã«ã¤ãã¦ bar ã®å¤ãæ´æ°ããããã«ä½¿ç¨ããã¾ãããã®ããã«ã¯ã get_adjustment ã§ adjustment ãä¿æãã periodic ã§ adjustment ã® changed ã¡ã½ãããå¼ã³åºãã¹ãã§ãã å¼æ°ãä¸ã¤åãã¾ãã ã¹ã¯ãªã¼ã³è¨èªã§ä½æããã displayable ã®å¤ãã¯å¼æ°ã¨ãã¦ã¢ã¯ã·ã§ã³ãåãã¾ããã¢ã¯ã·ã§ã³ã¯ä»¥ä¸ã®ä¸ã¤ã®ãã¡ããããã§ãã : ããã False ãè¿ãã¦ã __call__ ã¯å®è¡ããããã¨ã«æ³¨æãã¦ãã ããã `other` ã¯ `self` ã¨åãåã§ããå¿è¦ã¯ããã¾ããã Ren'Py ã¯ã¦ã¼ã¶ã¼å®ç¾©ã¹ã¯ãªã¼ã³è¨èªã¹ãã¼ãã¡ã³ãããµãã¼ããã¦ãã¾ããã¦ã¼ã¶ã¼å®ç¾©ã¹ã¯ãªã¼ã³è¨èªã¹ãã¼ãã¡ã³ãã¯ã¹ã¯ãªã¼ã³è¨èªã® :ref:`use ã¹ãã¼ãã¡ã³ã <sl-use>` ã«å¯¾ããã©ããã¼ã§ããä½ç½®å¼æ°ã¯ãã®ã¾ã¾ä½ç½®å¼æ°ã«ãªãããã­ããã£ã¼ã¯ã­ã¼ã¯ã¼ãå¼æ°ã«ãªããã¹ãã¼ãã¡ã³ãããã­ãã¯ãåãåãã¨ãuse ã¹ãã¼ãã¡ã³ãåæ§ã«å¦çãã¾ããä¾ãã°æ¬¡ã®ã¦ã¼ã¶ã¼å®ç¾©ã¹ã¯ãªã¼ã³è¨èªã¹ãã¼ãã¡ã³ãã¯ :: ã¹ã¯ãªã¼ã³è¨èªåæ§ã«ã Ren'Py ã¯ python ã§ã®ã¹ã¯ãªã¼ã³ã®å®ç¾©ããµãã¼ããã¾ãã python ã§ã®ã¹ã¯ãªã¼ã³ã¯ã¹ã¯ãªã¼ã³é¢æ°ã :func:`renpy.define_screen` ã«ä¸ãããã¨ã§ä½æãããã©ããªã¹ã¯ãªã¼ã³ã«ãä½¿ç¨ã§ãã¾ãã ãã­ã¹ããç·¨éä¸è½ã«ããã¢ã¯ã·ã§ã³ãè¿ãã¾ãã ãã­ã¹ããç·¨éå¯è½ã«ããã¢ã¯ã·ã§ã³ãè¿ãã¾ãã ãã­ã¹ããç·¨éå¯è½ãããã°ã«ããã¢ã¯ã·ã§ã³ãè¿ãã¾ãã å¥åããããã­ã¹ããè¿ãã¾ããããã¯å®è£ãããªããã°ããã¾ããã ã¹ã¯ãªã¼ã³é¢æ° ã¹ã¯ãªã¼ã³ã¨ Python UI é¢æ°ã¯ã¹ã¯ãªã¼ã³è¨èªã¨ç­ä¾¡ãª python ã§ããåã¹ã¯ãªã¼ã³è¨èªã®ã¹ãã¼ãã¡ã³ãã«å¯¾ãã¦ãåãååã® UI é¢æ°ãããã¾ããä¾ãã° ui.text ã¯ text ã¹ãã¼ãã¡ã³ãã«å¯¾å¿ãã ui.add ã¯ add ã¹ãã¼ãã¡ã³ãã«å¯¾å¿ãã¾ãã Action ã¯ã©ã¹ãç¶æ¿ããå©ç¹ã¯ãã¿ã³ãæå¹ããé¸æããã¦ããããè¨­å®ããã¡ã½ãããä¸æ¸ãå¯è½ãªãã¨ã§ãã ããã©ã«ãã§ã¯ True ãè¿ãã¾ãã ããã©ã«ãã§ã¯ False ãè¿ãã¾ãã ä»¥ä¸ã® UI é¢æ°ã¯å­ãåãåãã¾ããã ä»¥ä¸ã® UI é¢æ°ã¯ä¸ã¤ã®å­ãåãã¾ãããããã¯ãã®å­ãä¸ããããå¿è¦ããããå­ããªãã¨ã ui.null() ãä½¿ç¨ãã¾ãã ä»¥ä¸ã® UI é¢æ°ã¯è¤æ°ã®å­ãåãåãã¾ãããããã¯ :func:`ui.close` ãå¼ã³åºãããã¾ã§ã¯å­ãåãä»ãã¾ãã ä»¥ä¸ã®ã¢ã¯ã·ã§ã³ã¯ InputValue ã§å©ç¨å¯è½ãªã¡ã½ããã§ãã : ä»¥ä¸ã®é¢æ°ã¯ã¹ã¯ãªã¼ã³ã®å®ç¾©ãè¡¨ç¤ºãéè¡¨ç¤ºããµãã¼ããã¾ãã  Ren'Py ã®å®è£ãå¤æ´ããã displayable ãä½æãã UI é¢æ°ã¯ç¾å¨ã¹ã¯ãªã¼ã³è¨èªã«ããå®è£ããããªãéããªããã¾ãã ããã®ä¸»ãªä½¿ç¨æ³ã¯ get_selected ã get_sensitive ã®å¤ãå¤æ´ãããã :func:`renpy.restart_interaction`  ãå¼ã³åºããã¨ã§ãã ãã®ã¢ã¯ã·ã§ã³ã«é¢é£ã¥ããããã¹ã¯ãªã¼ã³ã displayable ãæåã«è¡¨ç¤ºããã¦ããã®ç§æ°ã§ãã ã¹ã¯ãªã¼ã³é¢æ°ã¯æå¾ããã¹ã³ã¼ãå¤æ°ã«å¯¾ããå¼æ°ãåãåããããä»¥å¤ã®ã­ã¼ã¯ã¼ãå¼æ°ã¯ç¡è¦ããã¹ãã§ãã( ããæãã®å¼æ°ã®æ«å°¾ã«ã¯ `**kwargs` ãæã¤ã¹ãã§ãã ) ã¹ã¯ãªã¼ã³ã« displayable ãè¿½å ããããã«ã¯ UI é¢æ°ãå¼ã³åºãã¾ããã¹ã¯ãªã¼ã³é¢æ°ã¯ã¤ã³ã¿ã©ã¯ã·ã§ã³ãéå§ãããåéããã¨å¼ã³åºããã¾ãã æ¬¡ã«ã¦ã¼ã¶ã¼å®ç¾©ã¹ãã¼ãã¡ã³ããå®è£ããã¹ã¯ãªã¼ã³ãå®ç¾©ãã¾ãããã®ã¹ã¯ãªã¼ã³ã¯ã©ã®ãã¡ã¤ã«ã§ãå®ç¾©åºæ¥ã¾ãããã®ãããªã¹ã¯ãªã¼ã³ã® 1 ä¾ã§ãã :: ã¹ã¯ãªã¼ã³è¨èªã«ã¯å­å¨ããªãèãæ¹ã«å¯¾å¿ãããããåãã«ã¹ã¯ãªã¼ã³è¨èªã®ã¹ãã¼ãã¡ã³ãã«å¯¾å¿ããªã UI é¢æ°ãããã¾ãã UI é¢æ°ã«ã¯ããããåãå­ã®æ°ã«å¯¾å¿ããä¸ã¤ã®ã°ã«ã¼ããããã¾ãã ã¹ã¯ãªã¼ã³è¨èªã®ãã©ã¡ã¼ã¿ã¼ãå¼æ°ã¨ python ã®å¼æ°ã«ã¯ç°¡åãªå¯¾å¿é¢ä¿ãããã¾ããã¹ã¯ãªã¼ã³è¨èªã®ãã©ã¡ã¼ã¿ã¼ã¯ä½ç½®å¼æ°ã«ããã­ããã£ã¼ã¯ã­ã¼ã¯ã¼ãå¼æ°ã«ãªãã¾ããä¾ãã°ãã¹ã¯ãªã¼ã³è¨èªã®ã¹ãã¼ãã¡ã³ãã§ã¯ :: ããã¯ããã©ã«ãã§ ("bar", "vbar") ã§ãã ããã¯ãã®ã¢ã¯ã·ã§ã³ã«é¢é£ã¥ãããããã¿ã³ãæå¹ãã©ãããæ±ºå®ããããã«å¼ã³åºããã¾ãããã¿ã³ãæå¹ãªã True ãè¿ãã¹ãã§ãã ããã¯ã¹ã¯ãªã¼ã³ãæ´æ°ãããæã®ããã«ã BarValue ãä»ã® BarValue ãç½®ãæããã¨ãã«å¼ã³åºããã other ãããã® BarValue ã«æ´æ°ããããã«ä½¿ç¨ããã¾ãã get_adjustment ããåã«ãå¼ã³åºããã¾ãã ããã¯ã¢ã¯ã·ã§ã³ãå®è¡ãããã¨å¼ã³åºãããã¡ã½ããã§ããå¤ãã®å ´å None ã§ãªãå¤ãè¿ãã¨ãç¾å¨ã®ã¤ã³ã¿ã©ã¯ã·ã§ã³ãçµäºãã¾ãã ããã¯ãã®å¤ãä½¿ç¨ãã bar  ã®ã¹ã¿ã¤ã«ãæ±ºå®ããããã«ä½¿ç¨ããã¾ããäºã¤ã®ã¹ã¿ã¤ã«åãã style ãªãã¸ã§ã¯ãã®ã¿ãã«ãè¿ãã¹ãã§ããç¬¬ ä¸è¦ç´ ã¯ bar ã«ãç¬¬äºè¦ç´ ã¯ vbar ã«ä½¿ç¨ããã¾ãã : ãã®ã¡ã½ããã¯åã¤ã³ã¿ã©ã¯ã·ã§ã³ãéå§ãããã¨ä¸æ¦å¼ã³åºããããã®å¾ãç¶ç¶çã«å¼ã³åºããã¾ããæ°å­ãè¿ãã¨ãã®ç§æ°ãçµéããã¨ãããã§ãªããªãããã«å¼ã³åºããã¾ãã ãã®ã¡ã½ããã¯åã¤ã³ã¿ã©ã¯ã·ã§ã³ã®éå§æã«ä¸åº¦å¼ã³åºãããç§æ°ã®æ°å­ãè¿ãã¨ãã®æéãçµéããå¾ã«ãããã§ãªããã°ããã«åã³å¼ã³åºããã¾ãã ããã¯ get_adjustment ã®å¾ã«å¼ã³åºããã¾ãã ãã®ã¡ã½ããã¯ bar ã® adjustment ãªãã¸ã§ã¯ããå¾ãããã«å¼ã³åºããã¾ãã :func:`ui.adjustment` ã§ adjustment ãä½æããä½æããããªãã¸ã§ã¯ããè¿ãã¾ãã ãã®ã¡ã½ããã¯ããã©ã«ãã§ã¯ NotImplemented ã®ä¾å¤ãåºã ( Ren'Py ã«ã¨ã©ã¼ãå ±åããã ) ãããä¸æ¸ãããå¿è¦ãããã¾ãã ããã¯ãã¿ã³ãé¸æãããç¶æã§ã¬ã³ããªã³ã°ãããã¹ããªã True ãè¿ããããã§ãªããªã False ãè¿ãã¹ãã§ãã æ°ãã BarValue ãå®ç¾©ããããã«ã¯ããã®ã¯ã©ã¹ãç¶æ¿ãã¦ãã®ã¡ã½ãããä¸æ¸ããã¦ãã ããã æ°ãã InputValue ãå®ç¾©ããããã«ã¯ããã®ã¯ã©ã¹ãç¶æ¿ãã¦ãã®ã¡ã½ãããä¸æ¸ããã¦ãã ããã æ°ããã¢ã¯ã·ã§ã³ãå®ç¾©ããããã«ã¯ãã®ã¯ã©ã¹ãç¶æ¿ãã¦ãã ãããã¢ã¯ã·ã§ã³ã®åä½ãå¤æ´ããããã«ã¯ãã®ã¯ã©ã¹ã®ã¡ã½ãããä¸æ¸ããã¦ãã ããã ãã®åéãã¦ã¼ã¶ã¼ã«ã¨ã£ã¦ã·ã¼ã ã¬ã¹ã§ãããã¨ãä¿è¨¼ããããã«ã UI é¢æ°ã¸ã®ãã¹ã¦ã®å¼ã³åºãã `id` å¼æ°ããµãã¼ããããã¨ãéè¦ã§ããã¹ã¯ãªã¼ã³ã¯åçæãããããã Ren'Py ã¯åã id ãæã¤ä»¥åã® displayable ã®åå®¹ã§å displayable ãæ´æ°ãã¾ãã id ã¯ã¹ã¯ãªã¼ã³è¨èªã«ãã£ã¦èªåçã«çæããã¾ãããç´æ¥ ui é¢æ°ãä½¿ç¨ããã¨ãã¯æåã§æå®ããå¿è¦ãããã¾ãã pythonããã¢ã¯ã·ã§ã³ãå®è¡ããã«ã¯renpy.run ãä½¿ç¨ãã¦ãã ããã UI é¢æ° æ³¨æ: UI é¢æ°ã¯éæ¨å¥¨ã§ãã bar, vbar ã¾ãã¯ hotbar ä½ææã«ã BarValue ãªãã¸ã§ã¯ãã¯ `value` å¼æ°ã¨ãã¦æä¾ããã¾ãã BarValue ãªãã¸ã§ã¯ãã®ã¡ã½ããã¯ adjustment ãã¹ã¿ã¤ã«ãå¾ãããã«å¼ã³åºããã¾ãã input ä½ææã«ã InputValue ãªãã¸ã§ã¯ãã¯ `value` ãã­ããã£ã¼ã¨ãã¦æä¾ããã¾ãã InputValue ãªãã¸ã§ã¯ãã®ã¡ã½ããã¯ ãã­ã¹ãã®è¨­å®ã¨æå¾ãç·¨éå¯è½ãã©ãããã¨ã³ã¿ã¼ã­ã¼ãæ¼ãããã¨ãã®å¦çãæ±ºå®ããããã«å¼ã³åºããã¾ãã ã¢ã¯ã·ã§ã³ããã¿ã³ ( ã¾ãã¯åæ§ãªãªãã¸ã§ã¯ã ) ã¸ã® `hovered` ãã©ã¡ã¼ã¿ã¼ã¨ãã¦ä½¿ç¨ãããã¨ããã®ã¡ã½ããã¯ãã®ãªãã¸ã§ã¯ãããã©ã¼ã«ã¹ãå¤±ãã¨å¼ã³åºããã¾ãã `st` ãããªãã¾ãã :: ãããªãã¾ãã :: ui.add ui.bar ui.button ui.drag ui.draggroup ui.fixed ui.frame ui.grid ui.hbox ui.hotbar ui.hotspot ui.imagebutton ui.imagemap ui.input ui.key ui.label ui.null ui.side ui.spritemanager ui.text ui.textbutton ui.timer ui.transform ui.vbar ui.vbox ui.window 