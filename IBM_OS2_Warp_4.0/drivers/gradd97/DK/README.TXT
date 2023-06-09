                OS/2 GRADD-styreprogrammer                               side 1

  Udpakning
  _________

  G�r f�lgende for at oprette installationsbiblioteket til GRADD Graphics
  BBS-styreprogrammet:

  1. �bn en OS/2-helsk�rm eller et OS/2-vindue.

  2. F�r du udf�rer den selvudpakkende ZIP-fil GRADDBB*.EXE (det n�jagtige
     navn afh�nger af programversionen), skal du skifte det aktuelle
     bibliotek til det installationsbibliotek, hvor installationsfilerne til
     GRADD Graphics BBS-styreprogrammet skal gemmes, f.eks. C:\BBS\GRADD.
     Skriv f�lgende kommandoer p� OS/2-kommandolinien:

      C:
      MD C:\BBS
      MD C:\BBS\GRADD
      CD C:\BBS\GRADD

  3. Brug parametrene -DIR og -OVER sammen med GRADDBB*.EXE for at oprette
     installationsbiblioteksoversigten. Du kan evt. kopiere filen
     GRADDBB*.EXE til installationsbiblioteket. Skriv herefter f�lgende
     kommando p� OS/2-kommandolinien:

      GRADDBB* -DIR -OVER

  4. Brug kommandoen SET LANG= til at angive det korrekte sprog. Sproget er
     m�ske allerede korrekt angivet i CONFIG.SYS-filen. Hvis det ikke er
     tilf�ldet, skal du skrive �n af f�lgende SET LANG=-kommandoer p�
     kommandolinien for at v�lge det korrekte sprog:

      SET LANG=ar_AA    for arabisk (engelsk med arabisk tegnformatering)
      SET LANG=pt_BR    for brasiliansk
      SET LANG=zh_CN    for forkortet kinesisk
      SET LANG=de_DE    for tysk
      SET LANG=da_DK    for dansk
      SET LANG=es_ES    for spansk
      SET LANG=el_GR    for gr�sk (engelsk med gr�sk tegnformatering)
      SET LANG=fi_FI    for finsk
      SET LANG=fr_FR    for fransk
      SET LANG=iw_IL    for israelsk (engelsk med hebr�isk tegnformatering)
      SET LANG=it_IT    for italiensk
      SET LANG=ja_JP    for japansk
      SET LANG=ko_KR    for koreansk
      SET LANG=nl_NL    for hollandsk
      SET LANG=no_NO    for norsk
      SET LANG=sv_SE    for svensk
      SET LANG=zh_TW    for taiwanesisk
      SET LANG=en_US    for engelsk (standard)

      Denne README.TXT fil findes p� alle sprogene. Filen kan v�re oversat
      fra engelsk sammen med andre sprogafh�ngige filer.



                OS/2 GRADD-styreprogrammer                               side 2

  5. Kommandoen SETUP i installationsbiblioteket kan bruges til at
     installere de korrekte sprogafh�ngige filer og konfigurationsoplysninger
     fra installationsbiblioteket til startdrevet.
     Hvis du udf�rer SETUP uden parametre, vises en kort hj�lp om kommandoens
     syntaks (beskrives senere i denne README-fil) i det sprog, du har valgt
     eller i standardsproget. Du f�r vist denne hj�lp ved at skrive f�lgende
     kommando p� OS/2-kommandolinien:

      SETUP


  Indhold
  _______

  Udpakning  . . . . . . . . . . . . . . . . . . . .  1
  Pakkens indhold  . . . . . . . . . . . . . . . . .  2
  Generelle vilk�r . . . . . . . . . . . . . . . . .  3
  Varem�rker . . . . . . . . . . . . . . . . . . . .  3
  GRADD (Graphics Adapter Device Drivers)  . . . . .  4
  Underst�ttede faciliteter. . . . . . . . . . . . .  4
  Inkluderede styreprogrammer  . . . . . . . . . . .  4
  Underst�ttede opl�sninger  . . . . . . . . . . . .  5
  Kompatibilitet . . . . . . . . . . . . . . . . . .  5
  Funktionelle begr�nsninger . . . . . . . . . . . .  5
  Kopiering til disketter  . . . . . . . . . . . . .  6
  Installation . . . . . . . . . . . . . . . . . . .  7
  Forberedende trin  . . . . . . . . . . . . . . . .  7
  Angivelse af sk�rmen til VGA-tilstand  . . . . . .  7
  Overv�get installation . . . . . . . . . . . . . .  7
  Installation i et CID-milj�  . . . . . . . . . . . 10
  APAR-rettelser i dette styreprogram  . . . . . . . 12


  Pakkens indhold
  _______________

  Denne pakke indeholder f�lgende:

  o   OS/2 GRADD-grafikstyreprogrammer.

  o   Denne README.TXT-fil.
      Du kan:
      -   bruge indholdsfortegnelsen og sidetallene, der vises �verst p� hver
          side, til at finde bestemte emner.
      -   bruge Valget S�g p� menuen Redig�r i OS/2 Redigeringsprogram til at
          finde bestemte oplysninger.
      -   udskrive filen.







                OS/2 GRADD-styreprogrammer                               side 3

  Generelle vilk�r
  ________________

  L�s f�lgende generelle vilk�r. Hvis De bruger OS/2 GRADD-styreprogrammerne,
  accepterer De f�lgende generelle vilk�r:

  o   De skal have, og De erkl�rer Dem indforst�et med, at De har en licens af
      OS/2.
  o   De m� lave kopier af OS/2 GRADD-styreprogrammerne, som svarer til det
      antal licenserede kopier, De ejer af OS/2.
  o   Alle andre generelle vilk�r i Deres OS/2-licensaftale g�lder for
      disse OS/2 GRADD-styreprogrammer. Imidlertid udvider dette ikke
      de vilk�r, der er beskrevet i en s�dan aftale.
  o   L�s hele dette dokument, f�r De starter installationen af
      grafikstyreprogrammerne.

  IBM fraskriver sig hermed enhver form for garanti, udtrykkelig
  eller underforst�et, herunder men ikke begr�nset til, en underforst�et
  garanti om god handelsm�ssig stand og egnethed til bestemte form�l.
  IBM giver ingen licenser til besl�gtede patenter eller copyrights ved at
  stille dette dokument til r�dighed.

  Disse styreprogrammer tilh�rer International Business Machines Corporation.
  Alle g�ldende begr�nsninger g�lder.


  Varem�rker
  __________

  F�lgende varem�rker tilh�rer International Business Machines Corporation:

      Distributed Console Access Facility (DCAF)
      IBM
      MMPM/2
      OS/2
      Presentation Manager
      PS/ValuePoint
      WIN-OS/2

  F�lgende varem�rker tilh�rer andre firmaer. Firmanavnet er angivet i
  parentes:

  Varem�rke                Ejer
  __________               __________________________

  ATI, Mach64, Rage        ATI Technologies, Inc.
  CorelDRAW                Corel Corporation
  Millenium, Mystique      Matrox
  Windows                  Microsoft Corporation
  S3, Trio, Virge          S3 Incorporated
  VESA                     Video Electronics Standards Association

                OS/2 GRADD-styreprogrammer                               side 4

  GRADD (Graphics Adapter Device Drivers)
  _______________________________________

  GRADD er en arkitektur, der g�r det nemmere at anvende ny grafikhardware,
  efterh�nden som den bliver tilg�ngelig. Hvis du bruger accelererede
  GRADD-styreprogrammer, f�r du en forbedret ydelse i PM-programmerne.

  Der er inkluderet mange nye og opgraderede GRADD-styreprogrammer i denne
  pakke.


  Underst�ttede faciliteter
  _________________________

  GRADD-styreprogrammerne giver underst�ttelse til accelererede og
  ikke-accelererede grafiksk�rme med udvidet farveintensitet og opl�sning.
  De er kompatible med OS/2 32-bit hukommelsesmodeller og er designet til at
  fungere som 32-bit Presentation Manager grafiksk�rmstyreprogrammer under
  OS/2 32-bit grafiksystemet.


Inkluderede styreprogrammer
___________________________

  Pakken indeholder f�lgende accelererede GRADD-styreprogrammer:

      * M64GRADD (ATI Mach64/Rage)
      * CHPGRADD (Chips & Technology 6555X)
      * MGAGRADD (Matrox Millenium/Mystique)
      * NMGRADD  (NeoMagic)
      * S3GRADD  (S3 86x/96x/Trio)
      * S3DGRADD (S3 Virge/Trio3D)

  Pakken indeholder ogs� generisk VGA- og SVGA-underst�ttelse.

      * VGAGRADD (Video Graphics Array)
      * GENGRADD (Generic SVGA)

  Hvis pakken ikke indeholder et accelereret GRADD- eller PM-styreprogram
  til den adapter, du bruger, indeholder GENGRADD m�ske UNACCELERATED-
  underst�ttelse til sk�rme med udvidet opl�sning og farveintensitet.
  GENGRADD fungerer sammen med de fleste adaptere, som indeholder en
  VESA-kompatibel BIOS. Ydelsen, som varierer afh�ngigt af
  systemkonfigurationen, vil imidlertid ikke v�re s� god som hos et
  accelereret styreprogram.











                OS/2 GRADD-styreprogrammer                               side 5

  Underst�ttede opl�sninger
  _________________________

  Underst�ttede opl�sninger og farveintensiteter er adapterafh�ngige og
  varierer afh�ngig af st�rrelsen p� grafikhukommelsen og adapteren.


  Kompatibilitet
  ______________

  Disse grafikstyreprogrammer er i �jeblikket kompatible med:

        Alle versioner af OS/2 3.0 med fixpakkeniveau 35 eller nyere
        Alle versioner af OS/2 4.0 med fixpakkeniveau 5 eller nyere
        Alle versioner af OS/2 Warp Server til e-business.

  Installationskommandoen SETUP fungerer ikke sammen med OS/2-versioner eller
  fixpakkeversioner, som ikke findes p� ovenst�ende liste.

  Hvis du, efter du har installeret disse grafikstyreprogrammer, vil fjerne
  installationen af en kr�vet fixpakke til et fixpakkeniveau f�r fixpakke 5
  (OS/2 4.0) eller fixpakke 35 (OS/2 3.0), skal du f�rst skifte til VGA-
  tilstand, f�r du fjerner GRADD BBS-styreprogrammerne.

  Bortset fra brug af engelske meddelelser, fungerer de SBCS-styreprogrammer,
  der er installeret til SBCS-sprog, som ikke er angivet i oversigten
  SET LANG= i afsnittet Udpakning ovenfor, korrekt for det valgte sprog.

  Funktionelle begr�nsninger
  __________________________

  Aktuelt findes der f�lgende begr�nsninger:

  1) IBM har testet mange computere og adaptere med grafikenheder til de
     viste accelererede styreprogrammer. Test er kun udf�rt p� computere
     med PCI-busgrafik, selv om en PCI-bus ikke er et specifik krav.

  2) Sniff-tests p� ISA-busgrafikadaptere fungerer. Imidlertid har der nogle
     gange v�ret problemer med at registrere adapteren, n�r det tidligere
     PM-styreprogram skulle genoprettes. Dette problem l�ses ved at slukke for
     computeren for at initialisere adapteren efter skift til VGA-tilstand.

     ATI Mach 64 ISA-busadaptere underst�ttes ikke i �jeblikket.

  3) Alle GRADD-styreprogrammerne, bortset fra VGAGRADD, kr�ver VESA-kompatibel
     sk�rm-BIOS (version 1.2 eller nyere) eller en tilsvarende SVGADATA.PMI-fil.
     Mht. �ldre ikke-VESA-adaptere med SVGA PM-styreprogramunderst�ttelse fra
     IBM kan GENGRADD ofte bruges som et alternativt SVGA-styreprogram ved at
     angive kommandoen SVGA ON INIT p� en OS/2- eller DOS-helsk�rm sammen med
     installationskommandoen SETUP til GRADD Graphics BBS-styreprogrammerne,
     f�r du bruger GRADD-styreprogrammerne. Herved oprettes filen SVGADATA.PMI.


                OS/2 GRADD-styreprogrammer                               side 6

  4) M64GRADD og S3GRADD: Der har v�ret problemer med visse adaptere, som har
     hardwaremark�runderst�ttelse. Symptomerne varierer fra, at mark�ren vises
     som en sort firkant, til at sk�rmbilledet �del�gges, der hvor mark�ren
     bev�ges. Problemet l�ses ved at bruge en softwaremark�r. F�j f�lgende
     linie til filen CONFIG.SYS, og start computeren igen for at l�se
     problemet:

        SET HW_CURSOR=OFF

  Du kan finde fremtidige rettelser og opdateringer til GRADD- og andre
  grafikstyreprogrammer p� Internettet p� f�lgende adresse:

     http://service5.boulder.ibm.com/pspfixpk.nsf

  V�lg "All Fix packages - By Product" p� siden, og s�g efter
  "GRADD".


  Kopiering til disketter
  _______________________


  N�r du har pakket installationsfilerne til GRADD-styreprogrammerne ud i
  installationsbiblioteksoversigten, kan du kopiere dem til disketter vha.
  OS/2-kommandoen BACKUP:

  1. �bn en OS/2-helsk�rm eller et OS/2-vindue.

  2. Skriv "BACKUP C:\BBS\GRADD A: /S", og tryk p� Enter.

  3. Inds�t det kr�vede antal pr�formaterede disketter i diskettedrevet.

  4. Du kan bruge kommandoen HELP BACKUP til at f� flere oplysninger om
     kommandoen BACKUP.

  S�dan genopretter du filerne p� den samme eller en anden computer:

  1. �bn en OS/2-helsk�rm eller et OS/2-vindue.

  2. Skriv "RESTORE A: C:\BBS\GRADD /N /S", og tryk p� Enter.

  3. Inds�t sikkerhedskopidisketterne i diskettedrevet.

  4. Du kan bruge kommandoen HELP RESTORE til at f� flere oplysninger om
     kommandoen RESTORE.

  IBM har ingen s�rlige bestemmelser mht. installation af disse
  styreprogrammer direkte fra disketter.








                OS/2 GRADD-styreprogrammer                               side 7

  Installation
  ____________

  Forberedende trin
  _________________

  F�lgende trin forbereder computeren til installation af GRADD-styre-
  programmerne:

  1. Luk andre programmer, is�r WIN-OS/2-programmer, s� installationsprogrammet
     kan erstatte de styreprogramfiler, som et �bent program m�ske har l�st.

  2. Hvis du tidligere har installeret et SVGA-styreprogram, skal du skifte til
     VGA-opl�sning ved at bruge den fremgangsm�de, der er beskrevet i denne
     README-fil i afsnittet "Angivelse af sk�rmen til VGA-tilstand".


  Angivelse af sk�rmen til VGA-tilstand
  _____________________________________

  Hvis sk�rmen er synkroniseret, og du har en brugbar arbejdsplads, anbefales
  det, at du bruger Install�r udvalgte faciliteter til at skifte til
  VGA-tilstand. Ellers kan du bruge f�lgende fremgangsm�de til at skifte til
  VGA-tilstand.

      1. T�nd for computeren. Hvis computeren allerede er t�ndt, skal du
         afslutte OS/2 eller trykke p� Ctrl+Alt+Del for at starte computeren
         igen.
      2. N�r det vises en lille hvid firkant i det �verste venstre hj�rne af
         sk�rmen, skal du trykke p� Alt+F1.
      3. N�r sk�rmbilledet Genindl�sningsvalg vises, skal du trykke p� F3
         eller bogstavet "V" afh�ngigt af styresystemets version.
      4. Udf�r Install�r udvalgte faciliteter for at skifte Windows-
         styreprogrammerne.

  N�r computeren er startet igen, er sk�rmadapteren indstillet til VGA-
  tilstand. Hvis du vil installere en ny sk�rmadapter eller et nyt
  grafikstyreprogram, skal du l�se kapitlet "Video Procedures" i OS/2 Warp
  Brugervejledning.


  Overv�get Installation
  ______________________

  G�r f�lgende for at udf�re en overv�get installation af GRADD-
  styreprogrammerne til installationsbiblioteket:

  1. �bn en OS/2-helsk�rm eller et OS/2-vindue.

  2. F�r du udf�rer den udpakkede SETUP.CMD-fil, skal du bruge SET LANG=
     til at angive det korrekte sprog. Sproget er m�ske allerede korrekt
     angivet i CONFIG.SYS-filen. Afsnittet Udpakning i denne README-fil viser
     eksempler.



                OS/2 GRADD-styreprogrammer                               side 8

  3. Skriv f�lgende kommando p� OS/2-kommandolinien for at kopiere alle de
     kr�vede filer til OS/2-startdrevet:

          <kildesti>SETUP xxx [<kildesti>] [<startdrev>] [/u]

      hvor:
          xxx er en af f�lgende:

              "ATI"   - ATI Mach64/Rage-produktgruppen GRADD
              "CHP"   - Chips & Technology 6555x-produktgruppen GRADD
              "DYN"   - Dynamically Selected GRADD
              "GEN"   - Generic VESA Unaccelerated GRADD
              "MGA"   - Matrox Millenium & Mystique-produktgruppen GRADD
              "NM"    - NeoMagic 2090/2093/2097/2160/2200/2360-produktgruppen GRADD
              "S3"    - S3 86x/96x/Trio-produktgruppen GRADD
              "VGA"   - VGA-GRADD (Video Graphics Array)
              "VIRGE" - S3 Virge/Trio3D-produktgruppen GRADD

          <kildesti> til SETUP kr�ves, hvis SETUP ikke findes i det aktuelle
                      bibliotek.

          [<kildesti>]-parameteren kan udelades (kr�ves, hvis den n�ste
                       parameter er angivet) og er installationsbiblioteket.

          [<startdrev>] kan udelades og er det drev, hvor OS/2 er installeret.

          [/u] kan udelades og angiver en uoverv�get installation, f.eks.
               en CID-installation. Der kr�ves ikke en CID-svarfil.

      Tryk derefter p� Enter.

  4. Afslut OS/2, n�r du bliver bedt om det, og genstart derefter computeren.

      Bem�rkninger:

      1) Under installationen af dette styreprogram oprettes eller tilf�jes
         filerne DISPLAY.LOG og DSPINSTL.LOG i biblioteket OS2\INSTALL. Disse
         filer identificerer de OS/2-systemfiler, som opdateres, og angiver,
         om installationer er afsluttet uden fejl og �rsagen, hvis den ikke
         er. Indholdet af disse filer er nyttigt, hvis du skal rapportere et
         installationsproblem til IBM.

      2) Du bliver m�ske spurgt, om du vil overskrive visse filer, hvor
         m�lfilen er nyere end kildefilen. Generelt skal du svare Ja til alle
         disse sp�rgsm�l. medmindre du tidligere har oplevet specifikke
         problemer med styreprogrammet og er ved at installere det igen.








                OS/2 GRADD-styreprogrammer                               side 9

  5. N�r computere er genstartet, skal du g�re f�lgende for at konfigurere den
     aktuelle sk�rm korrekt og v�lge en passende opl�sning og opfrisknings-
     hastighed:

      a.  �bn folderen OS/2 System.
      b.  �bn folderen Systemtilpasning.
      c.  �bn objektet System.
      d.  N�r notesbogen Indstillinger vises, skal du v�lge skillebladet Sk�rm.
          Skift til side 2.
      e.  Protokollerne VESA DDC 1 og 2B (Display Data Channel) registrerer
          automatisk DDC-sk�rme. Hvis sk�rmen er DDC-kompatibel, viser side 2
          en beskrivelse af sk�rmen. Hvis sk�rmen ikke er DDC-kompatibel, skal
          du v�lge sk�rmen fra sk�rmoversigten p� side 2. Hvis sk�rmen ikke
          findes i oversigten, skal du v�lge standardv�rdien.
      f.  Vend tilbage til side 1, og v�lg en opl�sning og en opfrisknings-
          hastighed. Du kan m�ske ikke v�lge opfriskningshastighed. Det afh�nger
          af adapteren og sk�rmen.
      g.  Luk notesbogen Indstillinger.
      h.  Afslut OS/2, og start computeren igen.

































                OS/2 GRADD-styreprogrammer                               side 10

  Installation i et CID-milj�
  ___________________________

  Bem�rkninger:

  1. Opret et bibliotek p� serveren, f.eks. X:\BBS\GRADD, og pak
     installationsfilerne fra filen GRADDBB*.EXE ud i dette bibliotek,
     som beskrevet i afsnittet Udpakning.

  2. OS/2 skal v�re installeret p� klienten vha. CID-metoden
     (Configuration Installation Distribution).

  3. L�s filen README.CFG i denne pakke for at konfigurere sk�rmvalg, opl�sning
     og opfriskningshastighed.

  Brug f�lgende oplysninger til at revidere LCU-kommandofilen, hvis du vil
  installere styreprogrammet vha. CID. Dette eksempel installerer M64GRADD
  (ATI Mach64/Rage).

  Bem�rk: F�lgende oplysninger er kun vejledende.
          Din LCU-kommandofil er m�ske anderledes.

    /*****************************************************/
    /*           LCU-produktdata                         */
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
    /*         Antal programmer angivet i afsnittet      */
    /*               Produktdata                         */
    /*****************************************************/

    NUM_INSTALL_PROGS = 15






                OS/2 GRADD-styreprogrammer                               side 11

    /*****************************************************/
    /*                  Installation                     */
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
    /*                Rutineafsnit                        */
    /*  F�lgende oplysninger skulle allerede findes i     */
    /*  LCU-kommandofilen.                                */
    /******************************************************/
                         .
                         .
                         .
    RebootAndGotoState:
      parse arg new_state, other

      rc2 = SetState(new_state, 'RebootAndGotoState', 1)    /* Angiv status  */
                                                            /* til at g� til */
                                                            /* OVERALL_STATE */

      Call SaveStates                           /* Gem systemvariabler       */

      Call Reboot                               /* Genstart computeren */

      return

                          .
                          .
                          .

    /*****************************************************/
    /*    Afslutning af LCU-oplysninger skal tilf�jes    */
    /*****************************************************/











                OS/2 GRADD-styreprogrammer                               side 12

  APAR-rettelser i dette styreprogram
  ___________________________________

  Nogle rettede APAR vises m�ske ikke. Hvis du har f�et dette styreprogram via
  IBM OS/2 support, og den bestilte APAR ikke vises, skal du installere
  styreprogrammet, da den bestilte APAR er inkluderet.














































                                (Slut p� dokument)
