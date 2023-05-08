                OS/2 GRADD DEVICE DRIVERS                                Page 1

  EXTRACTION
  __________

  To set up the GRADD Graphics BBS driver installation directory, do the
  following:

  1.  Open an OS/2 full-screen or OS/2 window session.

  2.  Before running the GRADDBB*.EXE self extracting zip file (the exact
      name depends on the release build number), change the current directory
      to the "installation directory" in which you wish to store the GRADD
      Graphics BBS driver installation files. We suggest C:\BBS\GRADD.
      At the OS/2 command prompt, type the following commands:

      C:
      MD C:\BBS
      MD C:\BBS\GRADD
      CD C:\BBS\GRADD

  3.  Use the "-DIR" and "-OVER" options on the GRADDBB*.EXE self extracting
      zip file to create the installation directory tree. You may wish to copy
      the GRADDBB*.EXE self extracting zip file to the installation directory
      first. Then at the OS/2 command prompt, type the following command:

      GRADDBB* -DIR -OVER

  4.  Use SET LANG= to set the correct language. The language may already be
      correctly set in your CONFIG.SYS.  If not, then at the OS/2 command
      prompt, type one of these SET LANG= commands to choose your language:

      SET LANG=ar_AA    for Arabic (English with Arabic graphics formatting)
      SET LANG=pt_BR    for Brazil
      SET LANG=zh_CN    for Simplified Chinese
      SET LANG=de_DE    for Germany
      SET LANG=da_DK    for Denmark
      SET LANG=es_ES    for Spain
      SET LANG=el_GR    for Greece (English with Greek graphics formatting)
      SET LANG=fi_FI    for Finland
      SET LANG=fr_FR    for France
      SET LANG=iw_IL    for Israel (English with Hebrew graphics formatting)
      SET LANG=it_IT    for Italy
      SET LANG=ja_JP    for Japan
      SET LANG=ko_KR    for Korea
      SET LANG=nl_NL    for Netherlands
      SET LANG=no_NO    for Norway
      SET LANG=sv_SE    for Sweden
      SET LANG=zh_TW    for Taiwan
      SET LANG=en_US    for English (default)

      Each language has its own copy of this README.TXT file, which may be
      translated from English, as well as other language dependent files.



                OS/2 GRADD DEVICE DRIVERS                                Page 2

  5.  The SETUP command in the installation directory may then be used to
      install the proper language dependent files and configuration
      information from the install directory onto your boot drive.
      Running SETUP without any options will give brief syntactic help
      about the SETUP command (described later in detail in this README file)
      in your chosen or default language.  To see this help, at the OS/2
      command prompt, type the following command:

      SETUP


  CONTENTS
  ________

  Extraction . . . . . . . . . . . . . . . . . . . .  1
  Package Contents . . . . . . . . . . . . . . . . .  2
  Licenses and Warranties. . . . . . . . . . . . . .  3
  Trademarks . . . . . . . . . . . . . . . . . . . .  3
  Graphics Adapter Device Drivers (GRADD)  . . . . .  4
  Supported Features . . . . . . . . . . . . . . . .  4
  Drivers Included . . . . . . . . . . . . . . . . .  4
  Supported Resolutions  . . . . . . . . . . . . . .  5
  Compatibility  . . . . . . . . . . . . . . . . . .  5
  Functional Restrictions  . . . . . . . . . . . . .  5
  Copying To Diskettes . . . . . . . . . . . . . . .  6
  Installation . . . . . . . . . . . . . . . . . . .  7
  Preliminary Steps  . . . . . . . . . . . . . . . .  7
  Setting Your Display To VGA Mode . . . . . . . . .  7
  Attended Installation  . . . . . . . . . . . . . .  7
  Installation in a CID Environment  . . . . . . . . 10
  APAR Fixes Included in This Driver . . . . . . . . 12


  PACKAGE CONTENTS
  ________________

  This package contains the following:

  o   OS/2* GRADD graphics device drivers.

  o   This README.TXT file, formatted for viewing on your screen.
      You can:
      -   Use the Table of Contents and page numbers (which appear at the top
          of each page) to help you locate specific topics.
      -   Use the Find option in the Edit menu of the OS/2 System Editor to
          help you locate specific information.
      -   Print the file.







                OS/2 GRADD DEVICE DRIVERS                                Page 3

  LICENSES AND WARRANTIES
  _______________________

  PLEASE READ THE FOLLOWING TERMS AND CONDITIONS.
  YOUR USE OF THE OS/2 GRADD DEVICE DRIVERS
  INDICATES YOUR ACCEPTANCE OF THE FOLLOWING TERMS AND CONDITIONS:

  o   YOU MUST BE, AND YOU AGREE THAT YOU ARE, A PRIOR LICENSEE OF OS/2.
  o   YOU MAY MAKE COPIES OF THE OS/2 GRADD DEVICE DRIVERS
      EQUAL TO THE NUMBER OF LICENSED COPIES OF OS/2 YOU POSSESS.
  o   ALL OTHER TERMS AND CONDITIONS OF YOUR OS/2 LICENSE AGREEMENT APPLY TO
      THESE OS/2 GRADD DEVICE DRIVERS;
      HOWEVER, THIS DOES NOT EXTEND ANY WARRANTY OUTLINED IN SUCH AGREEMENT.
  o   READ THIS ENTIRE DOCUMENT BEFORE BEGINNING THE GRAPHICS DEVICE DRIVER
      INSTALLATION.

  IBM DISCLAIMS ALL OTHER WARRANTIES, WHETHER EXPRESS OR IMPLIED, INCLUDING
  WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF FITNESS FOR A PARTICULAR
  PURPOSE AND MERCHANTABILITY WITH RESPECT TO THE INFORMATION IN THIS DOCUMENT.
  BY FURNISHING THIS DOCUMENT, IBM GRANTS NO LICENSES TO ANY RELATED PATENTS OR
  COPYRIGHTS.

  THESE DRIVERS ARE COPYRIGHTED BY INTERNATIONAL BUSINESS MACHINES CORPORATION.
  ALL APPROPRIATE RESTRICTIONS APPLY.


  TRADEMARKS
  __________

  The following terms, denoted by an asterisk (*) in this file, are trademarks
  or registered trademarks of IBM Corporation in the United States and/or other
  countries:

      IBM
      MMPM/2
      OS/2
      Presentation Manager
      WIN-OS/2

  The following terms, denoted by a double asterisk (**) in this file, are
  trademarks or registered trademarks of other companies as follows:

  TRADEMARKS                OWNER
  __________                __________________________

  ATI, Mach64, Rage         ATI Technologies, Inc.
  CorelDRAW                 Corel Corporation
  Millenium, Mystique       Matrox
  S3, Trio, Virge, Savage   S3 Incorporated
  VESA                      Video Electronics Standards Association
  Windows                   Microsoft Corporation



                OS/2 GRADD DEVICE DRIVERS                                Page 4

  GRAPHICS ADAPTER DEVICE DRIVERS (GRADD)
  _______________________________________

  GRADD is an IBM OS/2* architecture that makes it easier to support new
  graphics hardware as it becomes available.  Enhanced PM applications
  performance can be realized when using accelerated GRADD drivers.

  Several new and updated GRADD drivers are included with this package.


  SUPPORTED FEATURES
  __________________

  The GRADD device drivers provide seamless support for accelerated and
  unaccelerated display graphics and advanced color depth and resolutions.
  They conform to the OS/2 32-bit flat memory model and are designed to
  function as 32-bit Presentation Manager* graphics display drivers under
  the OS/2 32-bit graphics engine.


  DRIVERS INCLUDED
  ________________

  The following accelerated GRADD drivers are included:

      * ATI Mach64/Rage GRADD                              (M64GRADD)
      * Chips & Technology 6555x GRADD                     (CHPGRADD)
      * Matrox Millenium/Mystique/G100/G200 GRADD          (MGAGRADD)
      * NeoMagic 2090/2093/2097/2160/2200/2360 GRADD       (NMGRADD)
      * S3 86x/96x/Trio/Trio3D/Savage3D/Savage4 GRADD      (S3GRADD)
      * S3 Virge GRADD                                     (S3DGRADD)
      * Trident 3DImage975/Cyber9397 GRADD                 (TRIGRADD)

  Also included are generic VGA and SVGA support.

      * Video Graphics Array GRADD                         (VGAGRADD)
      * Generic VESA Unaccelerated GRADD                   (GENGRADD)
      * Generic VESA Unaccelerated & VGA (Default) GRADDs  (G_VGRADD)

  If an accelerated GRADD driver is not included for your adapter,
  GENGRADD may provide UNACCELERATED support for display graphics at enhanced
  resolutions and colors depths.  GENGRADD will work with most adapters
  that include a VESA compliant BIOS; and the performance, which will vary
  depending on system configuration, will not be as good as an accelerated
  driver.










                OS/2 GRADD DEVICE DRIVERS                                Page 5

  SUPPORTED RESOLUTIONS
  _____________________

  Supported resolutions and color depths are adapter dependent and will vary
  depending on the amount of graphics memory and the adapter implementation.


  COMPATIBILITY
  _____________

  These graphics device drivers are currently compatible with:

        All versions of OS/2 3.0  with fixpak level 35 or later
        All versions of OS/2 4.0  with fixpak level  5 or later
        All versions of OS/2 Warp Server for e-business

  The SETUP installation command rejects installations on unacceptable OS/2
  versions or fixpak levels.

  Also, after installing these graphics drivers, if you later wish to
  uninstall any required Fixpak to a Fixpak level before Fixpak 5 (OS/2 4.0)
  or Fixpak 35 (OS/2 3.0), you should first restore your computer to VGA to
  remove the GRADD BBS drivers.

  Other than the use of English messages, the SBCS drivers installed for SBCS
  languages not in the SET LANG= list in the section entitled "Extraction"
  above are correctly functional for the chosen language.

  FUNCTIONAL RESTRICTIONS
  _______________________

  Current known restrictions include the following:

  1) IBM has tested many computers and adapters incorporating the graphics
     devices for the accelerated drivers listed.  Testing was only done on
     computers with PCI bus graphics, although a PCI bus is not a specific
     requirement.

  2) Sniff testing on ISA bus graphics adapters has worked.  However when
     trying to restore your previous "PM" driver, there was a sometimes a
     problem detecting the adapter.  Powering off the computer to initialize
     the adapter after restoring VGA should solve the problem.

     ATI Mach 64 ISA Bus adapters are currently not supported.

  3) All the GRADD drivers, except for VGAGRADD, require VESA** compliant video
     BIOS (Version 1.2 or greater) or an appropriate SVGADATA.PMI file. For
     older non-VESA adapters with SVGA PM driver support from IBM, GENGRADD may
     often be used as an alternative SVGA driver set by following the GRADD
     Graphics BBS drivers SETUP installation command with the command
     "SVGA ON INIT" from an OS/2 or DOS Full Screen prompt to create an
     SVGADATA.PMI file, before rebooting to use the GRADD drivers.


                OS/2 GRADD DEVICE DRIVERS                                Page 6

  4) M64GRADD and S3GRADD: Problems have been seen with certain adapters
     with hardware cursor support.  The symptoms vary from the pointer
     appearing as a solid black rectangle to corruption occuring on the screen
     where the cursor passes.  A workaround has been provided which forces
     the use of a software cursor.  Adding the following line to CONFIG.SYS
     and rebooting should solve the problem:

        SET HW_CURSOR=OFF

  You can find future fixes and updates for the GRADD and other graphics device
  drivers via the internet at:

     http://service5.boulder.ibm.com/pspfixpk.nsf

  At the above URL choose "All Fix packages - By Product" and then search for
  "GRADD".


  COPYING TO DISKETTES
  ____________________


  Once extracted to an installation directory tree, you may place the GRADD
  driver installation files on diskettes for backup or transportation purposes
  using the OS/2 BACKUP command:

  1. Open an OS/2 full-screen or OS/2 window session.

  2. Type "BACKUP C:\BBS\GRADD A: /S" and press the Enter key.

  3. Label and insert as many pre-formatted diskettes as required.

  4. You can use HELP BACKUP to get more information about the BACKUP command.

  To restore the same diskettes to the same or a different computer:

  1. Open an OS/2 full-screen or OS/2 window session.

  2. Type "RESTORE A: C:\BBS\GRADD /N /S" and press the Enter key.

  3. Insert previously backed up diskettes as required.

  4. You can use HELP RESTORE to get more information about the RESTORE command.

  IBM has made no provision for installing these drivers directly from
  diskettes.








                OS/2 GRADD DEVICE DRIVERS                                Page 7

  INSTALLATION
  ____________

  PRELIMINARY STEPS
  _________________

  The following steps prepare your computer before installing the GRADD device
  drivers:

  1.  Other applications, particularly WIN-OS/2 applications, should be closed
      so that the device driver installation can replace the driver files which
      an open application might have locked as read only.

  2.  If you previously installed an SVGA driver, return to VGA resolution
      using the procedures in the section of this README entitled "Setting Your
      Display to VGA Mode".


  SETTING YOUR DISPLAY TO VGA MODE
  ________________________________

  If your display is in sync and you otherwise have a usable Desktop, we
  recommend that you use Selective Install to set your display to VGA mode.
  Otherwise, use the following procedures to return to VGA mode.

      1.  Turn on your computer.  If your computer is already on, shutdown or
          press Ctrl+Alt+Del to restart it.
      2.  When a small white box appears in the upper left-hand corner of your
          screen, press Alt+F1.
      3.  When the Recovery Choices screen appears, press function key F3
          or the letter "V" depending on the operating system version.
      4.  Run Selective Install to change the Windows drivers.

  Once the computer has booted, your display adapter is restored and can work
  in VGA mode.  If you want to install a new display adapter or graphics
  device driver, refer to the chapter entitled "Video Procedures" in the User's
  Guide to OS/2 Warp.


  ATTENDED INSTALLATION
  _____________________

  To do an attended install of the GRADD Drivers from the self extracting zip
  file installation directory, do the following:

  1.  Open an OS/2 full-screen or OS/2 window session.

  2.  Before running the extracted SETUP.CMD file, use SET LANG= to set the
      correct language. The language may already be correctly set in your
      CONFIG.SYS.  The section of this README entitled "Extraction" gives
      examples.



                OS/2 GRADD DEVICE DRIVERS                                Page 8

  3.  At the OS/2 command prompt, type the following command to copy all the
      required files to the OS/2 boot drive:

          <SrcPath>SETUP xxx [<SrcPath>] [<BootDrive>] [/u]

      Where:
          xxx is one of:

              "ATI"   - ATI Mach64/Rage Family GRADD
              "CHP"   - Chips & Technology 6555x Family GRADD
              "DYN"   - Dynamically Selected GRADD
              "GEN"   - Generic VESA Unaccelerated GRADD
              "MGA"   - Matrox Millenium/Mystique/G100/G200 Family GRADD
              "NM"    - NeoMagic 2090/2093/2097/2160/2200/2360 Family GRADD
              "S3"    - S3 86x/96x/Trio/Trio3D/Savage3D/Savage4 Family GRADD
              "TRI"   - Trident 3DImage975/Cyber9397 Family GRADD
              "VGA"   - Video Graphics Array (VGA) GRADD
              "VIRGE" - S3 Virge Family GRADD

          <SrcPath> for SETUP is required if SETUP is not in the current
                      directory.

          [<SrcPath>] parameter is optional (required if next parameter
                      specified) and is the installation directory.

          [<BootDrive>] is optional and is the drive where OS/2 is installed.

          [/u] is optional and indicates an unattended install such as for
               CID installations.  A CID response file is not required.

      Then press Enter.

  4.  When prompted to do so, shutdown, and then restart your computer.

      NOTES:

      1) During the installation of this driver, DISPLAY.LOG and DSPINSTL.LOG
         files are created or appended to in the OS2\INSTALL directory.  These
         files identify the OS/2 system files that were updated and indicate
         whether the installation was successful and reasons for failure.  The
         contents of these files might be useful if you need to report an
         installation problem to IBM.

      2) You may be prompted about whether you want to overlay certain files
         where the target file is newer than the source file. In general, you
         should answer YES to all the prompts unless you have previously
         experienced specific problems with the driver and are reinstalling it.







                OS/2 GRADD DEVICE DRIVERS                                Page 9

  5.  After the computer reboots, do the following to configure correctly for
      your current display and choose an appropriate resolution and refresh
      rate:

      a.  Open the OS/2 System folder.
      b.  Open the System Setup folder.
      c.  Open the System object.
      d.  When the Settings notebook appears, select the Screen tab.
          Then go to Screen Page 2.
      e.  VESA** Display Data Channel (DDC) 1 and 2B protocols are supported
          for automatically detecting DDC displays.
          If your display is DDC compatible, Screen Page 2 should show a
          description of your display.
          If your display is not DDC compatible,
          select your display from the display list on Screen Page 2.
          If your display does not appear in the list, select Default.
      f.  Return to Screen Page 1 and select a resolution and refresh rate.
          Depending your adapter and display, refresh rates may not be
          selectable.
      g.  Close the Settings notebook.
      h.  Shutdown and restart your computer.

































                OS/2 GRADD DEVICE DRIVERS                               Page 10

  INSTALLING IN A CID ENVIRONMENT
  _______________________________

  NOTES:

  1.  Create a directory on the server (e.g. X:\BBS\GRADD) and extract the
      installation files from the self extracting GRADDBB*.EXE file to the
      X:\BBS\GRADD installation directory as described under the section
      entitled "Extraction".

  2.  You must have OS/2 successfully installed on the client using the CID
      (Configuration Installation Distribution) method.

  3.  To configure display selection, resolution and refresh rate, refer to the
      file "README.CFG" in this package.

  To install a device driver using CID, use the following information to modify
  your LCU command file.  The example below installs the ATI Mach64/Rage GRADD
  (M64GRADD).

  NOTE:  The following information is meant as a guide.
         Your LCU command file might be different.

    /*****************************************************/
    /*           LCU PRODUCT DATA SECTION                */
    /*****************************************************/

                          .
                          .
                          .

    x.graddvideo = 15
    x.15.name='ATI Gradd Video'
    x.15.statevar = 'CAS_' || x.15.name
    x.15.instprog = 'x:\bbs\gradd\SETUP.CMD',
                    ' ATI',
                    ' x:\bbs\gradd ' || bootdrive,
                    ' /u'
    x.15.rspdir   = ''
    x.15.default  = ''


    /*****************************************************/
    /*         NUMBER OF PROGRAMS SET UP IN THE          */
    /*               PRODUCT DATA SECTION                */
    /*****************************************************/

    NUM_INSTALL_PROGS = 15






                OS/2 GRADD DEVICE DRIVERS                               Page 11

    /*****************************************************/
    /*                  INSTALLATION SECTION             */
    /*****************************************************/
                          .
                          .
                          .

        when OVERALL_STATE = 2 then do
          if RunInstall(x.graddvideo) == BAD_RC then exit
          Call CheckBoot
        end
                          .
                          .
                          .

    /******************************************************/
    /*                ROUTINE SECTION                     */
    /*  The following information should already exist in */
    /*  the LCU command file.                             */
    /******************************************************/
                         .
                         .
                         .
    RebootAndGotoState:
      parse arg new_state, other

      rc2 = SetState(new_state, 'RebootAndGotoState', 1)    /* Set the state */
                                                            /*  to go to in  */
                                                            /* OVERALL_STATE */

      Call SaveStates                           /* Save the environment vars */

      Call Reboot                               /* Reboot the computer */

      return

                          .
                          .
                          .

    /*****************************************************/
    /*           END OF LCU INFORMATION TO BE ADDED      */
    /*****************************************************/











                OS/2 GRADD DEVICE DRIVERS                               Page 12

  APAR FIXES INCLUDED IN THIS DRIVER
  __________________________________

  Some fixed APARs may not be listed. If you received this driver through the
  IBM OS/2 support channel and your requested APAR is not listed, please
  install the driver, as your requested APAR is included.














































                                (End of Document)
