                OS/2 GRADD-STUURPROGRAMMA'S                            Pagina 1

  SAMENVATTING
  ____________

  U kun de installatiedirectory voor de GRADD Graphics
  BBS-stuurprogramma's als volgt instellen: 

  1.  Start een OS/2-sessie in een volledig scherm of in een venster. 

  2.  Ga voordat u het zichzelf uitpakkende bestand GRADDBB*.EXE (de
      precieze naam hangt af van het releasenummer) uitvoert, naar de
      "installatiedirectory" waarin u de installatiebestanden voor de
      GRADD Graphics BBS-stuurprogramma's wilt opslaan. Neem daarvoor
      bijvoorbeeld C:\BBS\GRADD. Typ achter de OS/2-aanwijzing de volgende
      opdrachten: 

      C:
      MD C:\BBS
      MD C:\BBS\GRADD
      CD C:\BBS\GRADD

  3.  Geef bij het starten van het zichzelf uitpakkende bestand
      GRADDBB*.EXE de opties "-DIR" en "-OVER" op, waardoor ook de
      subdirectorystructuur voor de installatie wordt gemaakt. Desgewenst
      kunt u het bestand GRADDBB*.EXE eerst naar de installatiedirectory
      kopi‰ren. Typ vervolgens achter de OS/2-aanwijzing de opdracht: 

      GRADDBB* -DIR -OVER

  4.  Geef de opdracht SET LANG= om de juiste taal in te stellen. 
      Waarschijnlijk wordt deze in het bestand CONFIG.SYS al juist
      ingesteld. Als dat niet het geval is, typ dan achter de
      OS/2-aanwijzing de juiste SET LANG=-opdracht voor de gewenste taal:

      SET LANG=ar_AA    voor Arabisch (Engels met Arabische grafische tekens)
      SET LANG=pt_BR    voor Braziliaans Portugees
      SET LANG=zh_CN    voor Vereenvoudigd Chinees
      SET LANG=de_DE    voor Duits
      SET LANG=da_DK    voor Deens
      SET LANG=es_ES    voor Spaans
      SET LANG=el_GR    voor Grieks (Engels met Griekse grafische tekens)
      SET LANG=fi_FI    voor Fins
      SET LANG=fr_FR    voor Frans
      SET LANG=iw_IL    voor Hebreeuws (Engels met Hebreeuwse grafische tekens)
      SET LANG=it_IT    voor Italiaans
      SET LANG=ja_JP    voor Japans
      SET LANG=ko_KR    voor Koreaans
      SET LANG=nl_NL    voor Nederlands
      SET LANG=no_NO    voor Noors
      SET LANG=sv_SE    voor Zweeds
      SET LANG=zh_TW    voor Traditioneel Chinees
      SET LANG=en_US    voor Engels (standaard)

      Voor elke taal bestaat er een aparte, uit het Engels vertaalde
      versie van dit README.TXT-bestand. Andere bestanden kunnen ook
      taalafhankelijk zijn. 



                OS/2 GRADD-STUURPROGRAMMA'S                            Pagina 2

  5.  Via de opdracht SETUP in de installatiedirectory kunt u de juiste
      taalversie van de bestanden en configuratiegegevens vanaf de
      installatiedirectory naar uw opstartstation kopi‰ren. Als u de
      opdracht SETUP opgeeft zonder opties, wordt er een kort overzicht
      gegeven van de te gebruiken syntaxis voor de opdracht SETUP
      (verderop in dit Readme-bestand vindt u de volledige beschrijving)
      in de door u gekozen taal. Deze Help-informatie wordt dus afgebeeld
      als u achter de OS/2-aanwijzing de volgende opdracht typt:

      SETUP


  INHOUD
  ______

  Samenvatting . . . . . . . . . . . . . . . . . . .  1
  Inhoud van het pakket  . . . . . . . . . . . . . .  2
  Licenties en garantie  . . . . . . . . . . . . . .  3
  Merken . . . . . . . . . . . . . . . . . . . . . .  3
  Graphics Adapter Device Drivers (GRADD)  . . . . .  4
  Ondersteunde functies  . . . . . . . . . . . . . .  4
  Meegeleverde stuurprogramma's  . . . . . . . . . .  4
  Ondersteunde resoluties  . . . . . . . . . . . . .  5
  Compatibiliteit  . . . . . . . . . . . . . . . . .  5
  Functionele beperkingen  . . . . . . . . . . . . .  5
  Kopi‰ren naar diskettes  . . . . . . . . . . . . .  6
  Installatie  . . . . . . . . . . . . . . . . . . .  7
  Voorbereiding  . . . . . . . . . . . . . . . . . .  7
  Beeldscherm instellen op VGA . . . . . . . . . . .  7
  Bewaakte installatie . . . . . . . . . . . . . . .  7
  Installatie in een CID-omgeving  . . . . . . . . . 10
  APAR-fixes in dit stuurprogramma . . . . . . . . . 12


  INHOUD VAN HET PAKKET
  _____________________

  Dit pakket bevat het volgende:

  o   OS/2* GRADD grafische stuurprogramma's.

  o   Dit bestand README.TXT, dat zo is ingedeeld dat het via het
      beeldscherm kan worden bekeken. U kunt:
      -   De inhoudsopgave en de paginanummers (boven aan elke pagina)
          gebruiken om bepaalde onderwerpen te helpen vinden.
      -   De optie Zoeken in het menu Bewerken van de OS/2-systeemeditor
          gebruiken om bepaalde informatie te vinden.
      -   Het bestand afdrukken. 







                OS/2 GRADD-STUURPROGRAMMA'S                            Pagina 3

  LICENTIES EN GARANTIE
  _____________________

  LEES EERST DE ONDERSTAANDE VOORWAARDEN EN BEPALINGEN.
  Door gebruik te maken van de OS/2 GRADD-stuurprogramma's gaat u akkoord
  met de volgende voorwaarden en bepalingen:

  o   U moet beschikken over een eerdere licentie voor OS/2.
  o   U bent gerechtigd een aantal kopie‰n van de OS/2
      GRADD-stuurprogramma's te maken dat gelijk is aan het aantal
      licenties voor OS/2 dat u bezit.
  o   Alle overige voorwaarden en bepalingen van uw
      OS/2-licentieovereenkomst gelden eveneens voor deze OS/2
      GRADD-stuurprogramma's; garantiebepalingen die in die overeenkomst
      zijn opgenomen, worden echter niet uitgebreid.
  o   Lees eerst dit hele document voordat u begint met de installatie van
      de grafische GRADD-stuurprogramma's. 

  Er worden geen verdere garanties gegeven, uitdrukkelijk noch
  stilzwijgend, met inbegrip van garanties voor het voorgenomen gebruik
  waarvoor het document is bestemd of geschiktheid voor een specifiek
  doel. Aan het feit dat dit document aan u ter beschikking is gesteld,
  kan geen recht op licentie of ander recht worden ontleend. 

  Copyright International Business Machines Corporation.
  Alle rechten voorbehouden.


  MERKEN
  ______

  De volgende benamingen, in dit bestand mogelijk aangeduid met een
  sterretje (*), zijn merken van IBM Corporation in de Verenigde
  Staten en/of andere landen:

      Distributed Console Access Facility (DCAF)
      IBM
      MMPM/2
      OS/2
      Presentation Manager
      PS/ValuePoint
      WIN-OS/2

  De volgende benamingen, in dit bestand mogelijke aangeduid met twee
  sterretjes (**), zijn merken van andere ondernemingen:

  Merken                   Eigenaar
  _________________        __________________________

  ATI, Mach64, Rage        ATI Technologies, Inc.
  CorelDRAW                Corel Corporation
  Millenium, Mystique      Matrox
  Windows                  Microsoft Corporation
  S3, Trio, Virge          S3 Incorporated
  VESA                     Video Electronics Standards Association

                OS/2 GRADD-STUURPROGRAMMA'S                            Pagina 4

  GRAPHICS ADAPTER DEVICE DRIVERS (GRADD)
  _______________________________________

  GRADD is een architectuur waarmee de ondersteuning van nieuw beschikbaar
  komende grafische hardware wordt vergemakkelijkt. De performance van
  PM-toepassingen kan door het gebruik van accelerated
  GRADD-stuurprogramma's worden verbeterd. 

  Een aantal nieuwe en uitgebreide GRADD-stuurprogramma's maakt deel uit
  van dit pakket. 


  ONDERSTEUNDE FUNCTIES
  _____________________

  De GRADD-stuurprogramma's bieden naadloos ondersteuning voor al dan niet
  versnelde weergave van grafische voorstellingen op het beeldscherm,
  alsmede voor een uitgebreide reeks kleurendieptes en resoluties. Ze
  voldoen aan het OS/2 32-bits "flat memory model" en zijn afgestemd op
  het functioneren als beeldschermstuurprogramma's voor grafische
  voorstellingen van 32-bits Presentation Manager* onder grafische 32-bits
  OS/2-toepassingen. 


  MEEGELEVERDE STUURPROGRAMMA'S
  _____________________________

  De volgende accelerated GRADD-stuurprogramma's maken deel uit van het
  pakket:

      * ATI Mach64/Rage GRADD           (M64GRADD)
      * Chips & Technology 6555X GRADD  (CHPGRADD)
      * Matrox Millenium/Mystique GRADD (MGAGRADD)
      * NeoMagic GRADD                  (NMGRADD)
      * S3 86x/96x/Trio GRADD           (S3GRADD)
      * S3 Virge/Trio3D GRADD           (S3DGRADD)

  Daarnaast is ook algemene ondersteuning voor VGA en SVGA aanwezig.

      * Video Graphics Array GRADD      (VGAGRADD)
      * Generic SVGA GRADD              (GENGRADD)

  Als voor uw adapter geen accelerated GRADD- of PM-stuurprogramma
  aanwezig is, bevat GENGRADD mogelijk UNACCELERATED ondersteuning voor de
  weergave van grafische voorstellingen bij hogere resoluties en meer
  kleuren. GENGRADD is doorgaans geschikt voor de meeste adapters met een
  BIOS die VESA-compatibel is, al zal de performance vari‰ren per
  systeemconfiguratie en niet zo goed zijn als met een accelerated
  stuurprogramma.











                OS/2 GRADD-STUURPROGRAMMA'S                            Pagina 5

  ONDERSTEUNDE RESOLUTIES
  _______________________

  De ondersteunde resoluties en kleurendieptes verschillen per
  adapter en zijn afhankelijk van de hoeveelheid grafisch geheugen en
  de adapterimplementatie.


  COMPATIBILITEIT
  _______________

  Deze grafische beeldschermstuurprogramma's zijn op dit moment
  compatibel met: 

        Alle versies van OS/2 3.0 met fixpak level 35 of hoger
        Alle versies van OS/2 4.0 met fixpak level 5 of hoger
        Alle versies van OS/2 Warp Server voor e-business

  De installatie-opdracht SETUP resulteert in een foutbericht bij
  installatie op een systeem met een onjuiste versie van OS/2 en bij
  onjuiste fixpak levels.

  Verder moet u, als u na de installatie van deze grafische
  stuurprogramma's een vereist Fixpak wilt verwijderen en daarmee een
  systeem verkrijgt met Fixpak 4 (OS/2 4.0) of Fixpak 34 (OS/2 3.0) of
  eerder, eerst het systeem opnieuw instellen op VGA om de GRADD
  BBS-stuurprogramma's te verwijderen. 

  Afgezien van het gebruik van Engelstalige berichten zijn de
  stuurprogramma's die worden ge‹nstalleerd voor SBCS-talen die niet
  voorkomen in de SET LANG=-lijst in de paragraaf "Samenvatting"
  hierboven, functioneel correct voor de gekozen taal. 


  FUNCTIONELE BEPERKINGEN
  _______________________

  De op dit moment bekende beperkingen zijn:

  1) IBM heeft een groot aantal computers en adapters met de grafische
     apparatuur voor de vermelde accelerated stuurprogramma's getest. Deze
     tests zijn alle uitgevoerd op systemen met grafische PCI-busadapters,
     al is een PCI-bus niet specifiek vereist. 

  2) Tests die op beperkte schaal met grafische ISA-busadapters zijn
     uitgevoerd, zijn eveneens met succes afgesloten. Bij het opnieuw
     instellen van het voorgaande "PM"-stuurprogramma werd echter in
     sommige gevallen de adapter niet meer herkend. Door na het
     opnieuw instellen van VGA het systeem uit te schakelen en zo de
     adapter te initialiseren, kon dit probleem worden opgelost. 

     ATI Mach 64 ISA Bus-adapters worden op dit moment niet ondersteund. 

  3) Voor alle GRADD-stuurprogramma's, met uitzondering van VGAGRADD, is
     een video-BIOS vereist die VESA**-compatibel is (Versie 1.2 of hoger)
     of een corresponderend bestand SVGADATA.PMI. Voor oudere
     niet-VESA-adapters met ondersteuning voor SVGA PM-stuurprogramma's
     van IBM kan GENGRADD vaak worden gebruikt als alternatieve set
     SVGA-stuurprogramma's. Daartoe moet u nadat u de grafische GRADD
     BBS-stuurprogramma's hebt ge‹nstalleerd via de opdracht SETUP,
     in een OS/2- of een DOS-venster eerst een bestand SVGADATA.PMI
     maken met de opdracht "SVGA ON INIT". Als u vervolgens het
     systeem opnieuw opstart, worden de GRADD-stuurprogramma's
     gebruikt. 


                OS/2 GRADD-STUURPROGRAMMA'S                            Pagina 6

  4) M64GRADD en S3GRADD: Voor bepaalde adapters met hardwarematige
     cursorondersteuning zijn problemen gerapporteerd. De symptomen
     vari‰ren van pointers die worden afgebeeld als zwarte blokjes tot
     beschadigde afbeeldingen op het scherm op plaatsen waar de cursor
     passeert. Er is een voorlopige werkbare oplossing beschikbaar waarbij
     het gebruik van een softwarematige cursor wordt geforceerd. Als u de
     volgende regel opneemt in het bestand CONFIG.SYS en het systeem
     opnieuw opstart, moet het probleem zijn opgelost:

        SET HW_CURSOR=OFF

  U kunt toekomstige fixes en updates voor de GRADD-stuurprogramma's en
  overige grafische stuurprogramma's vinden via het Internet op:

     http://service5.boulder.ibm.com/pspfixpk.nsf

  Kies op deze URL "All Fix packages - By Product" en zoek naar "GRADD".


  KOPIEREN NAAR DISKETTES
  _______________________


  Als u de installatiebestanden voor de GRADD-stuurprogramma's eenmaal
  hebt uitgepakt in een directorystructuur, kunt u als volgt met behulp
  van de OS/2-opdracht BACKUP diskettes maken als reservekopie of voor
  transportdoeleinden:

  1. Start een OS/2-sessie in een volledig scherm of in een venster.

  2. Typ "BACKUP C:\BBS\GRADD A: /S" en druk op Enter.

  3. Label zoveel vooraf geformatteerde diskettes als u nodig hebt en
     plaats deze in het diskettestation als daarom wordt gevraagd. 

  4. Als u meer informatie over de opdracht BACKUP wilt, typt u HELP
     BACKUP.

  U kunt de gegevens op deze diskettes als volgt op dezelfde of op een
  andere computer terugzetten. 

  1. Start een OS/2-sessie in een volledig scherm of in een venster.

  2. Typ "RESTORE A: C:\BBS\GRADD /N /S" en druk op Enter.

  3. Plaats de eerder gemaakte backupdiskettes als daarnaar wordt
     gevraagd. 

  4. Als u meer informatie over de opdracht RESTORE wilt, typt u HELP
     RESTORE.

  U kunt deze stuurprogramma's niet rechtstreeks vanaf de diskettes
  installeren.








                OS/2 GRADD-STUURPROGRAMMA'S                            Pagina 7

  INSTALLATIE
  ___________

  VOORBEREIDING
  _____________

  Via de volgende procedure kunt u uw systeem voorbereiden op de
  installatie van de GRADD-stuurprogramma's:

  1.  Andere toepassingen, in het bijzonder WIN-OS/2-toepassingen, moeten
      worden afgesloten zodat bij de installatie ook de stuurprogramma-
      bestanden die door een actieve toepassing 'Alleen lezen' kunnen
      worden gemaakt, worden vervangen. 

  2.  Als u eerder een SVGA-stuurprogramma hebt ge‹nstalleerd, ga dan
      eerst terug naar VGA-resolutie via de procedures in paragraaf
      "Beeldscherm instellen op VGA" hieronder.


  BEELDSCHERM INSTELLEN OP VGA
  ____________________________

  Als u een andere resolutie hebt dan VGA, maar verder wel een bruikbare
  Werkplek, is het raadzaam om de resolutie via Onderdelen Installeren in
  te stellen op VGA. Gebruik anders de onderstaande procedure om terug te
  gaan naar VGA-resolutie. 

      1.  Schakel uw computer aan. Als deze al aan is, start het systeem
          dan opnieuw op via het pictogram OS/2 afsluiten of druk op
          Ctrl+Alt+Del.
      2.  Wanneer in de linker bovenhoek van het beeldscherm een klein wit
          blokje wordt afgebeeld, drukt u op Alt+F1.
      3.  Wanneer het venster Herstelopties wordt afgebeeld, drukt u op de
          functietoets F3 of de letter "V", afhankelijk van de versie van
          het besturingssysteem.
      4.  Wijzig de Windows-stuurprogramma's met behulp van Onderdelen
          Installeren. 

  Als het systeem opnieuw is opgestart, wordt de beeldschermadapter
  opnieuw ingesteld en kunt u in VGA-modus werken. Als u een nieuwe
  beeldschermadapter of een nieuw grafisch stuurprogramma wilt
  installeren, raadpleeg dan het hoofdstuk over videoprocedures in de
  gebruikershandleiding van OS/2 Warp.


  BEWAAKTE INSTALLATIE
  ____________________

  Voor een bewaakte installatie van de GRADD-stuurprogramma's vanaf de
  installatiedirectory met de zelfuitpakkende zipbestanden gaat u als
  volgt te werk:

  1.  Start een OS/2-sessie in een volledig scherm of in een venster. 

  2.  Geef voordat u het uitgepakte bestand SETUP.CMD start, de opdracht
      SET LANG= om de juiste taal in te stellen. Waarschijnlijk wordt deze
      in het bestand CONFIG.SYS al juist ingesteld. In de paragraaf
      "Samenvatting" boven in dit Readme-bestand vindt u voorbeelden. 



                OS/2 GRADD-STUURPROGRAMMA'S                            Pagina 8

  3.  Typ achter de OS/2-aanwijzing de volgende opdracht om alle vereiste
      bestanden naar het OS/2-opstartstation te kopi‰ren:

          <SrcPath>SETUP xxx [<SrcPath>] [<OpstartStation>] [/u]

      Waarin:
          xxx een van de volgende waarden heeft:

              "ATI"   - ATI Mach64/Rage Family GRADD
              "CHP"   - Chips & Technology 6555x Family GRADD
              "DYN"   - Dynamisch geselecteerde GRADD
              "GEN"   - Algemene VESA Unaccelerated GRADD
              "MGA"   - Matrox Millenium & Mystique Family GRADD
              "NM"    - NeoMagic 2090/2093/2097/2160/2200/2360 Family GRADD
              "S3"    - S3 86x/96x/Trio Family GRADD
              "VGA"   - Video Graphics Array (VGA) GRADD
              "VIRGE" - S3 Virge/Trio3D Family GRADD

          <SrcPath> voor SETUP vereist is als dit programma zich niet in
                    de huidige directory bevindt.

          [<SrcPath>] een facultatieve parameter is (vereist als de
                      volgende parameter wordt opgegeven) die naar de
                      installatiedirectory verwijst.

          [<OpstartStation>] een facultatieve parameter is die het station
                             aanduidt waarin OS/2 is ge‹nstalleerd. 

          [/u] een facultatieve parameter is die een onbewaakte
               installatie aangeeft, bijvoorbeeld voor CID-installaties. 
               Een CID-responsbestand is niet vereist. 

      Druk vervolgens op Enter.

  4.  Sluit het systeem af wanneer daarom wordt gevraagd, en start het
      opnieuw op. 

      Opmerkingen:

      1) Bij de installatie van dit stuurprogramma worden de bestanden
         DISPLAY.LOG en DSPINSTL.LOG in the directory OS2\INSTALL gemaakt
         of wordt daaraan informatie toegevoegd. Deze bestanden geven aan
         welke OS/2-systeembestanden zijn gewijzigd, of de installatie met
         succes is voltooid en zo niet, wat daarvan de redenen waren. De
         inhoud van deze bestanden kan nuttig zijn als u een
         installatieprobleem wilt melden bij IBM. 

      2) Mogelijk wordt u gevraagd of bepaalde bestanden moeten worden
         overschreven als het doelbestand een latere datum heeft dan het
         bronbestand. In het algemeen kunt u dergelijke vragen bevestigend
         beantwoorden, tenzij u eerder problemen met het stuurprogramma
         hebt gehad en deze nu opnieuw installeert. 








                OS/2 GRADD-STUURPROGRAMMA'S                            Pagina 9

  5.  Nadat het systeem opnieuw is opgestart, gaat u als volgt te werk om
      dit voor het huidige beeldscherm te configureren en de resolutie en
      verversingsfrequentie op te geven: 

      a.  Open de map OS/2 Systeem.
      b.  Open de map Configuratie.
      c.  Open het object Weergave.
      d.  Ga in het afgebeelde instellingenblok naar de tab Resolutie.
          Ga daar vervolgens naar pagina 2.
      e.  De protocollen VESA** Display Data Channel (DDC) 1 en 2B zijn
          beschikbaar voor automatische detectie van DDC-beeldschermen.
          Als uw beeldscherm DDC-compatibel is, moet op pagina 2 een
          beeldschermbeschrijving worden afgebeeld.
          Als uw beeldscherm niet DDC-compatibel is, selecteert u op deze
          pagina het juiste beeldscherm in de afgebeelde lijst. Als uw
          beeldscherm niet in de lijst voorkomt, kiest u Standaard.
      f.  Ga terug naar Pagina 1 van Resolutie en selecteer een resolutie
          en een verversingsfrequentie. Afhankelijk van uw adapter en
          beeldscherm kunt u bepaalde verversingsfrequenties mogelijk niet
          selecteren.
      g.  Sluit het instellingenblok.
      h.  Sluit de computer af en start het systeem opnieuw op. 

































                OS/2 GRADD-STUURPROGRAMMA'S                           Pagina 10

  INSTALLATIE IN EEN CID-OMGEVING
  _______________________________

  Opmerkingen:

  1.  Maak een directory op de server (Bv. X:\BBS\GRADD) en decomprimeer
      de installatiebestanden vanuit het zelfuitpakkende bestand
      GRADDBB*.EXE naar de installatiedirectory X:\BBS\GRADD zoals
      beschreven in de paragraaf "Samenvatting".

  2.  OS/2 moet met succes op de client zijn ge‹nstalleerd via de
      CID-methode (Configuration Installation Distribution).

  3.  Raadpleeg voor de selecte van het beeldscherm en de configuratie van
      resolutie en verversingsfrequentie het bestand "README.CFG" in dit
      pakket. 

  Gebruik voor de installatie van een stuurprogramma via de CID-methode de
  onderstaande informatie om het LCU-opdrachtenbestand aan te passen. In
  het onderstaande voorbeeld wordt de ATI Mach64/Rage GRADD (M64GRADD)
  ge‹nstalleerd.

  Opmerking: De onderstaande informatie geldt als voorbeeld. Het kan
             zijn dat uw LCU-opdrachtenbestand enigszins verschillend
             is. 

    /*****************************************************/
    /*           LCU-PRODUCTGEGEVENS                     */
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
    /*         AANTAL PROGRAMMA'S DAT IN HET DEEL        */
    /*          MET PRODUCTGEGEVENS IS INGESTELD         */
    /*****************************************************/

    NUM_INSTALL_PROGS = 15






                OS/2 GRADD-STUURPROGRAMMA'S                           Pagina 11

    /*****************************************************/
    /*                  INSTALLATIE                      */
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
    /*                ROUTINEDEEL                         */
    /*  De onderstaande gegevens moeten al in het         */
    /*  LCU-opdrachtenbestand aanwezig zijn.              */
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
    /*           EINDE TOE TE VOEGEN LCU-GEGEVENS        */
    /*****************************************************/











                OS/2 GRADD-STUURPROGRAMMA'S                           Pagina 12

  APAR-FIXES IN DIT STUURPROGRAMMA
  ________________________________

  Mogelijk worden sommige verwerkte APAR's niet vermeld. Als u dit
  stuurprogramma hebt verkregen via het reguliere IBM
  OS/2-ondersteuningskanaal en de door u opgegeven APAR komt niet voor in
  de lijst, installeer het stuurprogramma dan gewoon, want de door u
  opgegeven APAR is dan wel verwerkt. 














































                               (Einde van document)
