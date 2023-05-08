                OS/2:N NŽYTT™AJURIT                                      Sivu 1

  TIIVISTYKSEN PURKU
  __________________

  Voit m„„ritt„„ n„ytt”ajurin asennushakemiston seuraavasti:

  1.  Avaa OS/2:n kokoruutu- tai ikkunaistunto.

  2.  Ennen kuin ajat purkautuvan GRADDBB*.EXE-zip-tiedoston (tiedoston nimi
      m„„r„ytyy laitoksen build-numeron mukaan), vaihda nykyhakemistoksi
      asennushakemisto, johon haluat asentaa n„ytt”ajurin asennustiedostot. Suositeltavaa
      on k„ytt„„ hakemistoa C:\BBS\GRADD. Anna seuraavat komennot OS/2:n
      kehotteeseen:

      C:
      MD C:\BBS
      MD C:\BBS\GRADD
      CD C:\BBS\GRADD

  3.  Luo asennushakemistorakenne k„ytt„m„ll„ valitsimia "-DIR" ja "-OVER", kun
      ajat purkautuvan GRADDBB*.EXE-zip-tiedoston. GRADDBB*.EXE-tiedosto
      kannattaa ensin kopioida asennushakemistoon. Anna OS/2:n kehotteeseen
      seuraava komento:

      GRADDBB* -DIR -OVER

  4.  M„„rit„ oikea kieli komennolla SET LANG=. Kieliasetus saattaa jo olla
      oikein. Ellei kieliasetus ole oikein, valitse kieli antamalla OS/2:n
      kehotteeseen jokin seuraavista komennoista:

      SET LANG=ar_AA    Arabia (englanti ja arabian merkist”n grafiikka)
      SET LANG=pt_BR    Brasilia
      SET LANG=zh_CN    Yksinkertaistettu kiina
      SET LANG=de_DE    Saksa
      SET LANG=da_DK    Tanska
      SET LANG=es_ES    Espanja
      SET LANG=el_GR    Kreikka (englanti ja kreikan merkist”n grafiikka)
      SET LANG=fi_FI    Suomi
      SET LANG=fr_FR    Ranska
      SET LANG=iw_IL    Israel (englanti ja heprean merkist”n grafiikka)
      SET LANG=it_IT    Italia
      SET LANG=jp_JP    Japani
      SET LANG=ko_KR    Korea
      SET LANG=nl_NL    Alankomaat
      SET LANG=no_NO    Norja
      SET LANG=sv_SE    Ruotsi
      SET LANG=zh_TW    Taiwan
      SET LANG=en_US    Englanti (oletusarvo)

      Kullakin kielell„ on oma kopio t„st„ README.TXT-tiedostosta, joka
      on k„„nnetty englannista, kuten muutkin kieliobjekteja sis„lt„v„t
      tiedostot.



                OS/2:N NŽYTT™AJURIT                                      Sivu 2

  5.  Sen j„lkeen voit asentaa kielitiedostot ja kokoonpanotiedot
      asennushakemistosta aloitusasemaan asennushakemistossa olevan
      SETUP-komennon avulla. Voit tuoda lyhyen SETUP-komennon ohjeen
      valitun- tai oletuskielisen„ kuvaruutuun antamalla SETUP-komennon
      (lis„tietoja my”hemmin t„ss„ README-tiedostossa) ilman valitsimia. Voit
      tuoda ohjeen kuvaruutuun antamalla OS/2:n kehotteeseen seuraavan
      komennon:

      SETUP


  SISŽLT™
  _______

  Tiivistyksen purku . . . . . . . . . . . . . . . .  1
  Paketin sis„lt”  . . . . . . . . . . . . . . . . .  2
  K„ytt”oikeus- ja takuutiedot . . . . . . . . . . .  3
  Tavaramerkit . . . . . . . . . . . . . . . . . . .  3
  N„ytt”ajurit . . . . . . . . . . . . . . . . . . .  4
  Tuetut toiminnot . . . . . . . . . . . . . . . . .  4
  Sis„llytetyt ajurit  . . . . . . . . . . . . . . .  4
  Tuetut erotuskyvyt . . . . . . . . . . . . . . . .  5
  Yhteensopivuus . . . . . . . . . . . . . . . . . .  5
  Toiminnalliset rajoitukset . . . . . . . . . . . .  5
  Kopiointi levykkeisiin . . . . . . . . . . . . . .  6
  Asennus  . . . . . . . . . . . . . . . . . . . . .  7
  Valmistelevat vaiheet  . . . . . . . . . . . . . .  7
  N„yt”n VGA-tilan asetus  . . . . . . . . . . . . .  7
  Valvottu asennus . . . . . . . . . . . . . . . . .  7
  Asennus CID-ymp„rist””n  . . . . . . . . . . . . . 10
  T„h„n ajuriin sis„llytetyt APAR-korjaukset . . . . 12


  PAKETIN SISŽLT™
  _______________

  T„m„ paketti sis„lt„„ seuraavat:

  o   OS/2*-n„ytt”ajurit

  o   t„m„ README.TXT-tiedosto muotoiltuna kuvaruudussa tarkastelua varten.
      Voit
      -   etsi„ haluamasi aiheet sis„llysluettelon ja sivunumeroiden, jotka
          n„kyv„t kunkin sivun yl„reunassa, avulla
      -   etsi„ haluamasi tiedot OS/2:n muokkausohjelman Muokkaus-valikon
          Haku-toiminnon avulla
      -   tulostaa tiedoston.







                OS/2:N NŽYTT™AJURIT                                      Sivu 3

  KŽYTT™OIKEUS- JA TAKUUTIEDOT
  ____________________________

  LUE SEURAAVAT EHDOT. KŽYTTŽMŽLLŽ OS/2-LAITEAJUREITA HYVŽKSYT
  SEURAAVAT EHDOT:

  o   SINUN ON OLTAVA JA HYVŽKSYTTŽVŽ, ETTŽ OLET, OS/2-JŽRJESTELMŽN
      LISENSSINHALTIJA.
  o   VOIT OTTAA OS/2_NŽYTT™AJUREISTA NIIN MONTA KOPIOTA KUIN
      OS/2-JŽRJESTELMŽN LISENSOITUA KOPIOTA ON OMISTUKSESSASI.
  o   KAIKKI MUUT OS/2-JŽRJESTELMŽN KŽYTT™OIKEUSSOPIMUKSEN EHDOT OVAT
      VOIMASSA NŽILLE OS/2-NŽYTT™AJUREILLE. NŽMŽ EHDOT EIVŽT KUITENKAAN
      YLITŽ SOPIMUKSESSA MAINITTUJA TAKUUEHTOJA.
  o   LUE TŽMŽ ASIAKIRJA KOKONAAN ENNEN NŽYTT™AJUREIDEN ASENNUKSEN ALOITUSTA.

  IBM TARJOAA TŽMŽN JULKAISUN "SELLAISENAAN" ILMAN MITŽŽN NIMENOMAISESTI TAI
  KONKLUDENTTISESTI MY™NNETTYŽ TAKUUTA, MUKAAN LUETTUINA TALOUDELLISTA
  HY™DYNNETTŽVYYTTŽ, SOPIVUUTTA TIETTYYN TARKOITUKSEEN JA OIKEUKSIEN
  LOUKKAAMATTOMUUTTA KOSKEVAT KONKLUDENTTISESTI ILMAISTUT TAKUUT. TŽMŽN
  TUOTTEEN HANKINTA EI ANNA MITŽŽN LISENSSIŽ NŽIHIN LIITTYVIIN PATENTTEIHIN
  TEKIJŽNOIKEUKSIIN.

  NŽMŽ AJURIT INTERNATIONAL BUSINESS MACHINES CORPORATIONIN TEKIJŽNOIKEUDELLA
  SUOJAAMIA. KAIKKI MUUT NIIHIN SOVELTUVAT RAJOITUKSET OVAT VOIMASSA.


  TAVARAMERKIT
  ____________

  Seuraavat nimet, jotka on merkitty t„ss„ tiedostossa t„hdell„ (*), ovat IBM:n
  tavaramerkkej„ tai rekister”ityj„ tavaramerkkej„ USA:ssa ja muissa maissa:

      Distributed Console Access Facility (DCAF)
      IBM
      MMPM/2
      OS/2
      Presentation Manager
      PS/ValuePoint
      WIN-OS/2

  Seuraavat nimet, jotka on merkitty t„ss„ tiedostossa kahdella t„hdell„ (**),
  ovat ovat muiden yritysten tavaramerkkej„ tai rekister”ityj„ tavaramerkkej„
  seuraavasti:

  TAVARAMERKIT             OMISTAJA
  ____________             ________

  ATI, Mach64, Rage        ATI Technologies, Inc.
  CorelDRAW                Corel Corporation
  Millenium, Mystique      Matrox
  Windows                  Microsoft Corporation
  S3, Trio, Virge          S3 Incorporated
  VESA                     Video Electronics Standards Association

                OS/2:N NŽYTT™AJURIT                                      Sivu 4

  NŽYTT™AJURIT (GRADD)
  ____________________

  GRADD on arkkitehtuuri, jonka avulla on helpompaa tukea uusia n„yttimi„,
  kun ne tulevat markkinoille. PM-sovellusten parannettu suorituskyky
  voidaan ottaa k„ytt””n k„ytt„m„ll„ kiihdytettyj„ n„ytt”ajureita.

  T„ss„ paketissa on useita uusia ja p„ivitettyj„ n„ytt”ajureita.


  TUETUT TOIMINNOT
  ________________

  N„ytt”ajurit sis„lt„v„t saumattoman tuen kiihdytetylle ja
  kiihdytt„m„tt”m„lle n„ytt”grafiikalle sek„ lis„„ v„ri- ja
  erotuskykyvaihtoehtoja. Ne tukevat OS/2:n 32-bittist„ suoraa
  osoitteistusta k„ytt„v„„ muistimallia ja ne on suunniteltu
  toimimaan OS/2:n 32-bittisen grafiikan tuen ohjaamina
  32-bittisin„ Presentation Manager* -n„ytt”ajureina.


  SISŽLLYTETYT AJURIT
  ___________________

  Paketti sis„lt„„ seuraavat kiihdytetyt n„ytt”ajurit:

      * ATI Mach64/Rage GRADD           (M64GRADD)
      * Chips & Technology 6555X GRADD  (CHPGRADD)
      * Matrox Millenium/Mystique GRADD (MGAGRADD)
      * NeoMagic GRADD                  (NMGRADD)
      * S3 86x/96x/Trio GRADD           (S3GRADD)
      * S3 Virge/Trio3D GRADD           (S3DGRADD)

  Paketti sis„lt„„ my”s seuraavat yleiset VGA- ja SVGA-ajurit:

      * Video Graphics Array GRADD      (VGAGRADD)
      * Generic SVGA GRADD              (GENGRADD)

  Jos sovittimelle ei ole kiihdytetty„ GRADD- tai PM-ajuria, GENGRADD
  saattaa sis„lt„„ kiihdytt„m„tt”m„n tuen n„ytt”grafiikalle siten, ett„
  k„ytett„viss„ on enemm„n erotuskyky- ja v„rivaihtoehtoja. GENGRADD toimii
  useimmille sovittimille, jotka sis„lt„v„t VESA:an sopivan BIOSin. T„ll”in
  suorituskyky vaihtelee j„rjestelm„n kokoonpanon mukaisesti ja on huonompi
  kuin kiihdytetyill„ ajureilla.











                OS/2:N NŽYTT™AJURIT                                     Sivu 5

  TUETUT EROTUSKYVYT
  __________________

  Tuetut erotuskyky- sek„ v„rivaihtoehdot m„„r„ytyv„t sovittimen mukaan ja
  vaihtelevat j„rjestelm„n n„ytt”muistin ja sovittimen toteutuksen mukaan.


  YHTEENSOPIVUUS
  ______________

  N„m„ n„ytt”ajurit ovat yhteensopivia seuraavien j„rjestelmien kanssa:

        Kaikki OS/2 3.0 -j„rjestelm„n versiot, kun k„yt”ss„ on korjaustaso 35 tai uudempi
        Kaikki OS/2 4.0 -j„rjestelm„n versiot, kun k„yt”ss„ on korjaustaso 5 tai uudempi
        Kaikki OS/2 Warp Server for e-business -j„rjestelm„n versiot.

  SETUP-asennusohjelma hylk„„ kaikki asennukset, jos OS/2-j„rjestelm„n versio ja korjaustaso
  ei ole jokin seuraavista.

  Jos olet asentanut n„m„ n„ytt”ajurit ja haluat my”hemmin poistaa jonkin
  pakollisen korjaustason vanhemmaksi kuin Fixpak 5 (OS/2 4.0) tai Fixpak
  35 (OS/2 3.0), tietokone on syyt„ palauttaa ensin VGA-tilaan GRADD BBS -ajureiden
  poistoa varten.

  Sellaisille SBCS-kielille asennettavat SBCS-ajurit, joita ei ole lueteltu
  kohdan "Tiivistyksen purku" SET LANG= -luettelossa, toimivat oikein.
  T„ll”in sanomien kielen„ on englanti.

  TOIMINNALLISET RAJOITUKSET
  __________________________

  Tunnetut rajoitukset ovat seuraavat:

  1) IBM on testannut luettelossa olevat kiihdytetyt ajurit useille
     tietokoneille ja sovittimille. Testaus on suoritettu vain PCI-v„yl„grafiikkaa
     k„ytt„vill„ tietokoneilla, vaikka PCI-v„yl„ ei ole laitevaatimuksena.

  2) Sniff-testaus ISA-v„yl„grafiikkasovittimissa on toiminut. Sovittimen
     tunnistuksessa on kuitenkin ilmennyt h„iri”it„ yritett„ess„ palauttaa
     aiempaa PM-ajuria. Kun sovitin alustetaan katkaisemalla virta
     tietokoneesta VGA-tilan palautuksen j„lkeen, poistaa h„iri”n.

     ATI Mach 64 ISA Bus -sovittimia ei tueta.

  3) Kaikki GRADD-ajurit, paitsi VGAGRADD-ajuri, edellytt„v„t VESA**-sopivan
     n„ytt”-BIOSin (version 1.2 tai uudemman) tai sopivan SVGADATA.PMI-tiedoston. Kun
     k„ytet„„n vanhempia muita kuin VESA-sovittimia, joissa on IBM:n toimittama
     SVGA PM -ajurituki, GENGRADD-ajuria voidaan usein k„ytt„„ vaihtoehtoisena
     SVGA-ajurina. T„ll”in tulee luoda SVGADATA.PMI-tiedosto antamalla
     GRADD-n„ytt”ajurien SETUP-asennuskomento yhdess„ SVGA ON INIT -komennon
     kanssa OS/2:n tai DOSin kokoruutuistunnossa. Lopuksi n„ytt”ajurit otetaan
     k„ytt””n tekem„ll„ j„rjestelm„n alkulataus.


                OS/2:N NŽYTT™AJURIT                                      Sivu 6

  4) M64GRADD ja S3GRADD: Joidenkin sovittimien laitteistokohdistintuen
     k„yt”ss„ on ilmennyt ongelmia. H„iri”t ovat ilmenneet seuraavasti: osoitin
     n„kyy mustana suorakaiteena ja aiheuttaa virheit„ kuvaruudussa, kun osoitinta
     siirret„„n. H„iri” voidaan poistaa siten, ett„ otetaan ohjelmistokohdistin
     k„ytt””n lis„„m„ll„ seuraava rivi CONFIG.SYS-tiedostoon ja tekem„ll„
     j„rjestelm„n alkulataus:

        SET HW_CURSOR=OFF

  N„ytt”ajurien tulevat ohjelmakorjaukset ja p„ivitykset l”ytyv„t Web-sivustosta
  osoitteesta:

     http://service5.boulder.ibm.com/pspfixpk.nsf

  Valitse sivulta vaihtoehto "All Fix packages - By Product" ja etsi merkkijonoa
  "GRADD".


  KOPIOINTI LEVYKKEISIIN
  ______________________


  Kun tiedostot on purettu asennushakemistorakenteeseen, n„ytt”ajurien
  asennustiedostot voidaan kopioida levykkeisiin varmistuskopiointia tai siirtoa
  varten OS/2:n BACKUP-komennolla seuraavasti:

  1. Avaa OS/2:n kokoruutu- tai ikkunaistunto.

  2. Anna komento "BACKUP A: C:\BBS\GRADD /N /S" ja paina Enter-n„pp„int„.

  3. Nimi”i ja aseta asemaan BACKUP-komennon edellytt„m„ m„„r„ levykkeit„.

  4. Saat lis„tietoja BACKUP-komennosta antamalla komennon HELP BACKUP.

  Voit palauttaa samojen levykkeiden sis„lt„m„t tiedot samaan tai toiseen
  tietokoneeseen seuraavasti:

  1. Avaa OS/2:n kokoruutu- tai ikkunaistunto.

  2. Anna komento "RESTORE A: C:\BBS\GRADD /N /S" ja paina Enter-n„pp„int„.

  3. Aseta varmistuskopiolevykkeet asemaan, kun RESTORE-komento pyyt„„ niit„.

  4. Saat lis„tietoja RESTORE-komennosta antamalla komennon HELP RESTORE.

  IBM ei tue n„iden ajurien asennusta suoraan levykkeist„.








                OS/2:N NŽYTT™AJURIT                                      Sivu 7

  ASENNUS
  _______

  VALMISTELEVAT VAIHEET
  _____________________

  Seuraavat vaiheet valmistelevat tietokoneen n„ytt”ajureiden asennusta
  varten:

  1.  Muiden sovellusten, kuten WIN-OS/2-sovellusten, on oltava suljettuna,
      jotta laiteajurien asennusohjelma voi korvata ajuritiedostot, jotka
      ajossa oleva sovellus on saattanut lukita vain luku -tilaan.

  2.  Jos olet aiemmin asentanut SVGA-ajuri, ota VGA-erotuskyky k„ytt””n
      t„m„n README-tiedoston kohdan "N„yt”n VGA-tilan asetus" ohjeiden
      mukaisesti.


  NŽYT™N VGA-TILAN ASETUS
  _______________________

  Jos n„ytt” on synkronoitu ja ty”p”yt„ on muutenkin k„ytt”kelpoinen,
  n„yt”n asetuksessa VGA-tilaan on suositeltavaa k„ytt„„ Valikoivaa
  asennusta. Muuten on syyt„ noudattaa seuraavia ohjeita:

      1.  Kytke virta tietokoneeseen. Jos virta on jo kytketty, tee lopputoimet
          tai tee alkulataus painamalla Ctrl-, Alt- ja Del-n„pp„int„.
      2.  Kun kuvaruudun vasempaan yl„kulmaan tulee pieni valkoinen suorakaide,
          paina Alt- ja F1-n„pp„int„.
      3.  Kun Palautusvalinnat-n„ytt” tulee kuvaruutuun, paina F3-n„pp„int„
          tai kirjainta "V" sen mukaisesti, mik„ k„ytt”j„rjestelm„n versio
          on k„yt”ss„.
      4.  Vaihda Windows-ajurit Valikoivan asennuksen avulla.

  Kun tietokoneen alkulataus on tehty, j„rjestelm„ palauttaa n„ytt”ajurin ja
  n„ytt” on VGA-tilassa. Jos haluat asentaa uuden n„ytt”sovittimen tai
  n„ytt”ajurin, katso lis„tietoja OS/2 Warp K„ytt”oppaan kohdasta
  "Laiteajurien asennus".


  VALVOTTU ASENNUS
  ________________

  Voit tehd„ n„ytt”ajurien valvotun asennuksen puretun zip-tiedoston
  asennushakemistosta seuraavasti:

  1.  Avaa OS/2:n kokoruutu- tai ikkunaistunto.

  2.  Ennen kuin ajat zip-tiedostosta puretun SETUP.CMD-tiedoston, m„„rit„
      oikea kieli komennolla SET LANG=. Kieliasetus saattaa jo olla oikein
      CONFIG.SYS-tiedostossa. Katso lis„tietoja t„m„n README-tiedoston
      kohdasta "Tiivistyksen purku".



                OS/2:N NŽYTT™AJURIT                                      Sivu 8

  3.  Kopioi kaikki tarvittavat tiedoston OS/2:n aloitusasemaan antamalla
      OS/2:n kehotteeseen seuraava komento:

          <l„hdepolku>SETUP xxx [<l„hdepolku>] [<aloitusasema>] [/u]

      Jossa
          xxx on jokin seuraavista:

              "ATI"   - ATI Mach64/Rage -tuoteperheen n„ytt”ajuri
              "CHP"   - Chips & Technology 6555x -tuoteperheen n„ytt”ajuri
              "DYN"   - Ajonaikaisesti valittava n„ytt”ajuri
              "GEN"   - Yleinen VESA, kiihdytt„m„t”n n„ytt”ajuri
              "MGA"   - Matrox Millenium & Mystique -tuoteperheen n„ytt”ajuri
              "NM"    - NeoMagic 2090/2093/2097/2160/2200/2360 -tuoteperheen n„ytt”ajuri
              "S3"    - S3 86x/96x/Trio -tuoteperheen n„ytt”ajuri
              "VGA"   - VGA (Video Graphics Array) -n„ytt”ajuri
              "VIRGE" - S3 Virge/Trio3D -tuoteperheen n„ytt”ajuri.

          <l„hdepolku>  SETUP-tiedostolle on pakollinen, jos SETUP-tiedosto
                        ei ole nykyhakemistossa.

          [<l„hdepolku>]-parametri on valinnainen (pakollinen, jos seuraava
                        parametri m„„ritet„„n) ja sen arvona on asennushakemisto.

          [<aloitusasema>] on valinnainen ja sen arvona on OS/2:n asennusasema.

          [/u] valinnainen ja se ilmoittaa SETUP-ohjelmalle, ett„ asennus toteutetaan
               valvomattomana, kuten CID-asennuksissa. CID-vastaustiedosto ei ole pakollinen.

      Paina Enter-n„pp„int„.

  4.  Kun asennusohjelma pyyt„„ tekem„„n alkulatauksen, tee lopputoimet ja
      alkulataus.

      HUOMAUTUKSET:

      1) J„rjestelm„ luo tai liitt„„ DISPLAY.LOG- ja DSPINSTL.LOG-tiedoston
         OS2\INSTALL-hakemistoon t„m„n ajurin asennuksen aikana. N„ist„ tiedostoista
         voi n„hd„, mitk„ OS/2-j„rjestelm„tiedostot on p„ivitetty asennuksen
         aikana ja on asennus onnistunut sek„ mahdolliset asennush„iri”n
         syyt. N„iden tiedostojen sis„ll”st„ saattaa olla apua, jos joudut
         ilmoittamaan asennush„iri”st„ IBM:„„n.

      2) Asennusohjelma saattaa kysy„, korvataanko joitakin tiedostoja, kun
         kohdetiedosto on uudempi kuin l„hdetiedosto. Yleens„ t„llaisiin
         kehotteisiin tulee vastata Kyll„, ellet ole asentamassa ajuria uudelleen,
         koska saman ajurin toiminnassa on ilmennyt ongelmia.








                OS/2:N NŽYTT™AJURIT                                      Sivu 9

  5.  Kun tietokoneen alkulataus on tehty, m„„rit„ k„ytett„v„n n„yt”n kokoonpano
      ja valitse haluamasi erotuskyky sek„ verestystaajuus seuraavasti:

      a.  Avaa OS/2-j„rjestelm„-kansio.
      b.  Avaa J„rjestelm„n asetukset -kansio.
      c.  Kaksoisnapsauta J„rjestelm„-kuvaketta.
      d.  Kun Asetukset-muistikirja tulee n„kyviin, valitse N„ytt”-v„lilehti.
          Siirry N„ytt”-v„lilehteen 2.
      e.  J„rjestelm„ tukee VESA** Display Data Channel (DDC) -yhteysk„yt„nt”j„
          1 ja 2B DDC-n„yttimien automaattisessa tunnistuksessa. Jos n„ytin on
          DDC-yhteensopiva, N„ytt”-v„lilehdess„ 2 pit„isi n„ky„ n„yttimen
          kuvaus. Jos n„ytin ei ole DDC-yhteensopiva, valitse n„ytin
          N„ytt”-v„lilehdess„ 2 olevasta luettelosta. Jos n„ytint„ ei ole
          luettelossa, valitse vaihtoehto Default.
      f.  Palaa N„ytt”-v„lilehteen 1 ja valitse erotuskyky ja verestystaajuus.
          Sovitin ja n„ytin m„„ritt„v„t valittavissa olevat verestystaajuudet.
      g.  Sulje Asetukset-muistikirja.
      h.  Tee lopputoimet ja alkulataus.

































                OS/2:N NŽYTT™AJURIT                                      Sivu 10

  ASENNUS CID-YMPŽRIST™™N
  _______________________

  HUOMAUTUKSET:

  1.  Luo hakemisto palvelimeen (esimerkiksi x:\BBS\GRADD) ja pura asennustiedostot
      purkautuvasta GRADDBB*.EXE-tiedostosta asennushakemistoon  X:\BBS\GRADD
      kohdan "Tiivistyksen purku" ohjeiden mukaisesti.

  2.  OS/2-j„rjestelm„n on oltava onnistuneesti asennettuna ty”asemaan, joka
      k„ytt„„ CID (Configuration Installation Distribution) -menetelm„„.

  3.  Katso lis„tietoja n„yttimen, erotuskyvyn ja verestystaajuuden m„„rityksest„
      kokoonpanoon on t„ss„ paketissa olevassa README.CFG-tiedostossa.

  Voit asentaa laiteajurin CID-menetelm„n avulla muuttamalla LCU-komentotiedostoa
  seuraavien ohjeiden mukaisesti. Seuraava esimerkki asentaa ATI Mach64/Rage
  -n„ytt”ajurin (M64GRADD).

  HUOMAUTUS: Seuraavat tiedot ovat ohjeellisia. K„ytt„m„si
         LCU-komentotiedosto saattaa olla erilainen.

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






                OS/2:N NŽYTT™AJURIT                                      Sivu 11

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











                OS/2:N NŽYTT™AJURIT                                      Sivu 12

  TŽHŽN AJURIIN SISŽLLYTETYT APAR-KORJAUKSET
  __________________________________________

  Joitakin APAR-korjauksia ei ehk„ ole luettelossa. Jos olet vastaanottanut
  t„m„n ajurin IBM:n OS/2-tuen kautta ja pyyt„m„si APAR-korjaus ei ole
  luettelossa, asenna ajuri, kun pyyt„m„si ajuri sis„ltyy luetteloon.














































                                (Asiakirjan loppu)
