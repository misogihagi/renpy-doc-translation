Þ    d      <     \             o   	  ,  	     »
    P    W  Í   ä  Û   ²  %     à   ´  Ý        s  /        A     J     Z  e   l     Ò     ä       6     <   Å            ?  &  7   f      j   ¢  ¿     ñ   Í  ¤   ¿     d     j     z       c     +  ÿ     +     A  l   G     ´  M   Ä       "   !  ¯   D  3   ô  1   (  ñ   Z     L  ³   å  ]         ÷   a  !  3   æ"  .   #    I#  0   N$  \  $  Û   Ü%  Y   ¸&  M  '  
  `(  Ó   k)  Ò   ?*  2   +    E+  õ   d,     Z-  ÷   Ú-  Æ   Ò.     /  /  60  !  f1  Y  2     â3     ã4  (   n5     5  /   &6  ³   V6  /   
7  	   :7     D7     S7     l7     s7  
   z7  )   7      ¯7     Ð7  H   Ü7  %   %8  
   K8     V8     i8     p8     u8     }8  	   8  l  8  Æ   ü9     Ã:  ½  F;  «   =  w  °=     (@    IB  ó   QC  ,   ED    rD  å   E  Ñ   hF  ,   :G     gG     nG     ~G  ~   G     H  °   H     ÅH  J   ÌH  Q   I     iI  $   I  â  ©I  T   K  e  áK  x   GM  Ï   ÀM  X  N  Ó   éO     ½P     ÄP     ÑP     íP     
Q    Q     S     6S     CS     ÆS  e   âS     HT  ,   cT    T  Q   U  Q   åU  =  7V  Ù   uW  ð   OX     @Y  Ò   ×Y  r  ªZ  G   \  5   e\  o  \  K   ^  ¸  W^  y  `  k   a  Ó  öa  :  Êc  4  e  ï   :f  K   *g  ´   vg  ÿ   +h  ©   +i  a  Õi  ©   7k  ×   ák    ¹l  Y  On    ©o  @  :q  ß   {r  K   [s  À   §s  >   ht  Ñ   §t  5   yu  	   ¯u     ¹u     Ôu     ìu     óu  
   úu  A   v  0   Gv     xv  `   v  5   åv  
   w     &w     Dw     Kw     Ww     _w  	   gw     N             1   >   T              6           D              O   '   -   E          &   `   J       \       Z   R          S   B   %         =      L   G       ]   <           Q       $       W       .       Y                0      *      ^   _   a         V   9   !   H   ?       (   C   P                          "       )   ,   2       A   b           c         I          :          
   +   8       F       ;       M   @         	      3      4          /       d              #   K   5      U   7   [   X    **Clearing a layer.** When the image name is omitted entirely, the scene statement clears all displayables from a layer without showing another displayable. **Scene Expression.** Like the show statement, the scene statement can take expressions instead of image names. **Show Expression.** A variant of the show statement replaces the image name with the keyword ``expression``, followed by a simple expression. The expression must evaluate to a displayable, and the displayable is shown on the layer. To hide the displayable, a tag must be given with the as statement. **Show Layer.** The show layer statement allows one to apply a transform or ATL transform to an entire layer (such as "master"), using syntax like:: A displayable is something that can be shown on the screen. The most common thing to show is a static image, which can be specified by giving the filename of the image, as a string. In the example above, we might use ``"mary_beach_night_happy.png"`` as the filename. However, an image may refer to :ref:`any displayable Ren'Py supports <displayables>`, not just static images. Thus, the same statements that are used to display images can also be used for animations, solid colors, and the other types of displayables. A layer is a list of displayables that are shown on the screen. Ren'Py supports multiple layers, including user-defined layers. The order of the layers is fixed within a game (controlled by the :var:`config.layers` variable), while the order of displayables within a layer is controlled by the order in which the scene and show statements are called, and the properties given to those statements. Additional layers can be defined by updating :var:`config.layers`, and the various other layer-related config variables. Using :func:`renpy.layer_at_list`, one or more transforms can be applied to a layer. An :dfn:`image name` consists of one or more names, separated by spaces. The first component of the image name is called the :dfn:`image tag`. The second and later components of the name are the :dfn:`image attributes`. An example of the with statement is:: An image is something that can be show to the screen using the show statement. An image consists of a name and a displayable. When the image is shown on a layer, the displayable associated with it is displayed on that layer. An image statement is used to define an image. An image statement consists of a single logical line beginning with the keyword ``image``, followed by an image name, an equals sign (``=``), and a displayable. For example:: As abrupt changes of image can be disconcerting to the user, Ren'Py has the ``with`` statement, which allows effects to be applied when the scene is changed. Assuming we have the following images defined:: Concepts Defining Images Displaying Images For a full list of transitions that can be used, see the chapter on :ref:`transitions <transitions>`. For example, in:: For example, take the image name ``mary beach night happy``. The image tag is ``mary``, while the image attributes are ``beach``, ``night``, and ``happy``. For example:: Has all of the attributes given in the show statement. Has the same tag as the one specified in the show statement. Hide Statement Hide and Show Window Hide statements are rarely necessary. If a sprite represents a character, then a hide statement is only necessary when the character leaves the scene. When the character changes her emotion, it is preferable to use the show statement instead, as the show statement will automatically replace an image with the same tag. If a unique image cannot be found, an exception occurs. If an image with the same image tag is already showing on the layer, the new image replaces it. Otherwise, the image is placed above all other images in the layer. (That is, closest to the user.) This order may be modified by the zorder and behind properties. If an image with the same tag is already showing, shares the largest number of attributes with that image. If no at clause is given, Ren'Py will retain any existing transform that has been applied to the image. If no transform exists, the image will be displayed using the :var:`default` transform. If the optional transition is given, it's used to show and hide the window. If not given, it defaults to :var:`config.window_show_transition` and :var:`config.window_hide_transition`. Giving None as the transition prevents it from occurring. If the show statement is given the exact name of an existing image, that image is the one that is shown. Otherwise, Ren'Py will attempt to find a unique image that: Image Image Functions Image Statement Images Directory Images defined using the image statement take precedence over those defined by the image directory. In the above example, there are two dissolves. But what if we wanted the background to appear instantly, followed by a dissolve of the two characters? Simply omitting the first with statement would cause all three images to dissolve in - we need a way to say that the first should be show instantly. Instead, just write:: Layer Only a single transition occurs, from the washington background to the scene consisting of all three images. Scene Statement See also the :ref:`ATL variant of the image statement. <atl-image-statement>` Show Statement Some example show statements are:: Takes a comma-separated list of one or more names. Each name is taken as an image tag. The image is shown behind all images with the given tags that are currently being shown. Takes a name. Hides the image from the named layer. Takes a name. Shows the image on the named layer. Takes an integer. The integer specifies the relative ordering of images within a layer, with larger numbers being closer to the user. This isn't generally used by Ren'Py games, but can be useful when porting visual novels from other engines. The as property takes a name. This name is used in place of the image tag when the image is shown. This allows the same image to be on the screen twice. The at property takes one or more comma-separated simple expressions. Each expression must evaluate to a transform. The transforms are applied to the image in left-to-right order. The default layer used by ui functions. This layer is cleared at the end of each interaction. The default layer used when a ui function is called from within an overlay function. This layer is cleared when an interaction is restarted. The defining aspect of a visual novel, lending its name to the form, are the visuals. Ren'Py contains four statements that control the display of images, and a model that determines the order in which the images are displayed. This makes it convenient to display images in a manner that is suitable for use in visual novels and other storytelling games. The following layers are defined as part of Ren'Py: The four statements that work with images are: The hide statement removes an image from a layer. It consists of the keyword ``hide``, followed by an image name, followed by an optional property. The hide statement takes the image tag from the image name, and then hides any image on the layer with that tag. The hide statement takes the following property: The image directory is named "images", and is placed under the game directory. When a file with the .jpg or .png extension is placed underneath this directory, the extension is stripped, the rest of the filename is forced to lower case, and the resulting filename is use as the image name if an image with that name has not been previously defined. The image statement is run at init-time, before the menus are shown or the start label runs. When not contained inside an init block, image statements are run as if they were placed inside an init block of priority 500. The scene statement is often used to show an image on the background layer. For example:: The scene statement removes all displayables from a layer, and then shows an image on that layer. It consists of the keyword ``scene``, followed by an image name, followed by zero or more properties. The image is shown in the same way as in the show statement, and the scene statement takes the same properties as the show statement. The second transition occurs after the Eileen and Lucy images are shown. It causes a dissolve from the scene consisting solely of the background to the scene consisting of all three images - the result is that the two new images appear to dissolve in simultaneously. The show statement does not cause an interaction to occur. For the image to actually be displayed to the user, a statement that causes an interaction (like the say, menu, pause, and with statements) must be run. The show statement is used to display an image on a layer. A show statement consists of a single logical line beginning with the keyword ``show``, followed by an image name, followed by zero or more properties. The show statement takes the following properties: The show, scene, and hide statements can take an optional with clause, which allows a transition to be combined with showing or hiding an image. This clause follows the statements at the end of the same logical line. It begins with the keyword ``with``, followed by a simple expression. The transition effect is applied between the contents of the screen at the end of the previous interaction (with transient screens and displayables hidden), and the current contents of the scene, after the show and hide statements have executed. The window itself is displayed by calling :var:`config.empty_window`. It defaults to having the narrator say an empty string.:: The window statement is used to control if a window is shown when a character is not speaking. (For example, during transitions and pauses.) The window show statement causes the window to be shown, while the window hide statement hides the window. The with clause is equivalent to preceding the line with a ``with None`` statement, and following it by a :ref:`with statement <with-statement>` containing the text of the with clause. For example:: The with statement causes an interaction to occur. The duration of this interaction is controlled by the user, and the user can cause it to terminate early. The with statement changes behavior when given the special value ``None``. The ``with None`` statement causes an abbreviated interaction to occur, without changing what the user sees. When the next transition occurs, it will start from the scene as it appears at the end of this abbreviated interaction. The with statement is used to apply a transition effect when the scene is changed, making showing and hiding images less abrupt. The with statement consists of the keyword ``with``, followed by a simple expression that evaluates either to a transition object or the special value ``None``. There are two ways to define images. You can either place an image file in the image directory, or an image can be defined using the image statement. The former is simple, as it involves placing properly named files in a directory, while the latter a allows more control over how the image is defined, and allows images that are not image files. This causes two transitions to occur. The first with statement uses the ``dissolve`` transition to change the screen from what was previously shown to the washington background. (The ``dissolve`` transition is, by default, defined as a .5 second dissolve.) This is the default layer that is used by the scene, show, and hide statements. It's generally used for backgrounds and character sprites. This layer is used by the screen system. This process place in all directories underneath the image directory. For example, all of these files will define the image ``eileen happy``:: To stop applying transforms to the layer, use:: When an image is not directly in the game directory, you'll need to give the directories underneath it. For example, if the image is in game/eileen/happy.png, then you can write:: With Clause of Scene, Show, and Hide Statements With None With Statement You should never write:: ``as`` ``at`` ``behind`` ``hide`` - removes an image from a layer. ``image`` - defines a new image. ``onlayer`` ``scene`` - clears a layer, and optionally shows an image on that layer. ``show`` - shows an image on a layer. ``zorder`` is equivalent to:: master or:: overlay screens transient Project-Id-Version: renpy-doc
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-02-12 18:16+0900
PO-Revision-Date: 2018-02-12 23:43+0900
Last-Translator: 
Language-Team: Japanese <ja@li.org>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2015-03-28 05:30+0000
X-Generator: Poedit 1.5.7
 **ã¬ã¤ã¤ã¼ã®æ¶å»** ç»ååãå¨ãä¸ããããªãã¨ããscene ã¹ãã¼ãã¡ã³ãã¯ã¬ã¤ã¤ã¼ããå¨ã¦ã® displayable ãæ¶å»ããä»£ããã®ç»åã¯è¡¨ç¤ºãã¾ããã scene expression show ã¹ãã¼ãã¡ã³ãã¨åæ§ãscene ã¹ãã¼ãã¡ã³ããç»ååã®ä»£ããã«å¼ãåãã¾ãã **show expression** show ã¹ãã¼ãã¡ã³ãã®å¤ç¨®ã¨ãã¦ãç»ååã®ä»£ããã«äºç´èª ``expression`` ãä½¿ãããã®å¾ã«åç´å¼ãç¶ãããã®ãããã¾ãããã®å¼ã®è©ä¾¡ã¯ãdisplayable ã§ãªããã°ãªãã¾ããããã® displayable ãã¬ã¤ã¤ã¼ã«è¡¨ç¤ºããã¾ãããã® displayable ã hide ããããã«ã¯ããã®ã¹ãã¼ãã¡ã³ãã§ã¿ã°ãä¸ãã¦ãããªããã°ãªãã¾ããã **show layer** show layer ã¹ãã¼ãã¡ã³ãã§ã¯ãå¤æãATLå¤æãæ¬¡ã®ãããªæ§æã«ãã£ã¦ã¬ã¤ã¤ã¼å¨ä½ (ä¾ãã° master) ã«é©ç¨ã§ãã¾ã:: displayable ã¨ã¯ãã¹ã¯ãªã¼ã³ã«è¡¨ç¤ºã§ãããã®ã§ããä¸»ã«éæ­¢ç»åãè¡¨ç¤ºããããã«ä½¿ããã¾ãããããæå®ããã«ã¯ãç»åã®ãã¡ã¤ã«åãæå­åã¨ãã¦ä¸ãã¾ããä¸è¿°ã®ä¾ã§ã¯ããã¡ã¤ã«åã¨ãã¦ä¾ãã° ``ã mary_beach_night_happy.png ã`` ãä½¿ãã¾ããããããç»åã¯éæ­¢ç»åã«éããã :ref:`Ren'Py ããµãã¼ããã displayable å¨ã¦ <displayables>` ãåç§ã§ãã¾ããã§ããããç»åãè¡¨ç¤ºããã®ã¨åãã¹ãã¼ãã¡ã³ãããã¢ãã¡ã¼ã·ã§ã³ãå¨é¢è²ããã®ä»ã® displayable ã«ãä½¿ãã¾ãã ã¬ã¤ã¤ã¼ã¨ã¯ãç»é¢ã«è¡¨ç¤ºããã displayable ã®ãªã¹ãã§ããRen'Py ã¯è¤æ°ã®ã¬ã¤ã¤ã¼ããµãã¼ããã¦ãã¦ãã¦ã¼ã¶ã¼å®ç¾©ã®ã¬ã¤ã¤ã¼ãä½¿ãã¾ããã¬ã¤ã¤ã¼ã®é åºã¯ã²ã¼ã åã§åºå®ããã¦ãã¾ã ( :var:`config.layers` å¤æ°ã§å¶å¾¡ããã¾ã)ãã¾ããã¬ã¤ã¤ã¼åã® displayable ã®é åºã¯ãscene ã¹ãã¼ãã¡ã³ãã show ã¹ãã¼ãã¡ã³ããå¼ã³åºãããé åºã¨ããã®ã¹ãã¼ãã¡ã³ãã«ä¸ãããããã­ããã£ã¼ã¨ã§å¶å¾¡ããã¾ãã ãã®ä»ã®ã¬ã¤ã¤ã¼ãå®ç¾©ã§ãã¾ãã :var:`config.layers` ããã¬ã¤ã¤ã¼é¢é£ã®ãã®ä»ãããããªè¨­å®å¤æ°ãã¢ãããã¼ããã¦ãã ããã:func:`renpy.layer_at_list` ãä½¿ãã¨ãã¬ã¤ã¤ã¼ã«å¤æãé©ç¨ã§ãã¾ãã :dfn:`ç»åå` ã¯ãã¹ãã¼ã¹ã§åãããã1ã¤ä»¥ä¸ã®ååã§ã§ãã¦ãã¾ããç»ååãæ§æããæåã®é¨åã :dfn:`ç»åã¿ã°` ã¨è¨ãã¾ããååã®ããä»¥éã®é¨åã¯ã :dfn:`ç»åå±æ§` ã§ãã with ã¹ãã¼ãã¡ã³ãã®ä¾ã§ãã :: ç»åã¯ãshow ã¹ãã¼ãã¡ã³ããä½¿ã£ã¦ç»é¢ã«è¡¨ç¤ºããããã®ã§ããç»åã¯ååã¨ displayable ã§ã§ãã¦ãã¾ããç»åãã¬ã¤ã¤ã¼ã«è¡¨ç¤ºãããã¨ãããã®ç»åã«å¯¾å¿ãã displayable ãã¬ã¤ã¤ã¼ã«è¡¨ç¤ºããã¾ãã image ã¹ãã¼ãã¡ã³ãã¯ãç»åãå®ç¾©ããã®ã«ä½¿ããã¾ããimage ã¹ãã¼ãã¡ã³ãã¯ã ``image`` ã§å§ã¾ããç»ååãç­å· (``=``)ãdisplayable ãç¶ããè«çè¡ã§åºæ¥ã¦ãã¾ããä¾ :: ç»åãæ¥ã«å¤ããã¨ã¦ã¼ã¶ã¼ã¯ã³ã£ããããã®ã§ãRen'Py ã¯ ``with`` ã¹ãã¼ãã¡ã³ããç¨æãã¦ãã¾ããããã«ãããå ´é¢ã®å¤ããç®ã«å¹æãé©ç¨ããã¾ãã ä»¥ä¸ã®ç»åãå®ç¾©ããã¨ãã¾ã:: æ¦å¿µ ç»åã®å®ç¾© ç»åã®è¡¨ç¤º å©ç¨ã§ãããã©ã³ã¸ã·ã§ã³ã®ä¸è¦§ã¯ã  :ref:`ãã©ã³ã¸ã·ã§ã³ <transitions>` ã®ç« ããè¦§ãã ããã ä¾ :: ä¾ãã°ã ``mary beach night happy`` ã¨ããç»ååãããã¨ãã¾ãããã®ç»åã¿ã°ã¯ ``mary`` ã§ãç»åå±æ§ã¯ ``beach``, ``night``, ``happy`` ã§ãã ä¾ :: show ã¹ãã¼ãã¡ã³ãã§ä¸ããããå¨ã¦ã®å±æ§ãæã¤ç»å show ã¹ãã¼ãã¡ã³ãã§æå®ããããã®ã¨åãã¿ã°ãæã¤ ç»å hide ã¹ãã¼ãã¡ã³ã ã¦ã£ã³ãã¦ã®è¡¨ç¤ºã»éè¡¨ç¤º hide ã¹ãã¼ãã¡ã³ããå¿è¦ã«ãªããã¨ã¯ãã¾ãããã¾ãããããã¹ãã©ã¤ããããã­ã£ã©ã¯ã¿ã¼ãè¡¨ãã¦ãããªããhide ã¹ãã¼ãã¡ã³ããå¿è¦ãªã®ã¯ãã®ã­ã£ã©ã¯ã¿ã¼ãã·ã¼ã³ããéå ´ããæã ãã§ããã­ã£ã©ã¯ã¿ã¼ãè¡¨æãå¤ããã¨ãã¯ãshow ã¹ãã¼ãã¡ã³ããä½¿ãã®ãæã¾ããã§ããshow ã¹ãã¼ãã¡ã³ãã¯ãåãã¿ã°ã®ç»åãèªåçã«ç½®ãæãã¦ããã¾ãã ãã®ãããªç»åãä¸ã¤ã«æ±ºã¾ããªããã°ãä¾å¤ãçºçãã¾ãã ã¬ã¤ã¤ã¼ä¸ã«åãã¿ã°ã®ç»åããã§ã«è¡¨ç¤ºããã¦ãããªãããããæ°ããç»åãç½®ãæãã¾ããããã§ãªããã°ããã®ç»åãã¬ã¤ã¤ã¼ã®ä¸çªä¸ã«ç½®ããã¾ãã(ã¤ã¾ããã¦ã¼ã¶ã¼ã«æãè¿ãã¨ããã§ãã) ãã®é åºã¯ãzorder ããã³ behind ãã­ããã£ã¼ã§å¤æ´ã§ãã¾ãã åãã¿ã°ã®ç»åããã§ã«è¡¨ç¤ºããã¦ãããªãããã®ç»åã¨å±éã®å±æ§ãæãå¤ãæã¤ç»å at ç¯ãä¸ããããªããã°ãRen'Py ã¯ç»åã«é©ç¨ããã¦ããå¤æãå¨ã¦ä¿æãã¾ããå¤æãå­å¨ããªããã°ãç»åã¯  :var:`default` å¤æãä½¿ã£ã¦è¡¨ç¤ºããã¾ãã ä»»æã§ãã©ã³ã¸ã·ã§ã³ãæå®ãããã¨ãã¦ã£ã³ãã¦ã®è¡¨ç¤ºãéè¡¨ç¤ºæã«ä½¿ç¨ããã¾ããæå®ãããªãã¨ãããã©ã«ãã§ã¯ :var:`config.window_show_transition` ã¨ :var:`config.window_hide_transition` ã«ãªãã¾ãã ãã©ã³ã¸ã·ã§ã³ã¨ãã¦ None ãæå®ããã¨ãã®å®è¡ãé²ãã¾ãã show ã¹ãã¼ãã¡ã³ãã«ä¸ãããããã®ãæ¢å­ã®ç»åã®æ­£ç¢ºãªååãªãããã®ç»åãè¡¨ç¤ºããã¾ããããã§ãªããã°ãRen'Py ã¯ä»¥ä¸ã®ãããªç»åãä¸ã¤æ¢ãã¾ã: ç»å ç»åé¢æ° image ã¹ãã¼ãã¡ã³ã ç»å ãã£ã¬ã¯ããªã¼ image ã¹ãã¼ãã¡ã³ãã§å®ç¾©ãããç»åã¯ç»åãã£ã¬ã¯ããªã¼ã§å®ç¾©ããããã®ããåªåããã¾ãã ä¸è¿°ã®ä¾ã«ã¯ 2 ã¤ã®ãã£ã¾ã«ããããã¾ãããããèæ¯ã¯å³åº§ã«ç¾ããã®å¾ã« 2 äººã®ã­ã£ã©ãç¾ããããã«ããã«ã¯ã©ãããã®ã§ããããï¼æåã® with ã¹ãã¼ãã¡ã³ããåç´ã«ãªããã¦ãã¾ãã¨ã3 ã¤ã®ç»åãã¹ã¦ããã£ã¾ã«ããã¦ç¾ãã¦ãã¾ãã¾ããèæ¯ãå³åº§ã«ç¾ããããã«ãããã§ãã ããæ¸ãã¦ãã ãã:: ã¬ã¤ã¤ã¼ washington èæ¯ããã3 ã¤ã®ç»åãè¡¨ç¤ºããã¦ããå ´é¢ã«ãä¸åº¦ã ããã©ã³ã¸ã·ã§ã³ãèµ·ããã¾ãã scene ã¹ãã¼ãã¡ã³ã :ref:`image ã¹ãã¼ãã¡ã³ãã® ATL ãã­ãã¯ <atl-image-statement>` ããè¦§ãã ããã show ã¹ãã¼ãã¡ã³ã show ã¹ãã¼ãã¡ã³ãã®ä¾ã§ãã :: ã«ã³ãã§åºåãããä¸ã¤ä»¥ä¸ã®ååãåãã¾ããããããã®ååã¯ç»åã¿ã°ã¨ãã¦åããã¾ããç»åã¯ãç¾å¨è¡¨ç¤ºããã¦ããç»åã®ä¸­ã§ãä¸ããããã¿ã°ãæã¤ãã®å¨ã¦ã®å¾ã«è¡¨ç¤ºããã¾ãã ååãåãã¾ããæåãããã¬ã¤ã¤ã¼ããç»åãé ãã¾ãã ååãåãã¾ããæåãããã¬ã¤ã¤ã¼ã«ç»åãè¡¨ç¤ºãã¾ãã æ´æ°ãåãã¾ãããã®æ´æ°ã¯ãç»åã®ã¬ã¤ã¤ã¼ä¸ã«ãããç¸å¯¾çãªé åºãæå®ãã¾ãããã®æ°å­ãå¤§ããã»ã©ãã¦ã¼ã¶ã¼ã«è¿ããªãã¾ããããã¯éå¸¸ Ren'Py ã³ã¼ãã§ã¯ä½¿ãã¾ããããä»ã®ã¨ã³ã¸ã³ããã³ã¼ããç§»æ¤ããã¨ãã«ä¾¿å©ã§ãã as ãã­ããã£ã¼ã¯ååãåãã¾ããç»åãè¡¨ç¤ºãããã¨ããç»åã¿ã°ã®ä»£ããã«ãã®ååãä½¿ããã¾ããããã§ãåãç»åãã¹ã¯ãªã¼ã³ã®2ç®æã«è¡¨ç¤ºã§ãã¾ãã ãã®ãã­ããã£ã¼ã¯ã«ã³ãã§åºåãããä¸ã¤ä»¥ä¸ã®åç´å¼ãåãã¾ããããããã®å¼ã®è©ä¾¡çµæã¯å¤æã§ãªããã°ãªãã¾ããããã®ç»åã«ããã®å¤æãå·¦ããé ã«é©ç¨ããã¾ãã ui é¢æ°ã§ä½¿ãããããã©ã«ãã®ã¬ã¤ã¤ã¼ã§ãããã®ã¬ã¤ã¤ã¼ã¯ãã¤ã³ã¿ã©ã¯ã·ã§ã³ãçµããåº¦ã«æ¶å»ããã¾ãã ui é¢æ°ã overlay é¢æ°ã®åé¨ããå¼ã³åºãããã¨ãã«ä½¿ãããããã©ã«ãã®ã¬ã¤ã¤ã¼ã§ãããã®ã¬ã¤ã¤ã¼ã¯ãã¤ã³ã¿ã©ã¯ã·ã§ã³ãåéããåº¦ã«æ¶å»ããã¾ãã ãã¸ã¥ã¢ã«ããã«ãå®ç¾©ããç¹å¾´ã¯ããã®åãè¡¨ãã¨ããããã¸ã¥ã¢ã«ã§ããRen'Py ã«ã¯ãç»åãå¶å¾¡ãã 4 ã¤ã®ã¹ãã¼ãã¡ã³ããããã¾ããã¾ããç»åãè¡¨ç¤ºãããé çªãå®ç¾©ããã¢ãã«ããã£ã¦ãã¾ããããã«ããããã¸ã¥ã¢ã«ããã«ã«é©ããæ¹æ³ã§ç»åãè¡¨ç¤ºã§ãã¾ãã Ren'Py åé¨ã§ã¯ãä»¥ä¸ã®ã¬ã¤ã¤ã¼ãå®ç¾©ããã¦ãã¾ã: ç»åã«ä½¿ãã 4 ã¤ã®ã¹ãã¼ãã¡ã³ãã¯:: hide ã¹ãã¼ãã¡ã³ãã¯ãã¬ã¤ã¤ã¼ããç»åãåãé¤ãã¾ãããã®ã¹ãã¼ãã¡ã³ãã¯ãäºç´èª ``hide``ãç»ååãã¼ã­åä»¥ä¸ã®ãã­ããã£ã¼ã®é ã§ã§ãã¦ãã¾ããhide ã¹ãã¼ãã¡ã³ãã¯ç»ååããç»åã¿ã°ãåãããã®ã¿ã°ãæã¤ç»åãã¬ã¤ã¤ã¼ã«ããã°ããã®ç»åãé ãã¾ãã hide ã¹ãã¼ãã¡ã³ãã¯ãä»¥ä¸ã®ãã­ããã£ã¼ãåãã¾ã: ç»åãã£ã¬ã¯ããªã¼ã¯ã images ãã¨åä»ããããã²ã¼ã ãã£ã¬ã¯ããªã¼ã«éç½®ããã¾ãããã®ãã£ã¬ã¯ããªã¼ä»¥ä¸ã« .jpg ã .png æ¡å¼µå­ãæã¤ãã¡ã¤ã«ãéç½®ããã¨ããã®æ¡å¼µå­ãé¤å¤ããããã¡ã¤ã«åã®æ®ãã¯å¼·å¶çã«å°æå­ã«ãªãã¾ãããã®çµæã®ãã¡ã¤ã«åãæ¢ã«ç»ååã«ä½¿ç¨ããã¦ããªããã°ç»ååã¨ãã¦ä½¿ç¨ããã¾ãã image ã¹ãã¼ãã¡ã³ãã¯ãã²ã¼ã ã¡ãã¥ã¼ãè¡¨ç¤ºããããã¾ãã¯ã start ã©ãã«ãå®è¡ãããåã®åæåæã«å®è¡ããªããã°ãªãã¾ãããimage ã¹ãã¼ãã¡ã³ãã¯ init ãã­ãã¯ã«å«ã¾ãã¦ããªãã¨ããåªååº¦ 500ã® init ãã­ãã¯ã®ä¸­ã«å«ã¾ãã¦ãããã®ããã«ãåæåæã«å®è¡ããã¾ãã scene ã¹ãã¼ãã¡ã³ãã¯ãä¸»ã«èæ¯ã¬ã¤ã¤ã¼ã«ç»åãè¡¨ç¤ºããã®ã«ä½¿ãã¾ããä¾ : scene ã¹ãã¼ãã¡ã³ãã¯ã¬ã¤ã¤ã¼ããå¨ã¦ã® displayable ãåé¤ãããã®å¾ããã®ã¬ã¤ã¤ã¼ã«ç»åãè¡¨ç¤ºãã¾ãããã®ã¹ãã¼ãã¡ã³ãã¯ãäºç´èª ``scene`` ãç»ååãã¼ã­åä»¥ä¸ã®ãã­ããã£ã¼ã®é ã§ã§ãã¦ãã¾ããç»åã¯ãshow ã¹ãã¼ãã¡ã³ãã¨åãããã«è¡¨ç¤ºããã¾ããã¾ããscene ã¹ãã¼ãã¡ã³ãã¯ show ã¹ãã¼ãã¡ã³ãã¨åããã­ããã£ã¼ãåãã¾ãã ç¬¬äºã®ãã©ã³ã¸ã·ã§ã³ã¯ãEileen ã¨ Lucy ã®ç»åãè¡¨ç¤ºããã¹ãã¼ãã¡ã³ãã®å¾ã«ããã¾ããããã«ãããèæ¯ã®ã¿ã®å ´é¢ããã3 ã¤å¨ã¦ã®ç»åãããå ´é¢ã«ãã£ã¾ã«ããã¾ããçµæã¨ãã¦ã2 ã¤ã®æ°ããç»åããã£ã¾ã«ããã¦ç¾ãã¾ãã show ã¹ãã¼ãã¡ã³ãã¯ãã¤ã³ã¿ã©ã¯ã·ã§ã³ãèµ·ããã¾ãããã¤ã¡ã¼ã¸ãå®éã«ã¦ã¼ã¶ã¼ã«è¡¨ç¤ºããããã«ã¯ãã¤ã³ã¿ã©ã¯ã·ã§ã³ãèµ·ããã¹ãã¼ãã¡ã³ã(say, menu, pause, ããã³ with ã¹ãã¼ãã¡ã³ããªã©) ãå®è¡ããªããã°ãªãã¾ããã show ã¹ãã¼ãã¡ã³ãã¯ãç»åãã¬ã¤ã¤ã¼ã«è¡¨ç¤ºããããã«ä½¿ããã¾ããshow ã¹ãã¼ãã¡ã³ãã¯ ``show`` ã§å§ã¾ããç»ååãã¼ã­åä»¥ä¸ã®ãã­ããã£ã¼ãç¶ãè«çè¡ã§ã§ãã¦ãã¾ãã show ã¹ãã¼ãã¡ã³ãã¯ãä»¥ä¸ã®ãã­ããã£ã¼ãåãã¾ã: showãsceneãhide ã¹ãã¼ãã¡ã³ãã¯ãå¿è¦ãªã ``with`` ç¯ãåãã¾ããããã¯ãç»åã®è¡¨ç¤ºãéè¡¨ç¤ºã«ããã©ã³ã¸ã·ã§ã³ãçµã¿åãã¾ãã ãã©ã³ã¸ã·ã§ã³å¹æã¯ãåã®ã¤ã³ã¿ã©ã¯ã·ã§ã³ (ä¼è©±ãé¸æè¢ããã©ã³ã¸ã·ã§ã³) ãçµãã£ãæç¹ã®ç»é¢ã®åå®¹ã¨ãsceneãshowãhide ã¹ãã¼ãã¡ã³ããå®è¡ãããå¾ã®åå®¹ã®éã§é©ç¨ããã¾ãã ã¦ã£ã³ãã¦èªèº«ã¯ :var:`config.empty_window` ãå¼ã³åºãã¦è¡¨ç¤ºããã¾ããããã©ã«ãã§ã¯ãã¬ã¼ã¿ã¼ã«ç©ºã®æå­åãè©±ããã¾ãã :: window ã¹ãã¼ãã¡ã³ãã¯ã­ã£ã©ã¯ã¿ã¼ãè©±ãã¦ããªãã¨ãã«ãã¦ã£ã³ãã¦ãè¡¨ç¤ºããããå¶å¾¡ããããã«ä½¿ç¨ããã¾ãã ( ä¾ ãã©ã³ã¸ã·ã§ã³ããã¼ãºä¸­ ) window show ã¹ãã¼ãã¡ã³ãã¯ã¦ã£ã³ãã¦ãè¡¨ç¤ºãããwindow hide ã¹ãã¼ãã¡ã³ãã¯ã¦ã£ã³ãã¦ãéè¡¨ç¤ºã«ãã¾ãã with ç¯ãã¤ãããã¨ã¯ã ``with None`` ã¹ãã¼ãã¡ã³ããåã«ã:ref:`with ã¹ãã¼ãã¡ã³ã <with-statement>` ãå¾ã«ç½®ããã¨ã¨åç­ã§ã:: with ã¹ãã¼ãã¡ã³ãã¯ãã¤ã³ã¿ã©ã¯ã·ã§ã³ãèµ·ããã¾ããã¤ã³ã¿ã©ã¯ã·ã§ã³ã®æéå¹ã¯ã¦ã¼ã¶ã¼ãå¶å¾¡ã§ãã¾ãããã¦ã¼ã¶ã¼ãæ©ãçµãããããã¨ãã§ãã¾ãã with ã¹ãã¼ãã¡ã³ãã¯ãç¹æ®ãªå¤ ``None`` ãä¸ããã¨ãåä½ãå¤ããã¾ãã ``with None`` ã¹ãã¼ãã¡ã³ãã¯ãã¦ã¼ã¶ã¼ã«è¡¨ç¤ºãããã®ãå¤ããªããçç¥ãããã¤ã³ã¿ã©ã¯ã·ã§ã³ãèµ·ããã¾ããæ¬¡ã®ãã©ã³ã¸ã·ã§ã³ã¯ããã®çç¥ãããã¤ã³ã¿ã©ã¯ã·ã§ã³ãçµãã£ãæç¹ã§è¡¨ç¤ºããã¦ããå ´é¢ããå§ã¾ãã¾ãã with ã¹ãã¼ãã¡ã³ãã¯ãã·ã¼ã³ãå¤ããã¨ãã«ä½¿ããã¾ãããã©ã³ã¸ã·ã§ã³å¹æãé©ç¨ãã¦ãç»åã®è¡¨ç¤ºãéè¡¨ç¤ºãç·©ããã«ãã¾ããwith ã¹ãã¼ãã¡ã³ãã¯ãäºç´èª ``with`` ã¨ãããã«ç¶ãè©ä¾¡ããã©ã³ã¸ã·ã§ã³ãç¹æ®å¤ ``None`` ã§ããåç´å¼ã§ã§ãã¦ãã¾ãã ç»åå®ç¾©ã«ã¯ 2 ã¤ã®æ¹æ³ãããã¾ããç»åãã£ã¬ã¯ããªã¼ã«ç»åãã¡ã¤ã«ãç½®ããã image ã¹ãã¼ãã¡ã³ãã§ç»åãå®ç¾©ãããã§ããåèã¯åç´ã§ããã£ã¬ã¯ããªã¼åã«é©åãªååã®ãã¡ã¤ã«ãéç½®ããã ãã§ãããå¾èã¯ç»åå®ç¾©æã«è©³ç´°ãªå¶å¾¡ãåºæ¥ãç»åãã¡ã¤ã«ä»¥å¤ãç»åã¨ãã¦æ±ãã¾ãã ããã¯ã2 ã¤ã®ãã©ã³ã¸ã·ã§ã³ãè¡ãã¾ããæåã® with ã¹ãã¼ãã¡ã³ãã¯ã ``dissolve`` ãã©ã³ã¸ã·ã§ã³ãä½¿ããã¹ã¯ãªã¼ã³ã washington èæ¯ã«å¤ãã¾ãã(``dissolve`` ãã©ã³ã¸ã·ã§ã³ã¯ãããã©ã«ãã§ã0.5 ç§ã®ãã£ã¾ã«ãã¨å®ç¾©ããã¦ãã¾ãã) ããã¯ãscene ã¹ãã¼ãã¡ã³ããshow ã¹ãã¼ãã¡ã³ããhide ã¹ãã¼ãã¡ã³ãã§ä½¿ãããããã©ã«ãã®ã¬ã¤ã¤ã¼ã§ããä¸»ã«ãèæ¯ãã­ã£ã©ã¯ã¿ã¼ã¹ãã©ã¤ãã«ä½¿ããã¾ãã ãã®ã¬ã¤ã¤ã¼ã¯ãã¹ã¯ãªã¼ã³æ©è½ã«ãã£ã¦ä½¿ããã¾ãã ãã®å¦çã¯ç»åãã£ã¬ã¯ããªã¼ä¸ã®ãã¹ã¦ã®ãã£ã¬ã¯ããªã¼ã§èµ·ããã¾ããä¾ãã°ä»¥ä¸ã®ãã¹ã¦ã®ãã¡ã¤ã«ã¯ç»å ``eileen happy`` ãå®ç¾©ãã¾ãã å¤æã®é©ç¨ããããã«ã¯ãæ¬¡ã®ããã«ãã¾ã:: ç»åãç´æ¥ game ãã£ã¬ã¯ããªã¼ã«ãªãã¨ãããã£ã¬ã¯ããªã¼ãæå®ããå¿è¦ãããã¾ããä¾ãã°ãç»åã game/eileen/happy.png ãªããä»¥ä¸ã®ããã«æ¸ãã¾ãã :: sceneãshowãhide ã¹ãã¼ãã¡ã³ãã® with ç¯ with None with ã¹ãã¼ãã¡ã³ã ããã¯æ¸ããã«:: ``as`` ``at`` ``behind`` ``hide`` - ã¬ã¤ã¤ã¼ããã¤ã¡ã¼ã¸ãåãé¤ãã¾ãã ``image`` - æ°ããç»åãå®ç¾©ãã¾ãã ``onlayer`` ``scene`` - ã¬ã¤ã¤ã¼ãã¯ãªã¢ããå¿è¦ãªãã¬ã¤ã¤ã¼ã«ç»åãè¡¨ç¤ºãã¾ãã ``show`` - ã¬ã¤ã¤ã¼ã«ç»åãè¡¨ç¤ºãã¾ãã ``zorder`` ããã¯æ¬¡ã¨ç­ä¾¡ã§ã:: master ã¾ãã¯:: overlay screens transient 