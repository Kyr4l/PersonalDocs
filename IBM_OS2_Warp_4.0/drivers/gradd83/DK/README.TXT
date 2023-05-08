                OS/2 GRADD-styreprogrammer                               side 1

  Udpakning
  _________

  Gõr fõlgende for at oprette installationsbiblioteket til GRADD Graphics
  BBS-styreprogrammet:

  1. èbn en OS/2-helskërm eller et OS/2-vindue.

  2. Fõr du udfõrer den selvudpakkende ZIP-fil GRADDBB*.EXE (det nõjagtige
     navn afhënger af programversionen), skal du skifte det aktuelle
     bibliotek til det installationsbibliotek, hvor installationsfilerne til
     GRADD Graphics BBS-styreprogrammet skal gemmes, f.eks. C:\BBS\GRADD.
     Skriv fõlgende kommandoer pÜ OS/2-kommandolinien:

      C:
      MD C:\BBS
      MD C:\BBS\GRADD
      CD C:\BBS\GRADD

  3. Brug parametrene -DIR og -OVER sammen med GRADDBB*.EXE for at oprette
     installationsbiblioteksoversigten. Du kan evt. kopiere filen
     GRADDBB*.EXE til installationsbiblioteket. Skriv herefter fõlgende
     kommando pÜ OS/2-kommandolinien:

      GRADDBB* -DIR -OVER

  4. Brug kommandoen SET LANG= til at angive det korrekte sprog. Sproget er
     mÜske allerede korrekt angivet i CONFIG.SYS-filen. Hvis det ikke er
     tilfëldet, skal du skrive Çn af fõlgende SET LANG=-kommandoer pÜ
     kommandolinien for at vëlge det korrekte sprog:

      SET LANG=ar_AA    for arabisk (engelsk med arabisk tegnformatering)
      SET LANG=pt_BR    for brasiliansk
      SET LANG=zh_CN    for forkortet kinesisk
      SET LANG=de_DE    for tysk
      SET LANG=da_DK    for dansk
      SET LANG=es_ES    for spansk
      SET LANG=el_GR    for grësk (engelsk med grësk tegnformatering)
      SET LANG=fi_FI    for finsk
      SET LANG=fr_FR    for fransk
      SET LANG=iw_IL    for israelsk (engelsk med hebrëisk tegnformatering)
      SET LANG=it_IT    for italiensk
      SET LANG=ja_JP    for japansk
      SET LANG=ko_KR    for koreansk
      SET LANG=nl_NL    for hollandsk
      SET LANG=no_NO    for norsk
      SET LANG=sv_SE    for svensk
      SET LANG=zh_TW    for taiwanesisk
      SET LANG=en_US    for engelsk (standard)

      Denne README.TXT fil findes pÜ alle sprogene. Filen kan vëre oversat
      fra engelsk sammen med andre sprogafhëngige filer.



                OS/2 GRADD-styreprogrammer                               side 2

  5. Kommandoen SETUP i installationsbiblioteket kan bruges til at
     installere de korrekte sprogafhëngige filer og konfigurationsoplysninger
     fra installationsbiblioteket til startdrevet.
     Hvis du udfõrer SETUP uden parametre, vises en kort hjëlp om kommandoens
     syntaks (beskrives senere i denne README-fil) i det sprog, du har valgt
     eller i standardsproget. Du fÜr vist denne hjëlp ved at skrive fõlgende
     kommando pÜ OS/2-kommandolinien:

      SETUP


  Indhold
  _______

  Udpakning  . . . . . . . . . . . . . . . . . . . .  1
  Pakkens indhold  . . . . . . . . . . . . . . . . .  2
  Generelle vilkÜr . . . . . . . . . . . . . . . . .  3
  Varemërker . . . . . . . . . . . . . . . . . . . .  3
  GRADD (Graphics Adapter Device Drivers)  . . . . .  4
  Understõttede faciliteter. . . . . . . . . . . . .  4
  Inkluderede styreprogrammer  . . . . . . . . . . .  4
  Understõttede oplõsninger  . . . . . . . . . . . .  5
  Kompatibilitet . . . . . . . . . . . . . . . . . .  5
  Funktionelle begrënsninger . . . . . . . . . . . .  5
  Kopiering til disketter  . . . . . . . . . . . . .  6
  Installation . . . . . . . . . . . . . . . . . . .  7
  Forberedende trin  . . . . . . . . . . . . . . . .  7
  Angivelse af skërmen til VGA-tilstand  . . . . . .  7
  OvervÜget installation . . . . . . . . . . . . . .  7
  Installation i et CID-miljõ  . . . . . . . . . . . 10
  APAR-rettelser i dette styreprogram  . . . . . . . 12


  Pakkens indhold
  _______________

  Denne pakke indeholder fõlgende:

  o   OS/2 GRADD-grafikstyreprogrammer.

  o   Denne README.TXT-fil.
      Du kan:
      -   bruge indholdsfortegnelsen og sidetallene, der vises õverst pÜ hver
          side, til at finde bestemte emner.
      -   bruge Valget Sõg pÜ menuen RedigÇr i OS/2 Redigeringsprogram til at
          finde bestemte oplysninger.
      -   udskrive filen.







                OS/2 GRADD-styreprogrammer                               side 3

  Generelle vilkÜr
  ________________

  Lës fõlgende generelle vilkÜr. Hvis De bruger OS/2 GRADD-styreprogrammerne,
  accepterer De fõlgende generelle vilkÜr:

  o   De skal have, og De erklërer Dem indforstÜet med, at De har en licens af
      OS/2.
  o   De mÜ lave kopier af OS/2 GRADD-styreprogrammerne, som svarer til det
      antal licenserede kopier, De ejer af OS/2.
  o   Alle andre generelle vilkÜr i Deres OS/2-licensaftale gëlder for
      disse OS/2 GRADD-styreprogrammer. Imidlertid udvider dette ikke
      de vilkÜr, der er beskrevet i en sÜdan aftale.
  o   Lës hele dette dokument, fõr De starter installationen af
      grafikstyreprogrammerne.

  IBM fraskriver sig hermed enhver form for garanti, udtrykkelig
  eller underforstÜet, herunder men ikke begrënset til, en underforstÜet
  garanti om god handelsmëssig stand og egnethed til bestemte formÜl.
  IBM giver ingen licenser til beslëgtede patenter eller copyrights ved at
  stille dette dokument til rÜdighed.

  Disse styreprogrammer tilhõrer International Business Machines Corporation.
  Alle gëldende begrënsninger gëlder.


  Varemërker
  __________

  Fõlgende varemërker tilhõrer International Business Machines Corporation:

      Distributed Console Access Facility (DCAF)
      IBM
      MMPM/2
      OS/2
      Presentation Manager
      PS/ValuePoint
      WIN-OS/2

  Fõlgende varemërker tilhõrer andre firmaer. Firmanavnet er angivet i
  parentes:

  Varemërke                Ejer
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

  GRADD er en arkitektur, der gõr det nemmere at anvende ny grafikhardware,
  efterhÜnden som den bliver tilgëngelig. Hvis du bruger accelererede
  GRADD-styreprogrammer, fÜr du en forbedret ydelse i PM-programmerne.

  Der er inkluderet mange nye og opgraderede GRADD-styreprogrammer i denne
  pakke.


  Understõttede faciliteter
  _________________________

  GRADD-styreprogrammerne giver understõttelse til accelererede og
  ikke-accelererede grafikskërme med udvidet farveintensitet og oplõsning.
  De er kompatible med OS/2 32-bit hukommelsesmodeller og er designet til at
  fungere som 32-bit Presentation Manager grafikskërmstyreprogrammer under
  OS/2 32-bit grafiksystemet.


Inkluderede styreprogrammer
___________________________

  Pakken indeholder fõlgende accelererede GRADD-styreprogrammer:

      * M64GRADD (ATI Mach64/Rage)
      * CHPGRADD (Chips & Technology 6555X)
      * MGAGRADD (Matrox Millenium/Mystique)
      * NMGRADD  (NeoMagic)
      * S3GRADD  (S3 86x/96x/Trio)
      * S3DGRADD (S3 Virge/Trio3D)

  Pakken indeholder ogsÜ generisk VGA- og SVGA-understõttelse.

      * VGAGRADD (Video Graphics Array)
      * GENGRADD (Generic SVGA)

  Hvis pakken ikke indeholder et accelereret GRADD- eller PM-styreprogram
  til den adapter, du bruger, indeholder GENGRADD mÜske UNACCELERATED-
  understõttelse til skërme med udvidet oplõsning og farveintensitet.
  GENGRADD fungerer sammen med de fleste adaptere, som indeholder en
  VESA-kompatibel BIOS. Ydelsen, som varierer afhëngigt af
  systemkonfigurationen, vil imidlertid ikke vëre sÜ god som hos et
  accelereret styreprogram.











                OS/2 GRADD-styreprogrammer                               side 5

  Understõttede oplõsninger
  _________________________

  Understõttede oplõsninger og farveintensiteter er adapterafhëngige og
  varierer afhëngig af stõrrelsen pÜ grafikhukommelsen og adapteren.


  Kompatibilitet
  ______________

  Disse grafikstyreprogrammer er i õjeblikket kompatible med:

        Alle versioner af OS/2 3.0 med fixpakkeniveau 35 eller nyere
        Alle versioner af OS/2 4.0 med fixpakkeniveau 5 eller nyere
        Alle versioner af OS/2 Warp Server til e-business.

  Installationskommandoen SETUP fungerer ikke sammen med OS/2-versioner eller
  fixpakkeversioner, som ikke findes pÜ ovenstÜende liste.

  Hvis du, efter du har installeret disse grafikstyreprogrammer, vil fjerne
  installationen af en krëvet fixpakke til et fixpakkeniveau fõr fixpakke 5
  (OS/2 4.0) eller fixpakke 35 (OS/2 3.0), skal du fõrst skifte til VGA-
  tilstand, fõr du fjerner GRADD BBS-styreprogrammerne.

  Bortset fra brug af engelske meddelelser, fungerer de SBCS-styreprogrammer,
  der er installeret til SBCS-sprog, som ikke er angivet i oversigten
  SET LANG= i afsnittet Udpakning ovenfor, korrekt for det valgte sprog.

  Funktionelle begrënsninger
  __________________________

  Aktuelt findes der fõlgende begrënsninger:

  1) IBM har testet mange computere og adaptere med grafikenheder til de
     viste accelererede styreprogrammer. Test er kun udfõrt pÜ computere
     med PCI-busgrafik, selv om en PCI-bus ikke er et specifik krav.

  2) Sniff-tests pÜ ISA-busgrafikadaptere fungerer. Imidlertid har der nogle
     gange vëret problemer med at registrere adapteren, nÜr det tidligere
     PM-styreprogram skulle genoprettes. Dette problem lõses ved at slukke for
     computeren for at initialisere adapteren efter skift til VGA-tilstand.

     ATI Mach 64 ISA-busadaptere understõttes ikke i õjeblikket.

  3) Alle GRADD-styreprogrammerne, bortset fra VGAGRADD, krëver VESA-kompatibel
     skërm-BIOS (version 1.2 eller nyere) eller en tilsvarende SVGADATA.PMI-fil.
     Mht. ëldre ikke-VESA-adaptere med SVGA PM-styreprogramunderstõttelse fra
     IBM kan GENGRADD ofte bruges som et alternativt SVGA-styreprogram ved at
     angive kommandoen SVGA ON INIT pÜ en OS/2- eller DOS-helskërm sammen med
     installationskommandoen SETUP til GRADD Graphics BBS-styreprogrammerne,
     fõr du bruger GRADD-styreprogrammerne. Herved oprettes filen SVGADATA.PMI.


                OS/2 GRADD-styreprogrammer                               side 6

  4) M64GRADD og S3GRADD: Der har vëret problemer med visse adaptere, som har
     hardwaremarkõrunderstõttelse. Symptomerne varierer fra, at markõren vises
     som en sort firkant, til at skërmbilledet õdelëgges, der hvor markõren
     bevëges. Problemet lõses ved at bruge en softwaremarkõr. Fõj fõlgende
     linie til filen CONFIG.SYS, og start computeren igen for at lõse
     problemet:

        SET HW_CURSOR=OFF

  Du kan finde fremtidige rettelser og opdateringer til GRADD- og andre
  grafikstyreprogrammer pÜ Internettet pÜ fõlgende adresse:

     http://service5.boulder.ibm.com/pspfixpk.nsf

  Vëlg "All Fix packages - By Product" pÜ siden, og sõg efter
  "GRADD".


  Kopiering til disketter
  _______________________


  NÜr du har pakket installationsfilerne til GRADD-styreprogrammerne ud i
  installationsbiblioteksoversigten, kan du kopiere dem til disketter vha.
  OS/2-kommandoen BACKUP:

  1. èbn en OS/2-helskërm eller et OS/2-vindue.

  2. Skriv "BACKUP C:\BBS\GRADD A: /S", og tryk pÜ Enter.

  3. Indsët det krëvede antal prëformaterede disketter i diskettedrevet.

  4. Du kan bruge kommandoen HELP BACKUP til at fÜ flere oplysninger om
     kommandoen BACKUP.

  SÜdan genopretter du filerne pÜ den samme eller en anden computer:

  1. èbn en OS/2-helskërm eller et OS/2-vindue.

  2. Skriv "RESTORE A: C:\BBS\GRADD /N /S", og tryk pÜ Enter.

  3. Indsët sikkerhedskopidisketterne i diskettedrevet.

  4. Du kan bruge kommandoen HELP RESTORE til at fÜ flere oplysninger om
     kommandoen RESTORE.

  IBM har ingen sërlige bestemmelser mht. installation af disse
  styreprogrammer direkte fra disketter.








                OS/2 GRADD-styreprogrammer                               side 7

  Installation
  ____________

  Forberedende trin
  _________________

  Fõlgende trin forbereder computeren til installation af GRADD-styre-
  programmerne:

  1. Luk andre programmer, isër WIN-OS/2-programmer, sÜ installationsprogrammet
     kan erstatte de styreprogramfiler, som et Übent program mÜske har lÜst.

  2. Hvis du tidligere har installeret et SVGA-styreprogram, skal du skifte til
     VGA-oplõsning ved at bruge den fremgangsmÜde, der er beskrevet i denne
     README-fil i afsnittet "Angivelse af skërmen til VGA-tilstand".


  Angivelse af skërmen til VGA-tilstand
  _____________________________________

  Hvis skërmen er synkroniseret, og du har en brugbar arbejdsplads, anbefales
  det, at du bruger InstallÇr udvalgte faciliteter til at skifte til
  VGA-tilstand. Ellers kan du bruge fõlgende fremgangsmÜde til at skifte til
  VGA-tilstand.

      1. Tënd for computeren. Hvis computeren allerede er tëndt, skal du
         afslutte OS/2 eller trykke pÜ Ctrl+Alt+Del for at starte computeren
         igen.
      2. NÜr det vises en lille hvid firkant i det õverste venstre hjõrne af
         skërmen, skal du trykke pÜ Alt+F1.
      3. NÜr skërmbilledet Genindlësningsvalg vises, skal du trykke pÜ F3
         eller bogstavet "V" afhëngigt af styresystemets version.
      4. Udfõr InstallÇr udvalgte faciliteter for at skifte Windows-
         styreprogrammerne.

  NÜr computeren er startet igen, er skërmadapteren indstillet til VGA-
  tilstand. Hvis du vil installere en ny skërmadapter eller et nyt
  grafikstyreprogram, skal du lëse kapitlet "Video Procedures" i OS/2 Warp
  Brugervejledning.


  OvervÜget Installation
  ______________________

  Gõr fõlgende for at udfõre en overvÜget installation af GRADD-
  styreprogrammerne til installationsbiblioteket:

  1. èbn en OS/2-helskërm eller et OS/2-vindue.

  2. Fõr du udfõrer den udpakkede SETUP.CMD-fil, skal du bruge SET LANG=
     til at angive det korrekte sprog. Sproget er mÜske allerede korrekt
     angivet i CONFIG.SYS-filen. Afsnittet Udpakning i denne README-fil viser
     eksempler.



                OS/2 GRADD-styreprogrammer                               side 8

  3. Skriv fõlgende kommando pÜ OS/2-kommandolinien for at kopiere alle de
     krëvede filer til OS/2-startdrevet:

          <kildesti>SETUP xxx [<kildesti>] [<startdrev>] [/u]

      hvor:
          xxx er en af fõlgende:

              "ATI"   - ATI Mach64/Rage-produktgruppen GRADD
              "CHP"   - Chips & Technology 6555x-produktgruppen GRADD
              "DYN"   - Dynamically Selected GRADD
              "GEN"   - Generic VESA Unaccelerated GRADD
              "MGA"   - Matrox Millenium & Mystique-produktgruppen GRADD
              "NM"    - NeoMagic 2090/2093/2097/2160/2200/2360-produktgruppen GRADD
              "S3"    - S3 86x/96x/Trio-produktgruppen GRADD
              "VGA"   - VGA-GRADD (Video Graphics Array)
              "VIRGE" - S3 Virge/Trio3D-produktgruppen GRADD

          <kildesti> til SETUP krëves, hvis SETUP ikke findes i det aktuelle
                      bibliotek.

          [<kildesti>]-parameteren kan udelades (krëves, hvis den nëste
                       parameter er angivet) og er installationsbiblioteket.

          [<startdrev>] kan udelades og er det drev, hvor OS/2 er installeret.

          [/u] kan udelades og angiver en uovervÜget installation, f.eks.
               en CID-installation. Der krëves ikke en CID-svarfil.

      Tryk derefter pÜ Enter.

  4. Afslut OS/2, nÜr du bliver bedt om det, og genstart derefter computeren.

      Bemërkninger:

      1) Under installationen af dette styreprogram oprettes eller tilfõjes
         filerne DISPLAY.LOG og DSPINSTL.LOG i biblioteket OS2\INSTALL. Disse
         filer identificerer de OS/2-systemfiler, som opdateres, og angiver,
         om installationer er afsluttet uden fejl og Ürsagen, hvis den ikke
         er. Indholdet af disse filer er nyttigt, hvis du skal rapportere et
         installationsproblem til IBM.

      2) Du bliver mÜske spurgt, om du vil overskrive visse filer, hvor
         mÜlfilen er nyere end kildefilen. Generelt skal du svare Ja til alle
         disse spõrgsmÜl. medmindre du tidligere har oplevet specifikke
         problemer med styreprogrammet og er ved at installere det igen.








                OS/2 GRADD-styreprogrammer                               side 9

  5. NÜr computere er genstartet, skal du gõre fõlgende for at konfigurere den
     aktuelle skërm korrekt og vëlge en passende oplõsning og opfrisknings-
     hastighed:

      a.  èbn folderen OS/2 System.
      b.  èbn folderen Systemtilpasning.
      c.  èbn objektet System.
      d.  NÜr notesbogen Indstillinger vises, skal du vëlge skillebladet Skërm.
          Skift til side 2.
      e.  Protokollerne VESA DDC 1 og 2B (Display Data Channel) registrerer
          automatisk DDC-skërme. Hvis skërmen er DDC-kompatibel, viser side 2
          en beskrivelse af skërmen. Hvis skërmen ikke er DDC-kompatibel, skal
          du vëlge skërmen fra skërmoversigten pÜ side 2. Hvis skërmen ikke
          findes i oversigten, skal du vëlge standardvërdien.
      f.  Vend tilbage til side 1, og vëlg en oplõsning og en opfrisknings-
          hastighed. Du kan mÜske ikke vëlge opfriskningshastighed. Det afhënger
          af adapteren og skërmen.
      g.  Luk notesbogen Indstillinger.
      h.  Afslut OS/2, og start computeren igen.

































                OS/2 GRADD-styreprogrammer                               side 10

  Installation i et CID-miljõ
  ___________________________

  Bemërkninger:

  1. Opret et bibliotek pÜ serveren, f.eks. X:\BBS\GRADD, og pak
     installationsfilerne fra filen GRADDBB*.EXE ud i dette bibliotek,
     som beskrevet i afsnittet Udpakning.

  2. OS/2 skal vëre installeret pÜ klienten vha. CID-metoden
     (Configuration Installation Distribution).

  3. Lës filen README.CFG i denne pakke for at konfigurere skërmvalg, oplõsning
     og opfriskningshastighed.

  Brug fõlgende oplysninger til at revidere LCU-kommandofilen, hvis du vil
  installere styreprogrammet vha. CID. Dette eksempel installerer M64GRADD
  (ATI Mach64/Rage).

  Bemërk: Fõlgende oplysninger er kun vejledende.
          Din LCU-kommandofil er mÜske anderledes.

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
    /*  Fõlgende oplysninger skulle allerede findes i     */
    /*  LCU-kommandofilen.                                */
    /******************************************************/
                         .
                         .
                         .
    RebootAndGotoState:
      parse arg new_state, other

      rc2 = SetState(new_state, 'RebootAndGotoState', 1)    /* Angiv status  */
                                                            /* til at gÜ til */
                                                            /* OVERALL_STATE */

      Call SaveStates                           /* Gem systemvariabler       */

      Call Reboot                               /* Genstart computeren */

      return

                          .
                          .
                          .

    /*****************************************************/
    /*    Afslutning af LCU-oplysninger skal tilfõjes    */
    /*****************************************************/











                OS/2 GRADD-styreprogrammer                               side 12

  APAR-rettelser i dette styreprogram
  ___________________________________

  Nogle rettede APAR vises mÜske ikke. Hvis du har fÜet dette styreprogram via
  IBM OS/2 support, og den bestilte APAR ikke vises, skal du installere
  styreprogrammet, da den bestilte APAR er inkluderet.














































                                (Slut pÜ dokument)
