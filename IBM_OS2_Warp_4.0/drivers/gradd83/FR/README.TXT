             PILOTES DE PERIPHERIQUES OS/2 GRADD                      Page 1

  EXTRACTION
  __________

  Pour d‚finir le r‚pertoire d'installation du pilote GRADD Graphics BBS,
  proc‚dez comme suit :

  1.  Ouvrez une session OS/2 plein ‚cran ou en fenˆtre.

  2.  Avant d'ex‚cuter le fichier auto-extractible GRADDBB*.EXE (le nom
      exact d‚pend du num‚ro de compilation de l'‚dition), allez dans le
      r‚pertoire d'installation o— vous souhaitez stocker les fichiers
      d'installation du pilote GRADD Graphics BBS. Nous vous conseillons de
      choisir le r‚pertoire C:\BBS\GRADD. A l'invite OS/2, tapez les
      commandes suivantes :

      C:
      MD C:\BBS
      MD C:\BBS\GRADD
      CD C:\BBS\GRADD

  3.  Utilisez les options "-DIR" et "-OVER" sur le fichier auto-extractible
      GRADDBB*.EXE pour cr‚er l'arborescence du r‚pertoire d'installation.
      Vous pouvez choisir de commencer par copier le fichier GRADDBB*.EXE
      dans le r‚pertoire d'installation. Ensuite, … l'invite OS/2, tapez
      la commande suivante :

      GRADDBB* -DIR -OVER

  4.  Utilisez la commande SET LANG= pour d‚finir la langue appropri‚e. Cette
      derniŠre est peut-ˆtre d‚j… d‚finie correctement dans votre fichier
      CONFIG.SYS. Si tel n'est pas le cas, … l'invite OS/2, tapez l'une des
      commandes SET LANG= ci-dessous pour choisir la langue appropri‚e.

      SET LANG=ar_AA    pour l'arabe (anglais avec police arabe)
      SET LANG=pt_BR    pour le portugais (Br‚sil)
      SET LANG=zh_CN    pour le chinois simplifi‚
      SET LANG=de_DE    pour l'allemand
      SET LANG=da_DK    pour le danois
      SET LANG=es_ES    pour l'espagnol
      SET LANG=el_GR    pour le grec (anglais avec police grecque)
      SET LANG=fi_FI    pour le finnois
      SET LANG=fr_FR    pour le fran‡ais
      SET LANG=iw_IL    pour l'h‚breu (anglais avec police h‚bra‹que)
      SET LANG=it_IT    pour l'italien
      SET LANG=ja_JP    pour le japonais
      SET LANG=ko_KR    pour le cor‚en
      SET LANG=nl_NL    pour le n‚erlandais
      SET LANG=no_NO    pour le norv‚gien
      SET LANG=sv_SE    pour le su‚dois
      SET LANG=zh_TW    pour le chinois traditionnel (Ta‹wan)
      SET LANG=en_US    pour l'anglais (par d‚faut)

      Chaque langue possŠde son propre exemplaire du pr‚sent fichier
      README.TXT, qui peut ˆtre traduit de l'anglais, ainsi que d'autres
      fichiers en langue nationale.



             PILOTES DE PERIPHERIQUES OS/2 GRADD                      Page 2

  5.  La commande SETUP dans le r‚pertoire d'installation peut alors ˆtre
      utilis‚e pour installer sur votre unit‚ d'amor‡age les fichiers de
      langue appropri‚s et les informations relatives … la configuration
      qui se trouvent dans le r‚pertoire d'installation. Si vous ex‚cutez
      la commande SETUP sans ajouter d'options, une brŠve aide sur la
      syntaxe de la commande (d‚crite plus en d‚tail ult‚rieurement dans
      le pr‚sent fichier) s'affiche dans la langue par d‚faut ou celle que
      vous avez choisie. Pour afficher cette aide, tapez la commande suivante
      … l'invite OS/2 :

      SETUP


  TABLE DES MATIERES
  __________________

  Extraction . . . . . . . . . . . . . . . . . . . .  1
  Contenu de l'offre . . . . . . . . . . . . . . . .  2
  Licences et garanties. . . . . . . . . . . . . . .  3
  Marques. . . . . . . . . . . . . . . . . . . . . .  3
  Pilotes de cartes graphiques (GRADD) . . . . . . .  4
  Fonctions prises en charge . . . . . . . . . . . .  4
  Pilotes inclus . . . . . . . . . . . . . . . . . .  4
  D‚finitions prises en charge . . . . . . . . . . .  5
  Compatibilit‚. . . . . . . . . . . . . . . . . . .  5
  Restrictions fonctionnelles . . . . . . . . .  . .  5
  Copie sur disquettes . . . . . . . . . . . . . . .  6
  Installation . . . . . . . . . . . . . . . . . . .  7
  Etapes pr‚liminaires . . . . . . . . . . . . . . .  7
  Passage de l'‚cran en mode VGA . . . . . . . . . .  7
  Installation manuelle. . . . . . . . . . . . . . .  7
  Installation dans un environnement CID . . . . . . 10
  Correctifs APAR inclus dans ce pilote. . . . . . . 12


  CONTENU DE L'OFFRE
  __________________

  Cette offre contient les ‚l‚ments suivants :

  o   Pilotes de p‚riph‚riques graphiques OS/2* GRADD.

  o   Le pr‚sent fichier README.TXT, mis en forme pour visualisation …
      l'‚cran. Vous pouvez :
      -   Utiliser la table des matiŠres et les num‚ros de page (qui
          s'affichent en haut de chaque page) pour vous aider … localiser
          des rubriques sp‚cifiques.
      -   Utiliser l'option Recherche dans le menu Edition de l'Editeur
          systŠme OS/2 pour vous aider … localiser des informations
          sp‚cifiques.
      -   Imprimer le fichier.




             PILOTES DE PERIPHERIQUES OS/2 GRADD                      Page 3

  LICENCES ET GARANTIES
  _____________________

  VEUILLEZ LIRE CE QUI SUIT :
  VOTRE UTILISATION DES PILOTES DE PERIPHERIQUES OS/2 GRADD IMPLIQUE
  L'ACCEPTATION DES CONDITIONS ET DISPOSITIONS SUIVANTES :

  o   VOUS DEVEZ DISPOSER D'UN CONTRAT DE LICENCE OS/2 ET EN ACCEPTER LES
      CONDITIONS.
  o   VOUS ETES AUTORISE A FAIRE UN NOMBRE DE COPIES DES PILOTES DE
      PERIPHERIQUES OS/2 GRADD EGAL AU NOMBRE D'EXEMPLAIRES SOUS LICENCE
      D'OS/2 DONT VOUS DISPOSEZ.
  o   TOUTES LES AUTRES DISPOSITIONS DE VOTRE CONTRAT DE LICENCE OS/2
      S'APPLIQUENT A CES PILOTES DE PERIPHERIQUES OS/2 GRADD ; TOUTEFOIS,
      ELLES N'ETENDENT PAS LA GARANTIE MENTIONNEE DANS CE CONTRAT.
  o   LISEZ LA TOTALITE DU PRESENT DOCUMENT AVANT DE LANCER L'INSTALLATION
      DU PILOTE DE CARTE GRAPHIQUE.

  IBM DECLINE TOUTE RESPONSABILITE, EXPRESSE OU IMPLICITE,
  RELATIVE AUX INFORMATIONS CONTENUES DANS LE PRESENT DOCUMENT,
  Y COMPRIS EN CE QUI CONCERNE LES GARANTIES DE QUALITE MARCHANDE OU
  D'ADAPTATION A VOS BESOINS. PAR LA REMISE DE CE DOCUMENT, IBM N'ACCORDE
  AUCUNE LICENCE SUR QUELQUE BREVET OU DROITS D'AUTEUR (COPYRIGHT) QUE CE
  SOIT.

  CES PILOTES SONT LA PROPRIETE D'INTERNATIONAL BUSINESS MACHINES CORPORATION.
  TOUTES LES RESTRICTIONS APPROPRIEES SONT APPLICABLES.

  MARQUES
  _______

  Les termes qui suivent, accompagn‚s d'un ast‚risque (*) dans le pr‚sent
  fichier, sont des marques d'International Business Machines Corporation
  dans certains pays :

      Distributed Console Access Facility (DCAF)
      IBM
      MMPM/2
      OS/2
      Presentation Manager
      PS/ValuePoint
      WIN-OS/2

  Les termes qui suivent, accompagn‚s de deux ast‚risques (**) dans le
  pr‚sent fichier, sont des marques d'autres soci‚t‚s :

  MARQUES                  PROPRIETAIRE
  _______                  ____________

  ATI, Mach64, Rage        ATI Technologies, Inc.
  CorelDRAW                Corel Corporation
  Millenium, Mystique      Matrox
  Windows                  Microsoft Corporation
  S3, Trio, Virge          S3 Incorporated
  VESA                     Video Electronics Standards Association


             PILOTES DE PERIPHERIQUES OS/2 GRADD                      Page 4

  PILOTES DE CARTES GRAPHIQUES (GRADD)
  ____________________________________

  GRADD est une architecture qui facilite la prise en charge des nouveaux
  mat‚riels graphiques disponibles. Les performances des applications du
  gestionnaire de pr‚sentation peuvent ˆtre am‚lior‚es grƒce … l'utilisation
  de pilotes GRADD acc‚l‚r‚s.

  La pr‚sente offre contient plusieurs pilotes GRADD nouveaux et mis … jour.


  FONCTIONS PRISES EN CHARGE
  __________________________

  Les pilotes de p‚riph‚riques GRADD fournissent un support transparent pour
  les cartes d'‚cran acc‚l‚r‚es ou non, ainsi que des versions ‚volu‚es de
  d‚finitions et de nombres de couleurs. Ils sont conformes au modŠle de
  m‚moire lin‚aire OS/2 32 bits et sont con‡us pour fonctionner en tant que
  pilotes de cartes graphiques 32 bits du gestionnaire de pr‚sentation sous
  un moteur graphique OS/2 32 bits.


  PILOTES INCLUS
  ______________

  Les pilotes GRADD acc‚l‚r‚s suivants sont inclus dans cette offre :

      * ATI Mach64/Rage GRADD           (M64GRADD)
      * Chips & Technology 6555X GRADD  (CHPGRADD)
      * Matrox Millenium/Mystique GRADD (MGAGRADD)
      * NeoMagic GRADD                  (NMGRADD)
      * S3 86x/96x/Trio GRADD           (S3GRADD)
      * S3 Virge/Trio3D GRADD           (S3DGRADD)

  Les supports VGA et SVGA g‚n‚riques sont ‚galement fournis.

      * Video Graphics Array GRADD      (VGAGRADD)
      * Generic SVGA GRADD              (GENGRADD)

  Si un pilote du gestionnaire de pr‚sentation ou un pilote GRADD acc‚l‚r‚
  n'est pas inclus pour votre carte, GENGRADD peut vous fournir un support
  NON ACCELERE pour les cartes d'‚cran dans des versions ‚volu‚es de
  d‚finitions et de nombres de couleurs. GENGRADD fonctionne avec la plupart
  des cartes incluant un BIOS VESA ; cependant, les performances, qui varient
  en fonction de la configuration du systŠme, ne seront pas aussi bonnes
  qu'avec un pilote acc‚l‚r‚.


  DEFINITIONS PRISES EN CHARGE
  ____________________________

  Les d‚finitions et les nombres de couleurs pris en charge d‚pendent de la
  carte et varient en fonction de la quantit‚ de m‚moire graphique et de la
  carte install‚e.


             PILOTES DE PERIPHERIQUES OS/2 GRADD                      Page 5



  COMPATIBILITE
  _____________

  Ces pilotes de p‚riph‚riques graphiques sont actuellement compatibles avec :

        Toutes les versions d'OS/2 3.0  avec fixpak de niveau 35 ou suivant
        Toutes les versions d'OS/2 4.0  avec fixpak de niveau 5 ou suivant
        Toutes les versions d'OS/2 Warp Server for e-business

  La commande d'installation SETUP ne permet pas d'effectuer des installations
  sur des versions d'OS/2 ou des niveaux de fixpak non admis.

  De mˆme, aprŠs avoir install‚ ces pilotes graphiques, si vous souhaitez
  d‚sinstaller ult‚rieurement un Fixpak requis ant‚rieur au Fixpak 5 (OS/2 4.0)
  ou Fixpak 35 (OS/2 3.0), vous devez d'abord restaurer le mode VGA pour
  retirer les pilotes GRADD BBS.

  Bien qu'ils puissent utiliser les messages anglais, les pilotes SBCS
  install‚s pour les langues DBCS (jeu de caractŠres double octet) qui ne
  figurent pas dans la liste SET LANG= indiqu‚e … la section "Extraction"
  fonctionnent correctement pour la langue choisie.

  RESTRICTIONS FONCTIONNELLES
  ___________________________

  Les restrictions actuellement connues sont les suivantes :

  1) IBM a test‚ de nombreux ordinateurs et cartes incorporant les
     p‚riph‚riques graphiques pour les pilotes acc‚l‚r‚s r‚pertori‚s. Le
     test a uniquement ‚t‚ effectu‚ sur des ordinateurs dot‚s de cartes
     graphiques bus PCI, bien qu'un bus PCI ne soit pas une condition requise
     sp‚cifique.

  2) Un test informel sur des cartes graphiques bus ISA a abouti. Toutefois,
     lors de la tentative de restauration du pilote du gestionnaire de
     pr‚sentation pr‚c‚dent, il se peut qu'un incident se produise lors de la
     d‚tection de la carte. Pour r‚soudre l'incident, mettez l'ordinateur hors
     tension pour initialiser la carte aprŠs avoir restaur‚ le mode VGA.

     Les cartes bus ISA ATI Mach 64 ne sont pas prises en charge actuellement.

  3) Tous les pilotes GRADD, … l'exception de VGAGRADD, requiŠrent un BIOS
  vid‚o VESA** (version 1.2 ou suivante) ou un fichier SVGADATA.PMI appropri‚.
  Pour des cartes non VESA plus anciennes avec support IBM du pilote du
  gestionnaire de pr‚sentation SVGA, GENGRADD peut souvent ˆtre utilis‚ comme
  un autre pilote SVGA d‚fini … l'aide de la commande d'installation des
  pilotes GRADD Graphics BBS SETUP ("SVGA ON INIT" dans une session OS/2 ou
  DOS plein ‚cran) pour cr‚er un fichier SVGADATA.PMI avant de red‚marrer le
  systŠme pour utiliser les pilotes GRADD.




             PILOTES DE PERIPHERIQUES OS/2 GRADD                      Page 6

  4) M64GRADD et S3GRADD : Des incidents ont ‚t‚ d‚tect‚s avec certaines
     cartes au niveau du support du curseur mat‚riel. Les sympt"mes varient
     du pointeur s'affichant sous forme de rectangle noir … la d‚formation
     des caractŠres affich‚s aprŠs le passage du curseur. Un palliatif vous
     obligeant … utiliser un curseur logiciel est fourni. Pour r‚soudre
     l'incident, ajoutez la ligne suivante au fichier CONFIG.SYS et red‚marrez
     le systŠme :

        SET HW_CURSOR=OFF

  Vous trouverez des correctifs et des mises … jour pour les pilotes GRADD
  et les autres pilotes de p‚riph‚riques graphiques, … l'adresse suivante :

     http://service5.boulder.ibm.com/pspfixpk.nsf

  A l'URL ci-dessus, choisissez "All Fix packages - By Product", puis
  recherchez "GRADD".


  COPIE SUR DISQUETTES
  ____________________


  Une fois que les fichiers d'installation du pilote GRADD ont ‚t‚ extraits
  et plac‚s dans une arborescence de r‚pertoires d'installation, vous pouvez
  les copier sur disquettes … des fins de sauvegarde ou de transport, …
  l'aide de la commande OS/2 BACKUP :

  1. Ouvrez une session OS/2 plein ‚cran ou en fenˆtre.

  2. Tapez "BACKUP C:\BBS\GRADD A: /S" et appuyez sur Entr‚e.

  3. Etiquetez et ins‚rez autant de disquettes pr‚format‚es que n‚cessaire.

  4. Vous pouvez utiliser la commande HELP BACKUP pour obtenir plus de d‚tails
     sur la commande BACKUP.

  Pour restaurer ces disquettes sur le mˆme poste ou sur un autre poste,
  proc‚dez comme suit :

  1. Ouvrez une session OS/2 plein ‚cran ou en fenˆtre.

  2. Tapez "RESTORE A: C:\BBS\GRADD /N /S" et appuyez sur Entr‚e.

  3. Ins‚rez les disquettes sauvegard‚es pr‚c‚demment comme indiqu‚.

  4. Vous pouvez utiliser la commande HELP RESTORE pour obtenir plus de
     d‚tails sur la commande RESTORE.

  IBM n'a pris aucune disposition concernant l'installation de ces pilotes
  directement … partir de disquettes.





             PILOTES DE PERIPHERIQUES OS/2 GRADD                      Page 7

  INSTALLATION
  ____________

  ETAPES PRELIMINAIRES
  ____________________

  Les ‚tapes suivantes permettent de pr‚parer votre ordinateur …
  l'installation de pilotes de p‚riph‚riques GRADD :

  1.  D'autres applications, en particulier les applications WIN-OS/2,
      doivent ˆtre ferm‚es de sorte que l'installation du pilote de
      p‚riph‚rique remplace les fichiers qu'une application ouverte
      risque d'avoir verrouill‚ en lecture seulement.

  2.  Si vous avez install‚ un pilote SVGA auparavant, repassez en mode
      VGA en suivant les instructions de la section ci-aprŠs.


  PASSAGE DE L'ECRAN EN MODE VGA
  ______________________________

  Si votre ‚cran est en mode synchrone et que vous disposez d'un bureau
  ‚lectronique utilisable, nous vous conseillons d'utiliser l'installation
  s‚lective pour faire passer votre ‚cran en mode VGA. Sinon, ex‚cutez la
  proc‚dure suivante pour repasser en mode VGA.

      1.  Mettez l'ordinateur sous tension. S'il l'est d‚j…, arrˆtez-le
          ou appuyez sur Ctrl+Alt+Suppr pour le relancer.
      2.  Lorsqu'un petit carr‚ blanc apparaŒt dans l'angle sup‚rieur
          gauche de l'‚cran, appuyez sur Alt+F1.
      3.  Lorsque l'‚cran contenant les options de reprise s'affiche,
          appuyez sur la touche F3 ou sur la lettre "V" suivant la
          version du systŠme d'exploitation utilis‚e.
      4.  Lancez une installation s‚lective pour modifier les pilotes Windows.

  Une fois que l'ordinateur a d‚marr‚, votre carte d'‚cran est restaur‚e et
  peut fonctionner en mode VGA. Si vous voulez installer une nouvelle carte
  d'‚cran ou un nouveau pilote de carte graphique, reportez-vous au chapitre
  relatif aux proc‚dures vid‚o dans le Guide de l'utilisateur d'OS/2 Warp.


  INSTALLATION MANUELLE
  _____________________

  Pour ex‚cuter une installation manuelle des pilotes GRADD … partir
  du r‚pertoire d'installation du fichier auto-extractible, proc‚dez
  comme suit :

  1.  Ouvrez une session OS/2 plein ‚cran ou en fenˆtre.

  2.  Avant d'ex‚cuter le fichier SETUP.CMD extrait, utilisez la commande
      SET LANG= pour d‚finir la langue appropri‚e. Cette derniŠre est
      peut-ˆtre d‚j… d‚finie correctement dans votre fichier CONFIG.SYS.
      La section du pr‚sent README intitul‚e "Extraction" vous en fournit
      des exemples.


             PILOTES DE PERIPHERIQUES OS/2 GRADD                      Page 8

  3.  A l'invite OS/2, tapez la commande suivante pour copier tous les
      fichiers requis sur l'unit‚ d'amor‡age OS/2 :

          <CheminRech>SETUP xxx [<CheminRech>] [<Unit‚Amorc>] [/u]

      o—
          xxx correspond … l'un des ‚l‚ments suivants :

              "ATI"   - ATI Mach64/Rage Family GRADD
              "CHP"   - Chips & Technology 6555x Family GRADD
              "DYN"   - Dynamically Selected GRADD
              "GEN"   - Generic VESA Unaccelerated GRADD
              "MGA"   - Matrox Millenium & Mystique Family GRADD
              "NM"    - NeoMagic 2090/2093/2097/2160/2200/2360 Family GRADD
              "S3"    - S3 86x/96x/Trio Family GRADD
              "VGA"   - Video Graphics Array (VGA) GRADD
              "VIRGE" - S3 Virge/Trio3D Family GRADD

          <CheminRech> est requis pour la commande SETUP si cette derniŠre
                       ne se trouve pas dans le r‚pertoire en cours.

          [<CheminRech>] est un paramŠtre facultatif (obligatoire si le
                         paramŠtre suivant est sp‚cifi‚) qui correspond au
                         r‚pertoire d'installation.

          [<Unit‚Amorc>] est facultatif et correspond … l'unit‚ o— OS/2 est
                         install‚.

          [/u] est facultatif et indique une installation manuelle (par
               exemple, pour les installations CID). Un fichier r‚ponses
               CID n'est pas obligatoire.

      Appuyez ensuite sur Entr‚e.

  4.  Lorsque vous y ˆtes invit‚, arrˆtez puis relancez le systŠme.

      REMARQUES :

      1) Lors de l'installation de ce pilote, les fichiers DISPLAY.LOG et
         DSPINSTL.LOG sont cr‚‚s ou ajout‚s dans le r‚pertoire OS2\INSTALL.
         Ces fichiers identifient les fichiers systŠme OS/2 mis … jour et
         indiquent si l'installation a abouti et les raisons de l'‚chec, le
         cas ‚ch‚ant. Le contenu de ces fichiers peut s'av‚rer utile si vous
         avez besoin de signaler … IBM un incident survenu au cours de
         l'installation.

      2) Vous pouvez ˆtre invit‚ … remplacer certains fichiers si le fichier
         cible est plus r‚cent que le fichier source. En g‚n‚ral, vous devez
         r‚pondre affirmativement … tous les messages … moins que vous n'ayez
         rencontr‚ pr‚c‚demment des difficult‚s sp‚cifiques et que vous
         r‚installiez le pilote.





             PILOTES DE PERIPHERIQUES OS/2 GRADD                      Page 9

  5.  Une fois le systŠme relanc‚, proc‚dez comme suit pour configurer
      correctement l'‚cran en cours et choisir une d‚finition et une fr‚quence
      de r‚g‚n‚ration appropri‚s :

      a.  Ouvrez le dossier OS/2.
      b.  Ouvrez le dossier Configuration du systŠme.
      c.  Ouvrez l'objet SystŠme.
      d.  Lorsque le bloc-notes ParamŠtres s'affiche, s‚lectionnez l'onglet
          Screen. Allez ensuite … la page 2.
      e.  Les protocoles VESA** Display Data Channel (DDC) 1 et 2B sont pris
          en charge pour la d‚tection automatique des ‚crans DDC. Si votre
          ‚cran est compatible DDC, la page 2 contient une description de
          votre ‚cran. Sinon, s‚lectionnez votre ‚cran dans la liste qui
          s'affiche. Si votre ‚cran n'apparaŒt pas dans la liste, cliquez
          sur Default.
      f.  Retournez … la page 1 et s‚lectionnez une d‚finition et une
          fr‚quence de r‚g‚n‚ration. En fonction de votre carte et de votre
          ‚cran, certaines fr‚quences de r‚g‚n‚ration peuvent apparaŒtre en
          gris‚.
      g.  Fermez le bloc-notes ParamŠtres.
      h.  Arrˆtez et relancez le systŠme.


  INSTALLATION DANS UN ENVIRONNEMENT CID
  ______________________________________

  REMARQUES :

  1.  Cr‚ez un r‚pertoire sur le serveur (par exemple, X:\BBS\GRADD) et
      extrayez les fichiers d'installation … partir du fichier auto-
      extractible GRADDBB*.EXE dans le r‚pertoire d'installation X:\BBS\GRADD,
      comme indiqu‚ … la section "Extraction".

  2.  OS/2 doit ˆtre install‚ sur le client … l'aide de la m‚thode CID
      (configuration, installation et distribution).

  3.  Pour configurer une s‚lection d'‚cran, une d‚finition et une fr‚quence
      de r‚g‚n‚ration, consultez le fichier "README.CFG" de cette offre.

  Pour installer un pilote de p‚riph‚rique … l'aide de CID, utilisez les
  informations suivantes pour modifier votre fichier de commandes LCU.
  L'exemple ci-dessous permet d'installer le pilote ATI Mach64/Rage GRADD
  (M64GRADD).

  REMARQUE :  Les informations suivantes sont fournies … titre indicatif.
              Votre fichier de commandes LCU peut diff‚rer l‚gŠrement.









             PILOTES DE PERIPHERIQUES OS/2 GRADD                      Page 10

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















             PILOTES DE PERIPHERIQUES OS/2 GRADD                      Page 11

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


  CORRECTIFS APAR INCLUS DANS CE PILOTE
  _____________________________________

  Certains correctifs APAR risquent de ne pas ˆtre r‚pertori‚s. Si vous avez
  re‡u ce pilote via le support IBM OS/2 et que l'APAR que vous recherchez
  n'est pas r‚pertori‚, installez le pilote car il contient votre APAR.
















                              (Fin du document)


