                OS/2-GRADD-EINHEITENTREIBER                    Seite 1

  ENTPACKEN
  _________

  Zum Einrichten des Installationsverzeichnisses fÅr GRADD-
  Grafik-BBS-Treiber folgenderma·en vorgehen:


  1.  Einen OS/2-Gesamtbildschirm oder ein OS/2-Fenster îffnen. 

  2.  Vor dem AusfÅhren der selbstentpackenden Datei GRADDBB*.EXE
      (der Name variiert nach Release-Nummer) das aktuelle Verzeichnis
      als "Installationsverzeichnis" auswÑhlen, in dem die
      Installationsdateien des GRADD-Grafik-BBS-Treibers gespeichert
      werden sollen. Vorschlag: C:\BBS\GRADD. Bei der
      OS/2-Eingabeaufforderung folgende Befehle eingeben:

      C:
      MD C:\BBS
      MD C:\BBS\GRADD
      CD C:\BBS\GRADD

  3.  Bei der selbstentpackenden Datei GRADDBB*.EXE die Optionen
      "-DIR" und "-OVER" angeben, um den Verzeichnisbaum fÅr die
      Installation zu erstellen. Mîglicherweise wird die
      selbstentpackende Datei GRADDBB*.EXE zunÑchst ins
      Installationsverzeichnis kopiert. In diesem Fall bei der
      OS/2-Eingabeaufforderung folgenden Befehl eingeben: 

      GRADDBB* -DIR -OVER

  4.  Mit SET LANG= die richtige Sprache setzen. Die Sprache ist
      mîglicherweise in der Datei CONFIG.SYS bereits richtig gesetzt.
      Andernfalls bei der OS/2-Eingabeaufforderung einen der
      folgenden SET LANG-Befehle eingeben, um die Sprache auszuwÑhlen: 

      SET LANG=ar_AA    Arabisch (Englisch mit arabischem Grafikformat)
      SET LANG=pt_BR    Brasilien
      SET LANG=zh_CN    Vereinfachtes Chinesisch
      SET LANG=de_DE    Deutschland
      SET LANG=da_DK    DÑnemark
      SET LANG=es_ES    Spanien
      SET LANG=el_GR    Griechenland (Englisch mit griechischem Grafikformat)
      SET LANG=fi_FI    Finnland
      SET LANG=fr_FR    Frankreich
      SET LANG=iw_IL    Israel (Englisch mit hebrÑischem Grafikformat)
      SET LANG=it_IT    Italien
      SET LANG=ja_JP    Japan
      SET LANG=ko_KR    Koreanisch
      SET LANG=nl_NL    Niederlande
      SET LANG=no_NO    Norwegen
      SET LANG=sv_SE    Schweden
      SET LANG=zh_TW    Taiwan
      SET LANG=en_US    Englisch (Standard)

      FÅr jede Sprache steht eine eigene Kopie der Datei README.TXT zur
      VerfÅgung, die aus dem Englischen Åbersetzt sein kann, sowie
      weitere sprachabhÑngige Dateien.




                OS/2-GRADD-EINHEITENTREIBER                    Seite 2

  5.  Der Befehl SETUP im Installationsverzeichnis kann dann dazu
      verwendet werden, die richtigen sprachabhÑngigen Dateien
      und Konfigurationsinformationen vom Installationsverzeichnis
      in das Startverzeichnis Ihres Rechners zu kopieren. Bei der
      AusfÅhrung von SETUP ohne Optionen wird eine Syntaxhilfe fÅr
      den Befehl SETUP (der spÑter in dieser README-Datei ausfÅhrlich
      erlÑutert wird) in der ausgewÑhlten bzw. der standardmÑ·igen
      Sprache angezeigt. Zum Anzeigen der Hilfe bei der
      OS/2-Eingabeaufforderung folgenden Befehl eingeben:


      SETUP


  INHALT
  ________

  Entpacken  . . . . . . . . . . . . . . . . . . . .  1
  Paketinhalt      . . . . . . . . . . . . . . . . .  2
  Lizenzen und GewÑhrleistung  . . . . . . . . . . .  3
  Marken     . . . . . . . . . . . . . . . . . . . .  3
  Graphics Adapter Device Drivers (GRADD)  . . . . .  4
  UnterstÅtzte Funktionen  . . . . . . . . . . . . .  4
  Enthaltene Treiber . . . . . . . . . . . . . . . .  4
  UnterstÅtzte Auflîsungen . . . . . . . . . . . . .  5
  KompatibilitÑt . . . . . . . . . . . . . . . . . .  5
  FunktionsbeschrÑnkungen  . . . . . . . . . . . . .  5
  Auf Diskette kopieren  . . . . . . . . . . . . . .  6
  Installation . . . . . . . . . . . . . . . . . . .  7
  Vorbereitung         . . . . . . . . . . . . . . .  7
  Anzeige in den VGA-Modus setzen    . . . . . . . .  7
  öberwachte Installation  . . . . . . . . . . . . .  7
  Installation in einer CID-Umgebung . . . . . . . . 10
  Im Treiber enthaltene APAR-Korrekturen . . . . . . 12


  PAKETINHALT
  ___________

  Dieses Paket enthÑlt folgendes:

  o   GRADD-Grafikeinheitentreiber fÅr OS/2*


  o   Diese Datei README.TXT. Sie kînnen
      -   mit Hilfe des Inhaltsverzeichnisses und den Seitenzahlen
          (die sich auf jeder Seite oben befinden) nach bestimmten
          Themen suchen;
      -   mit der Option 'Suchen' im MenÅ 'Editieren' im OS/2-
          Systemeditor nach spezifischen Informationen suchen;
      -   die Datei drucken.







                OS/2-GRADD-EINHEITENTREIBER                    Seite 3

  LIZENZEN UND GEWéHRLEISTUNG
  ___________________________

  LESEN SIE DIE FOLGENDEN BEDINGUNGEN AUFMERKSAM DURCH. WENN
  SIE OS/2-GRADD-EINHEITENTREIBER VERWENDEN, ERKLéREN SIE SICH
  MIT DEN FOLGENDEN BEDINGUNGEN EINVERSTANDEN:

  o   SIE VERSICHERN, DASS SIE FöR OS/2 EINE LIZENZ BESITZEN.
  o   SIE SIND BERECHTIGT, VON DEN OS/2-GRADD-EINHEITENTREIBERN
      HôCHSTENS SO VIELE KOPIEN ZU ERSTELLEN, WIE SIE LIZENZEN FöR
      OS/2 BESITZEN.
  o   ALLE WEITEREN BEDINGUNGEN DER OS/2-LIZENZVEREINBARUNG GELTEN
      AUCH FöR DIESE OS/2-GRADD-EINHEITENTREIBER. DIE GEWéHRLEISTUNG
      EINER SOLCHEN VEREINBARUNG WIRD DADURCH JEDOCH NICHT ERWEITERT.
  o   VOR DER INSTALLATION DES GRAFIKEINHEITENTREIBERS LESEN SIE DAS
      GESAMTE DOKUMENT.


  DIE IN DIESER DATEI AUFGEFöHRTEN BEISPIELE SOLLEN LEDIGLICH DER
  VERANSCHAULICHUNG UND ZU KEINEM ANDEREN ZWECK DIENEN. DIESE
  BEISPIELE WURDEN NICHT UNTER ALLEN DENKBAREN BEDINGUNGEN GETESTET.
  MIT DER AUSLIEFERUNG DIESER INFORMATIONSDATEI IST KEINE LIZENZIERUNG
  VON PATENTEN ODER URHEBERRECHTEN VERBUNDEN.  

  FöR DIESE TREIBER BESTEHT EIN IBM COPYRIGHT. ENTSPRECHENDE
  EINSCHRéNKUNGEN SIND ANWENDBAR. 


  MARKEN
  ______

  Folgende Namen sind gewissen LÑndern Marken oder eingetragene
  Marken der IBM Corporation:


      Distributed Console Access Facility (DCAF)
      IBM
      MMPM/2
      OS/2
      Presentation Manager
      PS/ValuePoint
      WIN-OS/2

  Folgende Namen sind in gewissen LÑndern Marken oder eingetragene
  Marken anderer Unternehmen:

  MARKEN                   UNTERNEHMEN
  ______                   ___________

  ATI, Mach64, Rage        ATI Technologies, Inc.
  CorelDRAW                Corel Corporation
  Millenium, Mystique      Matrox
  Windows                  Microsoft Corporation
  S3, Trio, Virge          S3 Incorporated
  VESA                     Video Electronics Standards Association

                OS/2-GRADD-EINHEITENTREIBER                       Seite 4

  GRAPHICS ADAPTER DEVICE DRIVERS (GRADD)
  _______________________________________

  GRADD ist eine Architektur zur einfacheren UnterstÅtzung neuer
  Grafikhardware. Die LeistungsfÑhigkeit von PM-Anwendungen kann
  mit Hilfe beschleunigter GRADD-Treiber erweitert werden.

  Dieses Paket enthÑlt mehrere neue und aktualisierte GRADD-Treiber.


  UNTERSTöTZTE FUNKTIONEN
  _______________________

  GRADD-Treiber stellen nahtlose UnterstÅtzung fÅr beschleunigte und
  unbeschleunigte Anzeigengrafiken sowie erweiterte Farbtiefe
  und Auflîsungen zur VerfÅgung. Sie entsprechen dem linearen
  32-Bit-Speichermodell von OS/2 und funktionieren unter den
  32-Bit-Grafikmaschinen unter 0S/2 als 32-Bit-Grafikanzeigentreiber
  im Presentation Manager*.



  ENTHALTENE TREIBER
  __________________

  Folgende beschleunigte GRADD-Treiber sind enthalten: 

      * ATI Mach64/Rage GRADD           (M64GRADD)
      * Chips & Technology 6555X GRADD  (CHPGRADD)
      * Matrox Millenium/Mystique GRADD (MGAGRADD)
      * NeoMagic GRADD                  (NMGRADD)
      * S3 86x/96x/Trio GRADD           (S3GRADD)
      * S3 Virge/Trio3D GRADD           (S3DGRADD)

  Au·erdem ist UnterstÅtzung fÅr generisches VGA und SVGA enthalten.

      * Video Graphics Array GRADD      (VGAGRADD)
      * Generic SVGA GRADD              (GENGRADD)

  Wenn fÅr Ihren Adapter kein GRADD- oder PM-Treiber enthalten ist,
  stellt GENGRADD mîglicherweise UNBESCHLEUNIGTE UnterstÅtzung fÅr die
  Grafikanzeige mit erweiterter Auflîsung und Farbtiefe zur
  VerfÅgung. GENGRADD funktioniert mit den meisten Adaptern mit
  VESA-kompatiblem BIOS, und die von der Systemkonfiguration
  abhÑngige Leistung ist nicht so gro· wie bei beschleunigten
  Treibern.












                OS/2-GRADD-EINHEITENTREIBER                        Seite 5

  UNTERSTöTZTE AUFLôSUNGEN
  ________________________

  UnterstÅtzte Auflîsungen und Farbtiefen sind abhÑngig vom
  Adapter und richten sich nach dem Grafikspeicher und der
  Adapterimplementierung. 


  KOMPATIBILITéT
  ______________

  Diese Grafikeinheitentreiber sind derzeit kompatibel mit:


        allen Versionen von OS/2 3.0 mit Fixpak Stufe 35 oder hîher
        allen Versionen von OS/2 4.0 mit Fixpak Stufe 5 oder hîher
        allen Versionen von OS/2 Warp Server for e-business

  Der Installationsbefehl SETUP weist Installationen auf
  nicht akzeptablen OS/2-Versionen oder -Fixpak-Stufen zurÅck. 

  Wenn nach der Installation dieser Grafiktreiber ein erforderliches
  Fixpak deinstalliert und durch ein Fixpak niedriger als Fixpak 5
  (OS/2 4.0) oder Fixpak 35 (OS/2 3.0) ersetzt werden soll, mu·
  erst der VGA-Modus wiederhergestellt werden, um die GRADD-BBS-Treiber
  entfernen zu kînnen. 

  Abgesehen von der Anzeige von Nachrichten in Englisch sind die
  SBCS-Treiber, die fÅr SBCS-Sprachen installiert wurden, die sich nicht
  in der Liste 'SET LANG=' im Abschnitt 'Entpacken' befinden, fÅr
  die ausgewÑhlte Sprache voll funktionsfÑhig.

  FUNKTIONSBESCHRéNKUNGEN
  _______________________

  Folgende BeschrÑnkungen sind derzeit bekannt:

  1) IBM hat viele Computer und Adapter mit den Grafikeinheiten fÅr
     die aufgelisteten beschleunigten Treiber getestet. Die Tests
     wurden ausschlie·lich auf Computern mit PCI-Grafikbussen
     durchgefÅhrt. Ein PCI-Grafikbus ist jedoch nicht erforderlich.


  2) Tests mit Grafikadaptern fÅr ISA-Busse waren erfolgreich.
     Beim Versuch, den vorherigen "PM"-Treiber wiederherzustellen,
     wurde jedoch in einigen FÑllen der Adapter nicht erkannt. Das
     Problem lÑ·t sich lîsen, indem der Computer ausgeschaltet wird,
     um den Adapter nach Wiederherstellung des VGA-Modus zu
     initialisieren.


     ATI Mach 64-ISA-Busadapter werden derzeit nicht unterstÅtzt.


  3) Alle GRADD-Treiber mit Ausnahme von VGAGRADD benîtigen ein
     VESA**-kompatibles Video-BIOS (Version 1.2 oder hîher) oder eine
     entsprechende Datei SVGADATA.PMI. FÅr Ñltere Nicht-VESA-Adapter
     mit SVGA-PM-TreiberunterstÅtzung von IBM kann GENGRADD oft als
     alternativer SVGA-Treiber verwendet werden. Seine Einstellungen
     erfolgen nach dem Installationsbefehl 'SETUP' der GRADD-Grafik-
     BBS-Treiber. Dabei wird bei der Eingabeaufforderung in einem OS/2-
     oder DOS-Gesamtbildschirm der Befehl "SVGA ON INIT" eingegeben,
     um eine Datei SVGADATA.PMI zu erzeugen, bevor zur Verwendung der
     GRADD-Treiber das System erneut gestartet wird.



                OS/2-GRADD-EINHEITENTREIBER                     Seite 6

  4) M64GRADD und S3GRADD: Die Verwendung bestimmter Adapter
     kann Hardwarecursorprobleme nach sich ziehen. Der Cursor
     wird als schwarzes Rechteck angezeigt, oder die Bildschirmanzeige
     wird dort gestîrt, wo der Cursor Åber den Bildschirm bewegt
     wird. Es wurde eine Lîsung gefunden, die die Verwendung eines
     Softwarecursors erzwingt. Durch das HinzufÅgen der nachfolgenden
     Zeile zur Datei CONFIG.SYS und erneutes Starten des Rechners
     sollte sich das Problem beseitigen lassen: 

        SET HW_CURSOR=OFF

  Neue Korrekturen und Aktualisierungen fÅr GRADD und andere
  Grafikeinheitentreiber sind im Internet unter folgender Adresse
  abrufbar: 

     http://service5.boulder.ibm.com/pspfixpk.nsf

  Unter dieser URL "All Fix packages - By Product" auswÑhlen und nach
  "GRADD" suchen.


  AUF DISKETTE KOPIEREN
  _____________________


  Sobald die Installationsdateien des GRADD-Treibers in der
  Baumstruktur des Installationsverzeichnisses extrahiert wurden,
  kînnen sie zur Sicherung oder fÅr Transportzwecke mit dem folgenden
  OS/2 BACKUP-Befehl auf Diskette gespeichert werden:

  1. Einen OS/2-Gesamtbildschirm oder ein OS/2-Fenster îffnen.

  2. "BACKUP C:\BBS\GRADD A: /S" eingeben und die Eingabetaste drÅcken.

  3. Die erforderliche Anzahl vorformatierter Disketten beschriften
     und einlegen. 

  4. Weitere Informationen zum Befehl BACKUP wird durch Eingeben von
     HELP BACKUP angezeigt. 

  Dieselben Disketten werden auf denselben oder einen anderen Computer
  folgenderma·en zurÅckgeschrieben:


  1. Einen OS/2-Gesamtbildschirm oder ein OS/2-Fenster îffnen.

  2. "RESTORE A: C:\BBS\GRADD /N /S" eingeben und die Eingabetaste
     drÅcken.

  3. Zuvor gesicherte Disketten bei Aufforderung einlegen. 

  4. Weitere Informationen zum Befehl RESTORE wird durch Eingeben von
     HELP RESTORE angezeigt.

  IBM hat keine Vorkehrungen getroffen, damit diese Treiber direkt
  von Diskette installiert werden kînnen.









                OS/2-GRADD-EINHEITENTREIBER                         Seite 7

  INSTALLATION
  ____________

  VORBEREITUNG
  ____________

  Mit den folgenden Schritten wird der Computer fÅr die Installation
  von GRADD-Einheitentreibern vorbereitet: 

  1.  Alle anderen Anwendungen, vor allem WIN-OS/2-Anwendungen,
      mÅssen geschlossen werden, damit bei der Installation des
      Einheitentreibers die Treiberdateien ersetzt werden kînnen, die
      durch eine geîffnete Anwendung schreibgeschÅtzt sein kînnten. 

  2.  Wenn zuvor ein SVGA-Treiber installiert wurde, zur
      VGA-Auflîsung mit Hilfe der Prozeduren zurÅckkehren, die im
      Abschnitt "Anzeige in den VGA-Modus setzen" beschrieben sind. 


  ANZEIGE IN DEN VGA-MODUS SETZEN
  _______________________________

  Wenn Ihre Anzeige in Ordnung ist und die ArbeitsoberflÑche
  verwendbar ist, wird empfohlen, mit 'Installation anpassen'
  die Anzeige in den VGA-Modus zu setzen. Gehen Sie sonst zum
  ZurÅcksetzen in den VGA-Modus folgenderma·en vor: 

      1.  Den Computer einschalten. Wenn der Computer bereits
          eingeschaltet ist, das System herunterfahren oder
          Strg+Alt+Entf drÅcken, um das System erneut zu starten.
      2.  Wenn in der linken Ecke der Anzeige ein kleines wei·es
          Rechteck angezeigt wird, Alt-F1 drÅcken.
      3.  Wenn die Wiederherstellungsoptionen angezeigt werden,
          je nach Betriebssystemversion die Funktionstaste F3
          oder die Taste 'V' drÅcken.
      4.  Zum éndern der Windows-Treiber 'Installation anpassen'
          ausfÅhren. 

  Nach dem Neustart des Computers wird der Bildschirmadapter
  zurÅckgeschrieben und arbeitet im VGA-Modus. Informationen zur
  Installation eines neuen Bildschirmadapters oder eines Grafik-
  einheitentreibers sind im Kapitel mit den Videoprozeduren im OS/2
  Warp-Benutzerhandbuch zu finden.


  öBERWACHTE INSTALLATION
  _______________________

  Zur Åberwachten Installation der GRADD-Treiber im
  Installationsverzeichnis der selbstentpackenden Datei
  folgenderma·en vorgehen:


  1.  Einen OS/2-Gesamtbildschirm oder ein OS/2-Fenster îffnen. 

  2.  Vor dem AusfÅhren der extrahierten Datei SETUP.CMD mit dem
      Befehl SET LANG= die richtige Sprache setzen. Die Sprache
      ist mîglicherweise in der Datei CONFIG.SYS bereits richtig
      gesetzt. Beispiele hierzu enthÑlt der Abschnitt "Entpacken"
      dieser README-Datei.




                OS/2-GRADD-EINHEITENTREIBER                      Seite 8

  3.  Zum Kopieren aller erforderlichen Dateien in das
      OS/2-Startverzeichnis bei der OS/2-Eingabeaufforderung den
      folgenden Befehl eingeben:


          <Quellenpfad>SETUP xxx [<Quellenpfad>] [<Startverz>] [/u]

      Dabei gilt:
          xxx steht fÅr einen der folgenden Treiber:

              "ATI"   - ATI Mach64/Rage Family GRADD
              "CHP"   - Chips & Technology 6555x Family GRADD
              "DYN"   - Dynamically Selected GRADD
              "GEN"   - Generic VESA Unaccelerated GRADD
              "MGA"   - Matrox Millenium & Mystique Family GRADD
              "NM"    - NeoMagic 2090/2093/2097/2160/2200/2360 Family GRADD
              "S3"    - S3 86x/96x/Trio Family GRADD
              "VGA"   - Video Graphics Array (VGA) GRADD
              "VIRGE" - S3 Virge/Trio3D Family GRADD

          <Quellenpfad> mu· fÅr SETUP dann eingegeben werden, wenn
                        sich der Befehl nicht im aktuellen Verzeichnis
                        befindet.


          [<Quellenpfad>] ist ein wahlfreier Parameter (nur
                          erforderlich, wenn der nÑchste Parameter
                          angegeben ist) und steht fÅr das
                          Installationsverzeichnis.


          [<Startverz>] ist ein wahlfreier Parameter und steht fÅr
                        das Verzeichnis, in dem OS/2 installiert ist.

          [/u] ist wahlfrei und gibt eine nichtÅberwachte Installation
               an, wie sie z. B. fÅr CID-Installationen verwendet wird.
               Eine CID-Antwortdatei ist nicht erforderlich. 

      Die Eingabetaste drÅcken.

  4.  Bei der entsprechenden Aufforderung einen Systemabschlu·
      durchfÅhren und den Computer erneut starten.


      HINWEISE:

      1) WÑhrend der Installation dieses Treibers werden die Dateien
         DISPLAY.LOG und DSPINSTL.LOG im Verzeichnis OS2\INSTALL
         erstellt oder Daten daran angehÑngt. Diese Dateien
         identifizieren die aktualisierten OS/2-Systemdateien und
         geben an, ob die Installation erfolgreich war, oder geben
         die GrÅnde fÅr das Fehlschlagen an. Der Inhalt dieser
         Dateien erweist sich dann als nÅtzlich, wenn IBM ein
         Installationsfehler gemeldet werden mu·. 

      2) Das Programm fragt, ob an den Stellen, an denen die
         Zieldatei neuer als die Quellendatei ist, bestimmte Dateien
         Åberschrieben werden sollen. Normalerweise mu· bei den
         Eingabeaufforderungen stets JA angegeben werden, es sei denn,
         es sind spezifische Treiberfehler aufgetreten, und Sie
         installieren ihn gerade erneut.









                OS/2-GRADD-EINHEITENTREIBER                    Seite  9

  5.  Nach dem Neustart des Computers wie folgt vorgehen, um die
      richtige Konfiguration fÅr die aktuelle Anzeige durchzufÅhren, und
      eine passende Auflîsung und Bildwiederholfrequenz auswÑhlen: 

      a.  Den Ordner 'System' îffnen.
      b.  Den Ordner 'Systemkonfiguration' îffnen.
      c.  Das Objekt 'System' îffnen.
      d.  Wenn das Notizbuch 'Einstellungen' angezeigt wird, die
          Indexzunge 'Bildschirm' auswÑhlen. Dann zur Anzeigenseite 2
          wechseln.
      e.  Die Protokolle VESA** Display Data Channel (DDC) 1 und
          2B werden automatisch zur Erkennung von DDC-Anzeigen
          unterstÅtzt.
          Wenn die Anzeige DDC-kompatibel ist, mÅ·te auf der
          Anzeigenseite 2 eine Beschreibung der Anzeige angezeigt
          werden.
          Ist die Anzeige nicht DDC-kompatibel, die Anzeige auf der
          Anzeigenseite 2 auswÑhlen. Wenn die Anzeige nicht in der Liste
          enthalten ist, 'Standard' auswÑhlen.
      f.  Zur Anzeigenseite 1 zurÅckkehren und eine Auflîsung
          und Bildwiederholfrequenz auswÑhlen.
          Ob eine Bildwiederholfrequenz auswÑhlbar ist, hÑngt
          vom Adapter und von der Anzeige ab.
      g.  Das Notizbuch 'Einstellungen' schlie·en.
      h.  Einen Systemabschlu· durchfÅhren und den Computer
          erneut starten.


































                OS/2-GRADD-EINHEITENTREIBER                     Seite 10

  INSTALLATION IN EINER CID-UMGEBUNG
  __________________________________

  HINWEISE:

  1.  Auf dem Server ein Verzeichnis erstellen (z. B. X:\BBS\GRADD)
      und die Installationsdateien von der selbstentpackenden Datei
      'GRADDBB*.EXE' (siehe den Abschnitt 'Entpacken') im
      Installationsverzeichnis X:\BBS\GRADD extrahieren. 

  2.  Dazu mu· OS/2 erfolgreich mit der CID-Methode (Configuration,
      Installation, Distribution) auf dem Client installiert sein.

  3.  Informationen zum Konfigurieren der Auswahl, Auflîsung und
      Bildwiederholfrequenz enthÑlt die Datei "README.CFG" dieses
      Pakets.

  Zur Installation eines Einheitentreibers mit CID die folgende
  Information verwenden, um die LCU-Befehlsdatei zu Ñndern. Im
  Beispiel unten wird der Treiber ATI Mach64/Rage GRADD (M64GRADD)
  installiert.

  HINWEIS: Nachfolgende Informationen sind als Leitfaden gedacht.
           Ihre LCU-Befehlsdatei kann sich davon unterscheiden.

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






                OS/2-GRADD-EINHEITENTREIBER                     Seite 11

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











                OS/2-GRADD-EINHEITENTREIBER                     Seite 12

  IM TREIBER ENTHALTENE APAR-KORREKTUREN
  ______________________________________

  Einige korrigierte APARs sind mîglicherweise nicht aufgelistet. Wenn
  Sie diesen Treiber Åber den IBM OS/2-UnterstÅtzungskanal erhalten haben
  und der angeforderte APAR nicht auf der Liste steht, den Treiber
  installieren, wenn der angeforderte APAR eingefÅgt wird.














































                                (Ende des Dokuments)
