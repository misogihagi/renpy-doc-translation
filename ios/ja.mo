Þ    &      L  5   |      P  æ   Q  É   8           Ñ   $     ö       è                  &  q   °  	   "	  Ú   ,	     
  [   
  Ê   x
     C  =  U            V  °  ×     ª   ß  Â        M     i  Ç        O  ·   d  Å        â  À   ó     ´  .   ¸  ·   ç       H  ¦     ï  ÷   ð  e  è     N    m  !        ¨  V  »       '     ¸   G  ¤         ¥  þ   »  '   º  Y   â  å   <     "     2      ¸!  $   È!    í!    #  »   $  î   X%  9   G&  ;   &  û   ½&     ¹'  Î   Õ'    ¤(     ¿)  )  Ð)     ú*  ?   þ*  ÷   >+     6,                      %             !                                                &                    #                            $      
       "             	                     A list of video formats supported by iOS can be found `here <https://developer.apple.com/library/ios/documentation/Miscellaneous/Conceptual/iPhoneOSTechOverview/MediaLayer/MediaLayer.html#//apple_ref/doc/uid/TP40007898-CH9-SW6>`_. After the project has been created in Ren'Py, it can be opened in Xcode by choosing "Launch Xcode" from the launcher. Once the project is open in Xcode, it can be built and installed on the iOS device. Before you can package a Ren'Py game, you'll need to set up your Macintosh to create iOS applications. This means setting up Xcode on your Mac, enrolling in the iOS Developer Program, and creating a provisioning profile that allows your apps to run on your iOS device. Building the Project Choosing "Update Xcode Project" will copy the latest version of your Ren'Py project into the Xcode project. This is suitable for when your project files change, but not for when Ren'Py itself has been updated. Creating the Xcode Project Customization For testing purposes, Ren'Py supports two iOS emulation modes. These are accessed from the iOS screen of the launcher. Both modes simulate running on a touchscreen, such that events only reach the game when the mouse button is down. Getting Started Launch Images Most customization is performed in the Xcode project. For example, the icon, launch images, and orientations are all customized in Xcode. Once Ren'Py finishes initializing, it will either resume the current game, or run the splashscreen and main menu. Packaging Packaging a Ren'Py game for iOS is currently an involved process compared to the other platforms Ren'Py supports. We currently assume you have some experience with creating iOS apps, or can follow Apple's instructions. Platform Differences Please let us know the results of getting your game through the App Store approval process. Ren'Py supports creating iOS apps that run on iPhone and iPad devices. As creating an iOS app requires Apple-developed programs (like the Xcode IDE), iOS apps can only be created on Macintosh computers. Required Language Some of the libraries used by Ren'Py on iOS are licensed under the terms of the GNU Lesser/Library General Public License. You'll need to comply with the terms of that license to distribute Ren'Py. We believe including the following language in your app's description will suffice, but check with a lawyer to be sure. Tablet Testing and Emulation The Apple-written `App Distribution Quick Start <https://developer.apple.com/library/ios/documentation/IDEs/Conceptual/AppStoreDistributionTutorial/Introduction/Introduction.html>`_ guide explains how to configure all of the above. We suggest working through it, and even packaging a one of the template apps before moving on to Ren'Py games. The current Ren'Py iOS support is a work in progress. While it has been used to release games to the Apple App Store, the default Ren'Py interface does not comply with Apple's guidelines and will need to be changed. The first step in creating your iOS application is to create the Xcode project. This is done by selecting "Create Xcode Project" from the iOS menu in the Ren'Py launcher. The name of the Xcode project is automatically chosen based on the name that shows up in the launcher. The project is customized based this name, but those customizations can be edited in Xcode. This mode emulates an iPad. This mode emulates an iPhone. This program contains free software licensed under a number of licenses, including the GNU Lesser General Public License. A complete list of software is available at https://www.renpy.org/l/license/. Updating the Project When the application is run, the Launch Image (configure as part of the Xcode project, outside of Ren'Py) will be displayed until Ren'Py is ready to display the game's user interface. While these emulators can be used to quickly test your project, it's best to also test on real hardware. The emulators do not deal with some human-factors issues, like the size of a user's fingers. Work in Progress Xcode projects created in this way are specific to a single version of Ren'Py. After upgrading Ren'Py, you must create a new Xcode project for your game, and repeat the project customizations. iOS iOS does not support :class:`MultiPersistent`. iOS is similar to Android, but differs from the mouse-based platforms that Ren'Py supports. All of the :ref:`android platform differences <android-platform-differences>` apply to iOS. iPhone Project-Id-Version: Ren'Py Visual Novel Engine 6.99.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-09-11 07:24+0900
PO-Revision-Date: 2019-05-05 15:02+0900
Last-Translator: 
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 1.5.7
 iOS ã§ãµãã¼ãããããããªãã©ã¼ãããã®ãªã¹ãã¯ `here <https://developer.apple.com/library/ios/documentation/Miscellaneous/Conceptual/iPhoneOSTechOverview/MediaLayer/MediaLayer.html#//apple_ref/doc/uid/TP40007898-CH9-SW6>`_ ã§ãã ãã­ã¸ã§ã¯ãã Ren'Py ã§ä½æãããããã©ã³ãã£ã¼ãã "Launch Xcode" ãé¸æãã¦ Xcode ã§éãã¾ããä¸æ¦ãã­ã¸ã§ã¯ãã Xcode ã§éãã¨ iOS ããã¤ã¹ç¨ã«ãã«ããã¤ã³ã¹ãã¼ã«ãåºæ¥ã¾ãã Ren'Py ã²ã¼ã ãããã±ã¼ã¸ã³ã°ããåã«ã iOS ã¢ããªãä½æããããã« Mac ãè¨­å®ããå¿è¦ãããã¾ãã Mac ã« Xcode ãã»ãããã¦ iOS Developer Program ã«åå ããããªãã®ã¢ããªã iOS ããã¤ã¹ã§èµ·åãè¨±å¯ãããããã«ãã­ãã¸ã§ãã³ã°ãã­ãã¡ã¤ã«ãä½æãã¦ãã ããã ãã­ã¸ã§ã¯ãã®ãã«ã "Update Xcode Project" ãé¸æãã¦ããªãã® Ren'Py ãã­ã¸ã§ã¯ãã®ææ°çã Xcode ãã­ã¸ã§ã¯ãã«ã³ãã¼ãã¾ããããã¯ããªãã®ãã­ã¸ã§ã¯ããå¤æ´ãããæã«å¿è¦ã§ããã Ren'Py èªèº«ãæ´æ°ããæã¯å¿è¦ããã¾ããã Xcode ãã­ã¸ã§ã¯ãã®ä½æ ã«ã¹ã¿ãã¤ãº ãã¹ãã®ããã Ren'Py ã¯ 2 ã¤ã® iOS ã¨ãã¥ã¬ã¼ãã¢ã¼ãããµãã¼ããã¦ãã¾ãããããã¯ã©ã³ãã£ã¼ã® IOS ã¹ã¯ãªã¼ã³ããã¢ã¯ã»ã¹ãããå±ã«ãã¦ã¹ãã¿ã³ãæ¼ããã¨ãã®ã¿ã¤ãã³ããã²ã¼ã ã«å±ããããã¿ããã¹ã¯ãªã¼ã³ã§ã®èµ·åãã¨ãã¥ã¬ã¼ããã¾ãã å§ããã èµ·åã¨ãã¬ã¹ãã©ãã·ã¥ç»å ã»ã¨ãã©ã®ã«ã¹ã¿ãã¤ãºã¯ Xcode ãã­ã¸ã§ã¯ãã§å¦çããã¾ããä¾ãã°ã¢ã¤ã³ã³ãèµ·åç»åãæ¹åã¯ãã¹ã¦Xcode ã§ã«ã¹ã¿ãã¤ãºããã¾ãã ä¸æ¦ Ren'Py ãåæåãå®äºããã¨ãç¾å¨ã®ã²ã¼ã ãåéããããã¹ãã©ãã·ã¥ã¹ã¯ãªã¼ã³ã¨ã¡ã¤ã³ã¡ãã¥ã¼ãèµ·åãã¾ãã ããã±ã¼ã¸ã³ã° iOS ç¨ã® Ren'Py ã²ã¼ã ã®ããã±ã¼ã¸ã³ã°ã¯ã Ren'Py ããµãã¼ãããä»ã®ãã©ãããã©ã¼ã ã¨æ¯ã¹ã¦è¤éã§ãã iOS ã¢ããªã®ä½æçµé¨ããããã Apple ã®è¦ç´ã«å¾ãããã®ã¨ãã¦è©±ããé²ãã¾ãã ãã©ãããã©ã¼ã ã«ããéã ããªãã®ã²ã¼ã ã App ã¹ãã¢ã®å¯©æ»çµæãç§éã«æãã¦ãã ããã Ren'Py ã¯ iPhone ã iPad ã§åä½ãã iOS ã¢ããªã®ä½æããµãã¼ããã¾ãã iOS ã¢ããªã®ä½æã«ã¯ Xcode ã®ãããª Apple ã®éçºç°å¢ãå¿è¦ã§ã iOS ã¢ããªã¯ Mac ã§ã®ã¿ä½æå¯è½ã§ãã å¿è¦ãªæè¨ iOS ã§ Ren'Py ãä½¿ç¨ãã¦ããã©ã¤ãã©ãªã®ãªãã«ã¯ LGPL ã©ã¤ã»ã³ã¹æ¡ä»¶ã®åã§è¨±å¯ããã¦ãããã®ãããã¾ãã Ren'Py ãéå¸ããããã«ã¯ãã®ã©ã¤ã»ã³ã¹æ¡é ã«æ²¿ãå¿è¦ãããã¾ããããªãã®ã¢ããªã®èª¬æã«ä»¥ä¸ã®æè¨ãå«ããã°ååã ã¨ä¿¡ãã¾ãããç¢ºèªã®ããå¼è­·å£«ã¨èª¿æ»ãã¦ãã ããã ã¿ãã¬ãã ãã¹ãã¨ã¨ãã¥ã¬ã¼ã·ã§ã³ Apple ãä½æããã¬ã¤ã `App Distribution Quick Start <https://developer.apple.com/library/ios/documentation/IDEs/Conceptual/AppStoreDistributionTutorial/Introduction/Introduction.html>`_ ã§ã¯ä¸è¨ãã¹ã¦ã®è¨­å®æ¹æ³ãèª¬æããã¦ãã¾ããããã«å¾ã£ã¦ä½æ¥­ãã Ren'Py ã®åã«ãã³ãã¬ã¼ãã¨ã¢ããªã®ã²ã¨ã¤ã®ããã±ã¼ã¸ã³ã°ããã¦ã¿ã¦ãã ããã Ren'Py ã® iOS ãµãã¼ãã¯ç¾å¨é²è¡ä¸­ã§ãã Apple App ã¹ãã¢ã§ãªãªã¼ã¹ãããã²ã¼ã ã«ä½¿ç¨ããã¦ãã¾ãããããã©ã«ãã® Ren'Py ã®ã¤ã³ã¿ã¼ãã§ã¼ã¹ã¯ Apple ã®ã¬ã¤ãã©ã¤ã³ã«å¾ã£ã¦ããããå¤æ´ãå¿è¦ãªã§ãããã iOS ã¢ããªä½æã®æåã®æé ã¯ Xcode ãã­ã¸ã§ã¯ãã®ä½æã§ããããã¯ã©ã³ãã£ã¼ã® iOS ã¡ãã¥ã¼ãã "Create Xcode Project" ãé¸æãã¦è¡ãã¾ãã Xcode ãã­ã¸ã§ã¯ãã®ååã¯ã©ã³ãã£ã¼ã«è¡¨ç¤ºããã¦ããååããèªåçã«é¸æããã¾ãããã­ã¸ã§ã¯ãã¯ãã®ååã«ããè¨­å®ããã¾ããããããã®è¨­å®ã¯ Xcode ã§ç·¨éåºæ¥ã¾ãã ãã®ã¢ã¼ãã¯ iPad ãã¨ãã¥ã¬ã¼ããã¾ãã ãã®ã¢ã¼ãã¯ iPhone ãã¨ãã¥ã¬ã¼ããã¾ãã ãã®ãã­ã°ã©ã ã«ã¯ GNU Lesser General Public ã©ã¤ã»ã³ã¹ãå«ããããã¤ãã®ã©ã¤ã»ã³ã¹ä¸ã§ã©ã¤ã»ã³ã¹ããã¦ãã¾ãã  https://www.renpy.org/l/license/ ã«ã¯ã½ããã¦ã§ã¢ã®å®å¨ãªãªã¹ããããã¾ãã ãã­ã¸ã§ã¯ãã®æ´æ° ã¢ããªã±ã¼ã·ã§ã³å®è¡æããã¬ã¹ãã©ãã·ã¥ç»å (Ren'Py å¤ã® Xcode ãã­ã¸ã§ã¯ãã§è¨­å®ããã¾ã) ã¯ Ren'Py ãã²ã¼ã ã®è¡¨ç¤ºæºåãçµããã¾ã§è¡¨ç¤ºããã¾ãã ãããã®ã¨ãã¥ã¬ã¼ã¿ã¼ã¯ãã­ã¸ã§ã¯ãã®ç°¡æãªãã¹ãã§ä½¿ç¨å¯è½ã§ãããå®éã®ãã¼ãã¦ã§ã¢ã§ãã¹ããããã¨ãæåã§ããã¨ãã¥ã¬ã¼ã¿ã¼ã¯ã¦ã¼ã¶ã¼ã®æã®å¤§ããã®ãããªãã¥ã¼ãã³ã¨ã©ã¼ã¯æ±ãã¾ããã Work in Progress ãã®æ¹æ³ã§ä½æããã Xcode ãã­ã¸ã§ã¯ãã¯ Ren'Py ã®ãã¼ã¸ã§ã³æ¯ã«ç¹æã§ãã Ren'Py ãã¢ããã°ã¬ã¼ãããå¾ã¯ãããªãã®ã²ã¼ã ã®ããã«æ°ãã Xcode ãã­ã¸ã§ã¯ãã®ä½æã¨ããã­ã¸ã§ã¯ãã®è¨­å®ãããªããã°ãªãã¾ããã iOS iOS ã¯ :class:`MultiPersistent` ããµãã¼ããã¾ããã iOS ã¯ Android ã¨ä¼¼ã¦ãã¾ããã Ren'Py ããµãã¼ããããã¦ã¹ãã¼ã¹ã®ãã©ãããã©ã¼ã ã¨éãã¾ãã :ref:`android platform differences <android-platform-differences>` ã¯ãã¹ã¦ iOS ã«ããã¦ã¯ã¾ãã¾ãã iPhone 