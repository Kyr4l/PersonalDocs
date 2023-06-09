                OS/2 GRADD-STYREPROGRAMMER                      Side 1

  PAKKE UT
  ________

  Slik definerer du installeringskatalogen for styreprogrammet
  GRADD Graphics BBS: 

  1. �pne en OS/2 fullskjermsesjon eller OS/2 vindussesjon. 

  2. F�r du kj�rer den selvutpakkende zip-filen GRADDBB*.EXE (det
     n�yaktige navnet avhenger av byggenummeret p� utgaven), g�r du
     til "installeringskatalogen" der du vil lagre installeringsfilene
     til styreprogrammet GRADD Graphics BBS. Vi foresl�r C:\BBS\GRADD.
     Fra OS/2-klarmeldingen skriver du disse kommandoene: 

      C:
      MD C:\BBS
      MD C:\BBS\GRADD
      CD C:\BBS\GRADD

  3. Bruk parameterne "-DIR" og "-OVER" p� den selvutpakkende
     zip-filen GRADDBB*.EXE for � opprette
     installeringskatalogoversikten. Du b�r kopiere
     GRADDBB*.EXE til installeringskatalogen f�rst. Fra
     OS/2-klarmeldingen skriver du da kommandoen 

      GRADDBB* -DIR -OVER

  4. Bruk SET LANG= for � definere riktig spr�k. Spr�ket kan allerede
     v�re definert riktig i CONFIG.SYS. Hvis det ikke er det,
     oppgir du en av disse SET LANG=-kommandoene fra en
     OS/2-klarmelding for � velge spr�k/land:

      SET LANG=ar_AA    for arabisk (engelsk med arabiske fonter/toveisst�tte)
      SET LANG=pt_BR    for Brasil
      SET LANG=zh_CN    for forenklet kinesisk
      SET LANG=de_DE    for Tyskland
      SET LANG=da_DK    for Danmark
      SET LANG=es_ES    for Spania
      SET LANG=el_GR    for Hellas (engelsk med st�tte for greske fonter)
      SET LANG=fi_FI    for Finland
      SET LANG=fr_FR    for Frankrike
      SET LANG=iw_IL    for Israel (engelsk med hebraiske fonter/toveisst�tte)
      SET LANG=it_IT    for Italia
      SET LANG=ja_JP    for Japan
      SET LANG=ko_KR    for Korea
      SET LANG=nl_NL    for Nederland
      SET LANG=no_NO    for Norge
      SET LANG=sv_SE    for Sverige
      SET LANG=zh_TW    for Taiwan
      SET LANG=en_US    for engelsk (standard)

      Hvert spr�k har sin egen kopi av denne README.TXT-filen. 



                OS/2 GRADD-STYREPROGRAMMER                      Side 2

  5. Du kan deretter bruke SETUP-kommandoen i installeringskatalogen
     til � installere de riktige spr�kavhengige filene og
     konfigurasjonsopplysningene fra installeringskatalogen til
     oppstartingsstasjonen. Hvis du kj�rer SETUP uten parametere,
     f�r du en kort syntaktisk hjelp til SETUP-kommandoen (som
     er beskrevet senere i denne README-filen) p� spr�ket du
     har valgt, eller standardspr�ket. Du f�r frem hjelpen ved
     � skrive denne kommandoen fra OS/2-klarmeldingen:  

      SETUP


INNHOLD
_______

  Utpakking  . . . . . . . . . . . . . . . . . . . .  1
  Hva pakken inneholder  . . . . . . . . . . . . . .  2
  Lisenser og garantier  . . . . . . . . . . . . . .  3
  Varemerker . . . . . . . . . . . . . . . . . . . .  3
  GRADD (Graphics Adapter Device Drivers). . . . . .  4
  Funksjoner som st�ttes . . . . . . . . . . . . . .  4
  Styreprogrammer som er inkludert . . . . . . . . .  4
  Oppl�sninger som st�ttes. . . . . . . . . . .  . .  5
  Kompatibilitet . . . . . . . . . . . . . . . . . .  5
  Funksjonsbegrensninger . . . . . . . . . . . . . .  5
  Kopiere til disketter. . . . . . . . . . . . . . .  6
  Installering . . . . . . . . . . . . . . . . . . .  7
  Forel�pige trinn . . . . . . . . . . . . . . . . .  7
  Oppgi VGA-modus for skjermen . . . . . . . . . . .  7
  Overv�ket installering . . . . . . . . . . . . . .  7
  Installering i et CID-milj�. . . . . . . . . . . . 10
  APAR-rettelser inkludert i dette styreprogrammet . 12


  HVA PAKKEN INNEHOLDER
  ______________________

  Pakken inneholder dette:

  o   OS/2 GRADD-grafikkstyreprogrammer.

  o   Denne README.TXT-filen, formatert slik at du kan lese den p� skjermen.
      Du kan
      -   bruke innholdsfortegnelsen og sidetallene (som du ser
          �verst p� hver side) for lettere � finne bestemte emner
      -   bruke menyvalget S�ke p� menyen Redigere i OS/2
          SysEd for � finne bestemt informasjon
      -   skrive ut filen 







                OS/2 GRADD-STYREPROGRAMMER                      Side 3


  LISENSER OG GARANTIER
  _______________________

  VENNLIGST LES BETINGELSENE NEDENFOR. BRUKEN AV OS/2
  GRADD-STYREPROGRAMMER ANGIR AT DU AKSEPTERER DISSE
  BETINGELSENE:


  o   DU M� V�RE, OG DU BEKREFTER AT DU ER, EN TIDLIGERE LISENSIERT
      BRUKER AV OS/2
  o   DU KAN LAGE KOPIER AV OS/2 GRADD-STYREPROGRAMMENE TILSVARENDE
      DET ANTALL LISENSIERTE EKSEMPLARER AV OS/2 DU HAR.
  o   ALLE ANDRE BETINGELSER I OS/2-LISENSBETINGELSENE GJELDER DISSE
      OS/2 GRADD-STYREPROGRAMMENE. DU F�R INGEN UTVIDELSE AV
      GARANTIEN SOM ER BESKREVET I DISSE BETINGELSENE.
  o   LES HELE DETTE DOKUMENTET F�R DU BEGYNNER INSTALLERINGEN AV
      DE GRAFISKE STYREPROGRAMMENE. 

  IBM GIR INGEN GARANTIER MED HENSYN TIL INFORMASJONEN I DETTE
  DOKUMENTET. IBM GIR HELLER INGEN LISENSER FOR TILKNYTTEDE PATENTER
  ELLER OPPHAVSRETTER VED � LEGGE VED DETTE DOKUMENTET. 

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

  GRADD er en arkitektur som gj�r at det blir enklere � st�tte
  ny grafikkmaskinvare etter hvert som den blir tilgjengelig.
  Ytelsen til utvidede PM-applikasjoner kan utnyttes n�r du
  bruker hurtige GRADD-styreprogrammer.

  Det er tatt med flere nye og oppdaterte GRADD-styreprogrammer i
  denne pakken. 


  FUNKSJONER SOM ST�TTES
_________________________

  GRADD-styreprogrammene gir integrert st�tte for skjermgrafikk
  med og uten akselerator og avansert fargedybde og -oppl�sning.
  De er i overensstemmelse med den 32-biters line�re minnemodellen
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

  Inkludert er ogs� st�tte for generisk VGA og SVGA. 

      * Video Graphics Array GRADD      (VGAGRADD)
      * Generisk SVGA GRADD             (GENGRADD)

  Hvis det ikke er tatt med et GRADD- eller PM-styreprogram med
  akselerator for kortet ditt, gir kanskje GENGRADD st�tte av
  typen UNACCELERATED for skjermgrafikk ved utvidede oppl�sninger
  og farger. GENGRADD kan brukes sammen med de fleste kort som inneholder
  en VESA-kompatibel BIOS, men ytelsen, som vil variere avhengig av
  systemkonfigurasjonen, vil ikke v�re s� god som for et styreprogram
  med akselerator. 











                OS/2 GRADD-STYREPROGRAMMER                      Side 5

  OPPL�SNINGER SOM ST�TTES
  _________________________

  Hvilke oppl�sninger og farger som st�ttes, avhenger av mengden
  grafikkminne og kortimplementeringen.


  KOMPATIBILITET
  ______________

  De grafiske styreprogrammene er for �yeblikket kompatible med 

        alle versjoner av OS/2 3.0 med oppdateringspakke 35 eller senere
        alle versjoner av OS/2 4.0 med oppdateringspakke 5 eller senere
        alle versjoner av OS/2 Warp Server for e-business

  SETUP-installeringskommandoen vil ikke utf�re installeringen p�
  OS/2-versjoner og oppdateringspakker som ikke er gyldige. 

  N�r disse grafikkstyreprogrammene er installert, og du senere
  vil fjerne installeringen av en n�dvendig oppdateringspakke til et
  niv� f�r oppdateringspakke 5 (OS/2 4.0) eller oppdateringspakke
  35 (OS/2 3.0), m� du f�rst gjenopprette datamaskinen til
  VGA for � fjerne GRADD BBS-styreprogrammene.

  Bortsett fra bruk av engelske meldinger, fungerer
  SBCS-styreprogrammene som er installert for SBCS-spr�k, og som ikke
  er p� listen SET LANG= under "Utpakking" ovenfor, riktig for det valgte
  spr�ket.

  FUNKSJONSBEGRENSNINGER
  ______________________

  Kjente begrensninger:

  1) IBM har testet mange datamaskiner og kort med grafikkenhetene
     til de oppf�rte styreprogrammene med akselerator. Testing
     ble bare utf�rt p� datamaskiner med PCI-bussgrafikk, selv
     om det ikke er krav om en PCI-buss. 

  2) Det er ikke funnet noen problemer under uformell testing av
     ISA-bussgrafikkort. Men da det tidligere "PM"-styreprogrammet
     skulle gjenopprettes, var det noen ganger problemer med � oppdage
     kortet. Problemet kan l�ses ved � sl� av datamaskinen for � klargj�re
     kortet n�r VGA er gjenopprettet. 

     Kort av typen ATI Mach 64 ISA Bus st�ttes ikke for �yeblikket. 

  3) Alle GRADD-styreprogrammer, bortsett fra VGAGRADD, m� ha
     VESA-kompatibel skjerm-BIOS (versjon 1.2 eller senere) eller en
     riktig SVGADATA.PMI-fil. Hvis du har et eldre ikke-VESA-kort
     med st�tte for SVGA PM-styreprogram fra IBM, kan GENGRADD ofte
     brukes som et alternativt SVGA-styreprogram som du definerer ved
     � f�lge SETUP-installeringskommandoen for GRADD Graphics
     BBS-styreprogrammer. Bruk kommandoen "SVGA ON INIT" fra en OS/2-
     eller DOS-fullskjermsesjon for � lage en SVGADATA.PMI-fil f�r du
     starter systemet p� nytt for � bruke GRADD-styreprogrammer. 


                   OS/2 GRADD-STYREPROGRAMMER                    Side 6

  4) M64GRADD og S3GRADD: Det har v�rt noen problemer med
     enkelte kort som har st�tte for maskinvaremark�r. Symptomene
     kan v�re alt fra at pekeren vises som et svart rektangel til
     at skjermbildet blir �delagt der mark�ren beveger seg. Det har
     blitt levert en l�sning som medf�rer tvungen bruk av
     programvaremark�r. Problemet skulle bli l�st ved at du
     tilf�yer denne linjen til CONFIG.SYS og starter systemet p� nytt: 

        SET HW_CURSOR=OFF

  Du finner fremtidige rettelser og oppdateringer for
  GRADD og andre grafikkstyreprogrammer p� Internett p� 

     http://service5.boulder.ibm.com/pspfixpk.nsf

  Fra URL-adressen ovenfor velger du "All Fix packages - By
  Product" og s�ker etter "GRADD".


  KOPIERE TIL DISKETTER
  ______________________


  N�r du har lagt installeringsfilene til GRADD-styreprogrammet
  i en installeringskatalog, kan du bruke OS2-kommandoen BACKUP
  til � kopiere dem til disketter, slik at du har en reservekopi
  eller kan ta dem med deg:

  1. �pne en OS/2 fullskjermsesjon eller OS/2 vindussesjon. 

  2. Skriv "BACKUP C:\BBS\GRADD A: /S" og trykk p� Enter. 

  3. Merk og sett inn s� mange formaterte disketter som trengs. 

  4. Du kan bruke HELP BACKUP hvis du vil ha flere opplysninger om
     BACKUP-kommandoen. 

  Slik gjenoppretter du disse diskettene til den samme eller en
  annen datamaskin: 

  1. �pne en OS/2 fullskjermsesjon eller OS/2 vindussesjon. 

  2. Skriv "RESTORE A: C:\BBS\GRADD /N /S" og trykk p� Enter. 

  3. Sett inn tidligere reservekopierte disketter etter behov.

  4. Du kan bruke HELP RESTORE hvis du vil ha flere opplysninger
     om RESTORE-kommandoen.  

  IBM har ingen st�tte for installering av disse styreprogrammene
  direkte fra disketter. 








                 OS/2 GRADD-STYREPROGRAMMER                      Side 7

  INSTALLERING
  ____________

  FOREL�PIGE TRINN
  ________________

  Trinnene nedenfor forbereder maskinen f�r du installerer
  GRADD-styreprogrammene:


  1. Du b�r lukke andre applikasjoner, s�rlig WIN-OS/2-applikasjoner,
     slik at styreprograminstalleringen kan erstatte styreprogramfilene
     som en �pen applikasjon kan ha l�st som bare for lesing. 

  2. Hvis du tidligere har installert et SVGA-styreprogram, g�r du tilbake
     til VGA-oppl�sning ved hjelp av fremgangsm�ten under "Definere VGA-modus
     for skjermen" i denne README-filen.


  OPPGI VGA-MODUS FOR SKJERMEN
  _____________________________

  Hvis skjermen er synkronisert og du ellers har et brukbart arbeidsomr�de,
  anbefaler vi at du bruker Selektiv installering for � oppgi VGA-modus
  for skjermen. Hvis ikke, f�lger du fremgangsm�ten nedenfor for � g�
  tilbake til VGA-modus. 

      1. Sl� p� maskinen. Hvis den allerede er sl�tt p�, avslutter du
         systemet eller trykker du p� Ctrl+Alt+Del for � starte maskinen
         p� nytt.
      2. N�r du ser en liten hvis rute �verst i venstre hj�rne av
         skjermen, trykker du p� Alt+F1.
      3. N�r du f�r frem skjermbildet med gjenopprettingsvalg, trykker
         du p� F3-tasten eller bokstaven "V", avhengig av hvilken versjon
         du har av operativsystemet.
      4. Kj�r Selektiv installering for � endre Windows-styreprogrammene. 

  N�r maskinen har startet p� nytt, blir skjermkortet gjenopprettet og kan
  brukes i VGA-modus. Hvis du vil installere et nytt skjermkort eller
  grafikkstyreprogram, ser du i kapittelet om skjermprosedyrer i
  brukerh�ndboken til OS/2 Warp.


  OVERV�KET INSTALLERING
  ________________________

  Hvis du skal foreta en overv�ket installering av GRADD-styreprogrammene
  fra den selvutpakkende zip-filen for installeringskatalogen, gj�r du
  dette:

  1. �pne en OS/2 fullskjermsesjon eller OS/2 vindussesjon. 

  2. F�r du kj�rer SETUP.CMD-filen som er trukket ut, bruker du SET LANG=
     for � definere riktig spr�k. Spr�ket kan allerede v�re definert riktig
     i CONFIG.SYS. Under "Utpakking" i denne README-filen finner du noen
     eksempler p� dette. 



                OS/2 GRADD-STYREPROGRAMMER                      Side 8

  3.  Fra OS/2-klarmeldingen skriver du denne kommandoen for � kopiere
      de n�dvendige filene til OS/2-oppstartingsstasjonen: 

          <s�kebane>SETUP xxx [<s�kebane>] [<oppstartingsstasjon>] [/u]

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

          <s�kebane> for SETUP m� oppgis hvis SETUP ikke er i gjeldende
                      katalog. 

          [<s�kebane>] er en valgfri parameter (obligatorisk hvis neste
                      parameter er oppgitt) og er installeringskatalogen.

          [<oppstartingsstasjon>] er valgfri og er stasjonen der OS/2
                      er installert.

          [/u] er valgfri og viser en uoverv�ket installering som for
                      CID-installeringer. Du trenger ikke � ha en
                      CID-responsfil. 

      Trykk deretter p� Enter.

  4. N�r du blir bedt om det, avslutter du systemet og starter datamaskinen
     p� nytt. 

      Merknader:

      1) Under installeringen av dette styreprogrammet, blir filene
         DISPLAY.LOG og DSPINSTL.LOG opprettet eller tilf�yd til katalogen
         OS2\INSTALL. Disse filene identifiserer OS/2-systemfilene som ble
         oppdatert, og viser om installeringen var vellykket, og hvorfor den
         eventuelt ikke var det. Innholdet i disse filene kan v�re nyttig
         hvis du m� rapportere et installeringsproblem til IBM.

      2) Du kan bli spurt om du vil overskrive visse filer hvis m�lfilen
         er nyere enn kildefilen. Vanligvis b�r du svare JA p� disse
         foresp�rslene, hvis du ikke tidligere har hatt bestemte problemer
         med styreprogrammet og installerer det p� nytt. 








                         OS/2 GRADD-STYREPROGRAMMER                      Side 9

  5. N�r datamaskinen er startet p� nytt, gj�r du dette for at
     konfigureringen skal bli riktig for gjeldende skjerm, og velger
     riktig oppl�sning og fornyingsfrekvens: 

      a.  �pne Systemmappe.
             b.  �pne mappen Konfigurere systemet.
             c.  �pne objektet System.
             d.  N�r du f�r frem notisboken for innstillinger, velger
                 du flippen Screen. G� til side 2 under flippen Screen.
      e.  VESA** Display Data Channel (DDC) 1 og 2B-protokoller st�ttes
          for automatisk oppdaging av DDC-skjermer. Hvis skjermen er
          DDC-kompatibel, viser side 2 en beskrivelse av skjermen. Hvis
          skjermen ikke er DDC-kompatibel, velger du skjermen fra listen
          over skjermer p� side 2. Hvis du ikke finner skjermen p� listen,
          velger du Standard.
      f.  G� tilbake til side 1 og velg en oppl�sning og fornyingsfrekvens.
          Hvilken type kort og skjerm du har, bestemmer om det er mulig �
          velge fornyingsfrekvens.
               g.  Lukk notisboken for innstillinger.
               h.  Avslutt OS/2 og start maskinen p� nytt.

































                OS/2 GRADD-STYREPROGRAMMER                      Side 10

  INSTALLERE I ET CID-MILJ�
  __________________________

  Merknader:

  1. Opprett en katalog p� tjeneren (for eksempel X:\BBS\GRADD) og pakk
     ut installeringsfilene fra den selvutpakkende filen GRADDBB*.EXE
     til installeringskatalogen X:\BBS\GRADD, slik det er beskrevet under
     "Utpakking".

  2. Du m� ha utf�rt en CID-installering (Configuration Installation
     Distribution) av OS/2 p� klienten. 

  3. N�r du skal konfigurere skjermen, oppl�sningen og fornyingsfrekvensen,
     ser du i filen "README.CFG" i denne pakken. 

  Hvis du skal installere et styreprogram ved hjelp av CID-installering,
  bruker du informasjonen nedenfor til � endre LCU-kommandofilen. Eksempelet
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

      Call SaveStates                           /* Lagre milj�variablene */

      Call Reboot                               /* Start maskinen p� nytt */

      return

                          .
                          .
                          .

    /*****************************************************/
    /*    SLUTT P� LCU-INFORMASJON SOM SKAL TILF�YES     */
    /*****************************************************/











                OS/2 GRADD-STYREPROGRAMMER                      Side 12

  APAR-RETTELSER SOM ER TATT MED I DETTE STYREPROGRAMMET
  ________________________________________________________

  Noen APAR-rettelser er kanskje ikke med p� listen. Hvis du mottar
  dette styreprogrammet fra IBMs OS/2-brukerst�tte og den APARen du
  har bedt om, ikke st�r p� listen, installerer du styreprogrammet,
  for APARen er likevel tatt med. 














































                                (Slutt p� dokumentet)
