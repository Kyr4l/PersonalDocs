                OS/2 GRADD-STYREPROGRAMMER                      Side 1

  PAKKE UT
  ________

  Slik definerer du installeringskatalogen for styreprogrammet
  GRADD Graphics BBS: 

  1. èpne en OS/2 fullskjermsesjon eller OS/2 vindussesjon. 

  2. Fõr du kjõrer den selvutpakkende zip-filen GRADDBB*.EXE (det
     nõyaktige navnet avhenger av byggenummeret pÜ utgaven), gÜr du
     til "installeringskatalogen" der du vil lagre installeringsfilene
     til styreprogrammet GRADD Graphics BBS. Vi foreslÜr C:\BBS\GRADD.
     Fra OS/2-klarmeldingen skriver du disse kommandoene: 

      C:
      MD C:\BBS
      MD C:\BBS\GRADD
      CD C:\BBS\GRADD

  3. Bruk parameterne "-DIR" og "-OVER" pÜ den selvutpakkende
     zip-filen GRADDBB*.EXE for Ü opprette
     installeringskatalogoversikten. Du bõr kopiere
     GRADDBB*.EXE til installeringskatalogen fõrst. Fra
     OS/2-klarmeldingen skriver du da kommandoen 

      GRADDBB* -DIR -OVER

  4. Bruk SET LANG= for Ü definere riktig sprÜk. SprÜket kan allerede
     vëre definert riktig i CONFIG.SYS. Hvis det ikke er det,
     oppgir du en av disse SET LANG=-kommandoene fra en
     OS/2-klarmelding for Ü velge sprÜk/land:

      SET LANG=ar_AA    for arabisk (engelsk med arabiske fonter/toveisstõtte)
      SET LANG=pt_BR    for Brasil
      SET LANG=zh_CN    for forenklet kinesisk
      SET LANG=de_DE    for Tyskland
      SET LANG=da_DK    for Danmark
      SET LANG=es_ES    for Spania
      SET LANG=el_GR    for Hellas (engelsk med stõtte for greske fonter)
      SET LANG=fi_FI    for Finland
      SET LANG=fr_FR    for Frankrike
      SET LANG=iw_IL    for Israel (engelsk med hebraiske fonter/toveisstõtte)
      SET LANG=it_IT    for Italia
      SET LANG=ja_JP    for Japan
      SET LANG=ko_KR    for Korea
      SET LANG=nl_NL    for Nederland
      SET LANG=no_NO    for Norge
      SET LANG=sv_SE    for Sverige
      SET LANG=zh_TW    for Taiwan
      SET LANG=en_US    for engelsk (standard)

      Hvert sprÜk har sin egen kopi av denne README.TXT-filen. 



                OS/2 GRADD-STYREPROGRAMMER                      Side 2

  5. Du kan deretter bruke SETUP-kommandoen i installeringskatalogen
     til Ü installere de riktige sprÜkavhengige filene og
     konfigurasjonsopplysningene fra installeringskatalogen til
     oppstartingsstasjonen. Hvis du kjõrer SETUP uten parametere,
     fÜr du en kort syntaktisk hjelp til SETUP-kommandoen (som
     er beskrevet senere i denne README-filen) pÜ sprÜket du
     har valgt, eller standardsprÜket. Du fÜr frem hjelpen ved
     Ü skrive denne kommandoen fra OS/2-klarmeldingen:  

      SETUP


INNHOLD
_______

  Utpakking  . . . . . . . . . . . . . . . . . . . .  1
  Hva pakken inneholder  . . . . . . . . . . . . . .  2
  Lisenser og garantier  . . . . . . . . . . . . . .  3
  Varemerker . . . . . . . . . . . . . . . . . . . .  3
  GRADD (Graphics Adapter Device Drivers). . . . . .  4
  Funksjoner som stõttes . . . . . . . . . . . . . .  4
  Styreprogrammer som er inkludert . . . . . . . . .  4
  Opplõsninger som stõttes. . . . . . . . . . .  . .  5
  Kompatibilitet . . . . . . . . . . . . . . . . . .  5
  Funksjonsbegrensninger . . . . . . . . . . . . . .  5
  Kopiere til disketter. . . . . . . . . . . . . . .  6
  Installering . . . . . . . . . . . . . . . . . . .  7
  Forelõpige trinn . . . . . . . . . . . . . . . . .  7
  Oppgi VGA-modus for skjermen . . . . . . . . . . .  7
  OvervÜket installering . . . . . . . . . . . . . .  7
  Installering i et CID-miljõ. . . . . . . . . . . . 10
  APAR-rettelser inkludert i dette styreprogrammet . 12


  HVA PAKKEN INNEHOLDER
  ______________________

  Pakken inneholder dette:

  o   OS/2 GRADD-grafikkstyreprogrammer.

  o   Denne README.TXT-filen, formatert slik at du kan lese den pÜ skjermen.
      Du kan
      -   bruke innholdsfortegnelsen og sidetallene (som du ser
          õverst pÜ hver side) for lettere Ü finne bestemte emner
      -   bruke menyvalget Sõke pÜ menyen Redigere i OS/2
          SysEd for Ü finne bestemt informasjon
      -   skrive ut filen 







                OS/2 GRADD-STYREPROGRAMMER                      Side 3


  LISENSER OG GARANTIER
  _______________________

  VENNLIGST LES BETINGELSENE NEDENFOR. BRUKEN AV OS/2
  GRADD-STYREPROGRAMMER ANGIR AT DU AKSEPTERER DISSE
  BETINGELSENE:


  o   DU Mè VíRE, OG DU BEKREFTER AT DU ER, EN TIDLIGERE LISENSIERT
      BRUKER AV OS/2
  o   DU KAN LAGE KOPIER AV OS/2 GRADD-STYREPROGRAMMENE TILSVARENDE
      DET ANTALL LISENSIERTE EKSEMPLARER AV OS/2 DU HAR.
  o   ALLE ANDRE BETINGELSER I OS/2-LISENSBETINGELSENE GJELDER DISSE
      OS/2 GRADD-STYREPROGRAMMENE. DU FèR INGEN UTVIDELSE AV
      GARANTIEN SOM ER BESKREVET I DISSE BETINGELSENE.
  o   LES HELE DETTE DOKUMENTET FùR DU BEGYNNER INSTALLERINGEN AV
      DE GRAFISKE STYREPROGRAMMENE. 

  IBM GIR INGEN GARANTIER MED HENSYN TIL INFORMASJONEN I DETTE
  DOKUMENTET. IBM GIR HELLER INGEN LISENSER FOR TILKNYTTEDE PATENTER
  ELLER OPPHAVSRETTER VED Ü LEGGE VED DETTE DOKUMENTET. 

  DISSE STYREPROGRAMMENE ER OPPHAVSRETTSLIG BESKYTTET AV
  INTERNATIONAL BUSINESS MACHINES CORPORATION. ALLE AKTUELLE
  BEGRENSNINGER GJELDER.  


  VAREMERKER
  __________

  Navnene nedenfor er varemerker for IBM Corporation. 

      Distributed Console Access Facility (DCAF)
      IBM
      MMPM/2
      OS/2
      Presentation Manager
      PS/ValuePoint
      WIN-OS/2

  Navnene nedenfor er varemerker for andre selskaper. 

  VAREMERKER               EIER
  __________               __________________________

  ATI, Mach64, Rage        ATI Technologies, Inc.
  CorelDRAW                Corel Corporation
  Millenium, Mystique      Matrox
  Windows                  Microsoft Corporation
  S3, Trio, Virge          S3 Incorporated
  VESA                     Video Electronics Standards Association

                OS/2 GRADD-STYREPROGRAMMER                      Side 4


  GRADD (GRAPHICS ADAPTER DEVICE DRIVERS)
  _______________________________________

  GRADD er en arkitektur som gjõr at det blir enklere Ü stõtte
  ny grafikkmaskinvare etter hvert som den blir tilgjengelig.
  Ytelsen til utvidede PM-applikasjoner kan utnyttes nÜr du
  bruker hurtige GRADD-styreprogrammer.

  Det er tatt med flere nye og oppdaterte GRADD-styreprogrammer i
  denne pakken. 


  FUNKSJONER SOM STùTTES
_________________________

  GRADD-styreprogrammene gir integrert stõtte for skjermgrafikk
  med og uten akselerator og avansert fargedybde og -opplõsning.
  De er i overensstemmelse med den 32-biters lineëre minnemodellen
  i OS/2, og skal fungere som 32-biters PM-skjermstyreprogrammer
  for grafikk under den 32-biters grafiske funksjonen i OS/2. 


  STYREPROGRAMMER SOM ER INKLUDERT
___________________________________

  Disse GRADD-styreprogrammene med akselerator er inkludert:

      * ATI Mach64/Rage GRADD           (M64GRADD)
      * Chips & Technology 6555X GRADD  (CHPGRADD)
      * Matrox Millenium/Mystique GRADD (MGAGRADD)
      * NeoMagic GRADD                  (NMGRADD)
      * S3 86x/96x/Trio GRADD           (S3GRADD)
      * S3 Virge/Trio3D GRADD           (S3DGRADD)

  Inkludert er ogsÜ stõtte for generisk VGA og SVGA. 

      * Video Graphics Array GRADD      (VGAGRADD)
      * Generisk SVGA GRADD             (GENGRADD)

  Hvis det ikke er tatt med et GRADD- eller PM-styreprogram med
  akselerator for kortet ditt, gir kanskje GENGRADD stõtte av
  typen UNACCELERATED for skjermgrafikk ved utvidede opplõsninger
  og farger. GENGRADD kan brukes sammen med de fleste kort som inneholder
  en VESA-kompatibel BIOS, men ytelsen, som vil variere avhengig av
  systemkonfigurasjonen, vil ikke vëre sÜ god som for et styreprogram
  med akselerator. 











                OS/2 GRADD-STYREPROGRAMMER                      Side 5

  OPPLùSNINGER SOM STùTTES
  _________________________

  Hvilke opplõsninger og farger som stõttes, avhenger av mengden
  grafikkminne og kortimplementeringen.


  KOMPATIBILITET
  ______________

  De grafiske styreprogrammene er for õyeblikket kompatible med 

        alle versjoner av OS/2 3.0 med oppdateringspakke 35 eller senere
        alle versjoner av OS/2 4.0 med oppdateringspakke 5 eller senere
        alle versjoner av OS/2 Warp Server for e-business

  SETUP-installeringskommandoen vil ikke utfõre installeringen pÜ
  OS/2-versjoner og oppdateringspakker som ikke er gyldige. 

  NÜr disse grafikkstyreprogrammene er installert, og du senere
  vil fjerne installeringen av en nõdvendig oppdateringspakke til et
  nivÜ fõr oppdateringspakke 5 (OS/2 4.0) eller oppdateringspakke
  35 (OS/2 3.0), mÜ du fõrst gjenopprette datamaskinen til
  VGA for Ü fjerne GRADD BBS-styreprogrammene.

  Bortsett fra bruk av engelske meldinger, fungerer
  SBCS-styreprogrammene som er installert for SBCS-sprÜk, og som ikke
  er pÜ listen SET LANG= under "Utpakking" ovenfor, riktig for det valgte
  sprÜket.

  FUNKSJONSBEGRENSNINGER
  ______________________

  Kjente begrensninger:

  1) IBM har testet mange datamaskiner og kort med grafikkenhetene
     til de oppfõrte styreprogrammene med akselerator. Testing
     ble bare utfõrt pÜ datamaskiner med PCI-bussgrafikk, selv
     om det ikke er krav om en PCI-buss. 

  2) Det er ikke funnet noen problemer under uformell testing av
     ISA-bussgrafikkort. Men da det tidligere "PM"-styreprogrammet
     skulle gjenopprettes, var det noen ganger problemer med Ü oppdage
     kortet. Problemet kan lõses ved Ü slÜ av datamaskinen for Ü klargjõre
     kortet nÜr VGA er gjenopprettet. 

     Kort av typen ATI Mach 64 ISA Bus stõttes ikke for õyeblikket. 

  3) Alle GRADD-styreprogrammer, bortsett fra VGAGRADD, mÜ ha
     VESA-kompatibel skjerm-BIOS (versjon 1.2 eller senere) eller en
     riktig SVGADATA.PMI-fil. Hvis du har et eldre ikke-VESA-kort
     med stõtte for SVGA PM-styreprogram fra IBM, kan GENGRADD ofte
     brukes som et alternativt SVGA-styreprogram som du definerer ved
     Ü fõlge SETUP-installeringskommandoen for GRADD Graphics
     BBS-styreprogrammer. Bruk kommandoen "SVGA ON INIT" fra en OS/2-
     eller DOS-fullskjermsesjon for Ü lage en SVGADATA.PMI-fil fõr du
     starter systemet pÜ nytt for Ü bruke GRADD-styreprogrammer. 


                   OS/2 GRADD-STYREPROGRAMMER                    Side 6

  4) M64GRADD og S3GRADD: Det har vërt noen problemer med
     enkelte kort som har stõtte for maskinvaremarkõr. Symptomene
     kan vëre alt fra at pekeren vises som et svart rektangel til
     at skjermbildet blir õdelagt der markõren beveger seg. Det har
     blitt levert en lõsning som medfõrer tvungen bruk av
     programvaremarkõr. Problemet skulle bli lõst ved at du
     tilfõyer denne linjen til CONFIG.SYS og starter systemet pÜ nytt: 

        SET HW_CURSOR=OFF

  Du finner fremtidige rettelser og oppdateringer for
  GRADD og andre grafikkstyreprogrammer pÜ Internett pÜ 

     http://service5.boulder.ibm.com/pspfixpk.nsf

  Fra URL-adressen ovenfor velger du "All Fix packages - By
  Product" og sõker etter "GRADD".


  KOPIERE TIL DISKETTER
  ______________________


  NÜr du har lagt installeringsfilene til GRADD-styreprogrammet
  i en installeringskatalog, kan du bruke OS2-kommandoen BACKUP
  til Ü kopiere dem til disketter, slik at du har en reservekopi
  eller kan ta dem med deg:

  1. èpne en OS/2 fullskjermsesjon eller OS/2 vindussesjon. 

  2. Skriv "BACKUP C:\BBS\GRADD A: /S" og trykk pÜ Enter. 

  3. Merk og sett inn sÜ mange formaterte disketter som trengs. 

  4. Du kan bruke HELP BACKUP hvis du vil ha flere opplysninger om
     BACKUP-kommandoen. 

  Slik gjenoppretter du disse diskettene til den samme eller en
  annen datamaskin: 

  1. èpne en OS/2 fullskjermsesjon eller OS/2 vindussesjon. 

  2. Skriv "RESTORE A: C:\BBS\GRADD /N /S" og trykk pÜ Enter. 

  3. Sett inn tidligere reservekopierte disketter etter behov.

  4. Du kan bruke HELP RESTORE hvis du vil ha flere opplysninger
     om RESTORE-kommandoen.  

  IBM har ingen stõtte for installering av disse styreprogrammene
  direkte fra disketter. 








                 OS/2 GRADD-STYREPROGRAMMER                      Side 7

  INSTALLERING
  ____________

  FORELùPIGE TRINN
  ________________

  Trinnene nedenfor forbereder maskinen fõr du installerer
  GRADD-styreprogrammene:


  1. Du bõr lukke andre applikasjoner, sërlig WIN-OS/2-applikasjoner,
     slik at styreprograminstalleringen kan erstatte styreprogramfilene
     som en Üpen applikasjon kan ha lÜst som bare for lesing. 

  2. Hvis du tidligere har installert et SVGA-styreprogram, gÜr du tilbake
     til VGA-opplõsning ved hjelp av fremgangsmÜten under "Definere VGA-modus
     for skjermen" i denne README-filen.


  OPPGI VGA-MODUS FOR SKJERMEN
  _____________________________

  Hvis skjermen er synkronisert og du ellers har et brukbart arbeidsomrÜde,
  anbefaler vi at du bruker Selektiv installering for Ü oppgi VGA-modus
  for skjermen. Hvis ikke, fõlger du fremgangsmÜten nedenfor for Ü gÜ
  tilbake til VGA-modus. 

      1. SlÜ pÜ maskinen. Hvis den allerede er slÜtt pÜ, avslutter du
         systemet eller trykker du pÜ Ctrl+Alt+Del for Ü starte maskinen
         pÜ nytt.
      2. NÜr du ser en liten hvis rute õverst i venstre hjõrne av
         skjermen, trykker du pÜ Alt+F1.
      3. NÜr du fÜr frem skjermbildet med gjenopprettingsvalg, trykker
         du pÜ F3-tasten eller bokstaven "V", avhengig av hvilken versjon
         du har av operativsystemet.
      4. Kjõr Selektiv installering for Ü endre Windows-styreprogrammene. 

  NÜr maskinen har startet pÜ nytt, blir skjermkortet gjenopprettet og kan
  brukes i VGA-modus. Hvis du vil installere et nytt skjermkort eller
  grafikkstyreprogram, ser du i kapittelet om skjermprosedyrer i
  brukerhÜndboken til OS/2 Warp.


  OVERVèKET INSTALLERING
  ________________________

  Hvis du skal foreta en overvÜket installering av GRADD-styreprogrammene
  fra den selvutpakkende zip-filen for installeringskatalogen, gjõr du
  dette:

  1. èpne en OS/2 fullskjermsesjon eller OS/2 vindussesjon. 

  2. Fõr du kjõrer SETUP.CMD-filen som er trukket ut, bruker du SET LANG=
     for Ü definere riktig sprÜk. SprÜket kan allerede vëre definert riktig
     i CONFIG.SYS. Under "Utpakking" i denne README-filen finner du noen
     eksempler pÜ dette. 



                OS/2 GRADD-STYREPROGRAMMER                      Side 8

  3.  Fra OS/2-klarmeldingen skriver du denne kommandoen for Ü kopiere
      de nõdvendige filene til OS/2-oppstartingsstasjonen: 

          <sõkebane>SETUP xxx [<sõkebane>] [<oppstartingsstasjon>] [/u]

      der
          xxx er en av disse: 

              "ATI"   - ATI Mach64/Rage GRADD-familien
              "CHP"   - Chips & Technology 6555x GRADD-familien
              "DYN"   - Dynamically Selected GRADD
              "GEN"   - Generic VESA Unaccelerated GRADD
              "MGA"   - Matrox Millenium & Mystique GRADD-familien
              "NM"    - NeoMagic 2090/2093/2097/2160/2200/2360 GRADD-familien
              "S3"    - S3 86x/96x/Trio GRADD-familien
              "VGA"   - Video Graphics Array (VGA) GRADD
              "VIRGE" - S3 Virge/Trio3D GRADD-familien

          <sõkebane> for SETUP mÜ oppgis hvis SETUP ikke er i gjeldende
                      katalog. 

          [<sõkebane>] er en valgfri parameter (obligatorisk hvis neste
                      parameter er oppgitt) og er installeringskatalogen.

          [<oppstartingsstasjon>] er valgfri og er stasjonen der OS/2
                      er installert.

          [/u] er valgfri og viser en uovervÜket installering som for
                      CID-installeringer. Du trenger ikke Ü ha en
                      CID-responsfil. 

      Trykk deretter pÜ Enter.

  4. NÜr du blir bedt om det, avslutter du systemet og starter datamaskinen
     pÜ nytt. 

      Merknader:

      1) Under installeringen av dette styreprogrammet, blir filene
         DISPLAY.LOG og DSPINSTL.LOG opprettet eller tilfõyd til katalogen
         OS2\INSTALL. Disse filene identifiserer OS/2-systemfilene som ble
         oppdatert, og viser om installeringen var vellykket, og hvorfor den
         eventuelt ikke var det. Innholdet i disse filene kan vëre nyttig
         hvis du mÜ rapportere et installeringsproblem til IBM.

      2) Du kan bli spurt om du vil overskrive visse filer hvis mÜlfilen
         er nyere enn kildefilen. Vanligvis bõr du svare JA pÜ disse
         forespõrslene, hvis du ikke tidligere har hatt bestemte problemer
         med styreprogrammet og installerer det pÜ nytt. 








                         OS/2 GRADD-STYREPROGRAMMER                      Side 9

  5. NÜr datamaskinen er startet pÜ nytt, gjõr du dette for at
     konfigureringen skal bli riktig for gjeldende skjerm, og velger
     riktig opplõsning og fornyingsfrekvens: 

      a.  èpne Systemmappe.
             b.  èpne mappen Konfigurere systemet.
             c.  èpne objektet System.
             d.  NÜr du fÜr frem notisboken for innstillinger, velger
                 du flippen Screen. GÜ til side 2 under flippen Screen.
      e.  VESA** Display Data Channel (DDC) 1 og 2B-protokoller stõttes
          for automatisk oppdaging av DDC-skjermer. Hvis skjermen er
          DDC-kompatibel, viser side 2 en beskrivelse av skjermen. Hvis
          skjermen ikke er DDC-kompatibel, velger du skjermen fra listen
          over skjermer pÜ side 2. Hvis du ikke finner skjermen pÜ listen,
          velger du Standard.
      f.  GÜ tilbake til side 1 og velg en opplõsning og fornyingsfrekvens.
          Hvilken type kort og skjerm du har, bestemmer om det er mulig Ü
          velge fornyingsfrekvens.
               g.  Lukk notisboken for innstillinger.
               h.  Avslutt OS/2 og start maskinen pÜ nytt.

































                OS/2 GRADD-STYREPROGRAMMER                      Side 10

  INSTALLERE I ET CID-MILJù
  __________________________

  Merknader:

  1. Opprett en katalog pÜ tjeneren (for eksempel X:\BBS\GRADD) og pakk
     ut installeringsfilene fra den selvutpakkende filen GRADDBB*.EXE
     til installeringskatalogen X:\BBS\GRADD, slik det er beskrevet under
     "Utpakking".

  2. Du mÜ ha utfõrt en CID-installering (Configuration Installation
     Distribution) av OS/2 pÜ klienten. 

  3. NÜr du skal konfigurere skjermen, opplõsningen og fornyingsfrekvensen,
     ser du i filen "README.CFG" i denne pakken. 

  Hvis du skal installere et styreprogram ved hjelp av CID-installering,
  bruker du informasjonen nedenfor til Ü endre LCU-kommandofilen. Eksempelet
  nedenfor installerer ATI Mach64/Rage GRADD (M64GRADD).

  Merk: Informasjonen nedenfor er ment som en veiledning.
        CU-kommandofilen kan se annerledes ut.

    /*****************************************************/
    /*           LCU-PRODUKTDATADEL                      */
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
    /*         ANTALL PROGRAMMER KONFIGURERT I           */
    /*               PRODUKTDATADELEN                    */
    /*****************************************************/

    NUM_INSTALL_PROGS = 15






                 OS/2 GRADD-STYREPROGRAMMER                      Side 11

    /*****************************************************/
    /*                  INSTALLERINGSDEL                 */
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
    /*                VALG AV RUTINE                      */
    /*  Informasjonen nedenfor skal allerede finnes i     */
    /*  LCU-kommandofilen.                                */
    /******************************************************/
                         .
                         .
                         .
    RebootAndGotoState:
      parse arg new_state, other

      rc2 = SetState(new_state, 'RebootAndGotoState', 1) /* Oppgi */
                                                         /* status for */
                                                         /* OVERALL_STATE */

      Call SaveStates                           /* Lagre miljõvariablene */

      Call Reboot                               /* Start maskinen pÜ nytt */

      return

                          .
                          .
                          .

    /*****************************************************/
    /*    SLUTT Pè LCU-INFORMASJON SOM SKAL TILFùYES     */
    /*****************************************************/











                OS/2 GRADD-STYREPROGRAMMER                      Side 12

  APAR-RETTELSER SOM ER TATT MED I DETTE STYREPROGRAMMET
  ________________________________________________________

  Noen APAR-rettelser er kanskje ikke med pÜ listen. Hvis du mottar
  dette styreprogrammet fra IBMs OS/2-brukerstõtte og den APARen du
  har bedt om, ikke stÜr pÜ listen, installerer du styreprogrammet,
  for APARen er likevel tatt med. 














































                                (Slutt pÜ dokumentet)
