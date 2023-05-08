          CONTROLADORES DE DISPOSITIVO GRADD OS2                      P†gina 1

  EXTRACCI‡N
  __________

  Para definir el directorio de instalaci¢n del controlador BBS de
  Gr†ficos GRADD, haga lo siguiente:

  1.  Abra una sesi¢n de pantalla completa de OS/2 o ventana de OS/2.

  2.  Antes de ejecutar el archivo zip de autoextracci¢n GRADDBB*.EXE (el
      nombre exacto depende del n£mero de release del producto), cambie el
      directorio actual por el "directorio de instalaci¢n" en el cual desea
      almacenar los archivos de instalaci¢n del controlador BBS de Gr†ficos
      GRADD. Le recomendamos C:\BBS\GRADD. En el indicador de mandatos de
      OS/2, escriba los siguientes mandatos:

      C:
      MD C:\BBS
      MD C:\BBS\GRADD
      CD C:\BBS\GRADD

  3.  Utilice las opciones "-DIR" y "-OVER" en el archivo zip de autoextracci¢n
      GRADDBB*.EXE para crear el †rbol de directorios de instalaci¢n. Quiz†s
      desee copiar primero dicho archivo zip en el directorio de instalaci¢n.
      Seguidamente, en el indicador de mandatos de OS/2, escriba el
      siguiente mandato:

      GRADDBB* -DIR -OVER

  4.  Utilice SET LANG= para establecer el idioma correcto. Es posible
      que el idioma ya estÇ correctamente definido en el archivo CONFIG.SYS.
      Si no lo est†, en el indicador de mandatos de OS/2 escriba uno de los
      siguientes mandatos SET LANG= para seleccionar su idioma:

      SET LANG=ar_AA    para µrabe (InglÇs con formato de gr†ficos µrabe)
      SET LANG=pt_BR    para Brasil
      SET LANG=zh_CN    para Chino Simplificado
      SET LANG=de_DE    para Alemania
      SET LANG=da_DK    para Dinamarca
      SET LANG=es_ES    para Espa§a
      SET LANG=el_GR    para Grecia (InglÇs con formato de gr†ficos Griego)
      SET LANG=fi_FI    para Finlandia
      SET LANG=fr_FR    para Francia
      SET LANG=iw_IL    para Israel (InglÇs con formato de gr†ficos Hebreo)
      SET LANG=it_IT    para Italia
      SET LANG=ja_JP    para Jap¢n
      SET LANG=ko_KR    para Corea
      SET LANG=nl_NL    para Holanda
      SET LANG=no_NO    para Noruega
      SET LANG=sv_SE    para Suecia
      SET LANG=zh_TW    para Taiw†n
      SET LANG=en_US    para InglÇs (valor por omisi¢n)

      Cada idioma tiene su propia copia de este archivo README.TXT,
      traducida del inglÇs, as° como otros archivos dependientes del idioma.



                CONTROLADORES DE DISPOSITIVO GRADD OS2                 P†gina 2

  5.  El mandato SETUP del directorio de instalaci¢n podr† utilizarse entonces
      para instalar los archivos dependientes de idioma e informaci¢n de
      configuraci¢n adecuados del directorio de instalaci¢n a la unidad de
      arranque. Si ejecuta SETUP sin especificar opciones, se muestra una breve
      ayuda de la sintaxis del mandato SETUP (descrita con detalle m†s adelante
      en este archivo README) en su idioma seleccionado o por omisi¢n. Para ver
      esta ayuda, en el indicador de mandatos de OS/2, escriba el siguiente
      mandato:

      SETUP


  CONTENIDO
  _________

  Extracci¢n . . . . . . . . . . . . . . . . . . . .  1
  Contenido del paquete. . . . . . . . . . . . . . .  2
  Licencias y garant°as. . . . . . . . . . . . . . .  3
  Marcas registradas . . . . . . . . . . . . . . . .  3
  GRADD (Graphics Adapter Device Drivers). . . . . .  4
  Caracter°sticas soportadas . . . . . . . . . . . .  4
  Controladores incluidos. . . . . . . . . . . . . .  4
  Resoluciones soportadas. . . . . . . . . . . . . .  5
  Compatibilidad . . . . . . . . . . . . . . . . . .  5
  Restricciones funcionales. . . . . . . . . . . . .  5
  Copiar en disquetes. . . . . . . . . . . . . . . .  6
  Instalaci¢n. . . . . . . . . . . . . . . . . . . .  7
  Pasos preliminares . . . . . . . . . . . . . . . .  7
  Establecer la pantalla en modalidad VGA. . . . . .  7
  Instalaci¢n atendida . . . . . . . . . . . . . . .  7
  Instalaci¢n en un entorno CID. . . . . . . . . . . 10
  Arreglos APAR incluidos en este controlador. . . . 12


  CONTENIDO DEL PAQUETE
  _____________________

  Este paquete contiene lo siguiente:

  o   Controladores de dispositivo de gr†ficos GRADD OS/2*.

  o   Este archivo README.TXT, formateado para visualizarlo en la pantalla.
      Puede:
      -   Utilizar la tabla de contenido y los n£meros de p†gina (que aparecen
          en la parte superior de cada p†gina) como ayuda para buscar temas
          espec°ficos.
      -   Utilizar la opci¢n Buscar del men£ Editar del Editor del Sistema OS/2
          para buscar informaci¢n espec°fica.
      -   Imprimir el archivo.







                CONTROLADORES DE DISPOSITIVO GRADD OS2                 P†gina 3

  LICENCIAS Y GARANT÷AS
  _____________________

  POR FAVOR, LEA LOS SIGUIENTES TêRMINOS Y CONDICIONES. LA UTILIZACI‡N
  DE LOS CONTROLADORES DE DISPOSITIVO DE GRADD OS/2 INDICA QUE EL
  USUARIO ACEPTA LOS SIGUIENTES TêRMINOS Y CONDICIONES:

  o   DEBE POSEER, Y AFIRMA POSEER, UNA LICENCIA DE OS/2.
  o   PUEDE HACER TANTAS COPIAS DE LOS CONTROLADORES DE DISPOSITIVO DE OS/2
      COMO NÈMERO DE COPIAS DE LICENCIAS DE OS/2 POSEA
  o   TODOS LOS DEMµS TêRMINOS Y CONDICIONES DEL ACUERDO DE LICENCIA DE
      OS/2 SE APLICAN A ESTOS CONTROLADORES DE DISPOSITIVO DE GRADD OS/2;
      SIN EMBARGO, ELLO NO AMPL÷A NINGUNA DE LAS GARANT÷AS TRATADAS EN
      DICHO ACUERDO.
  o   LEA ESTE DOCUMENTO POR ENTERO ANTES DE PROCEDER A LA INSTALACI‡N
      DEL CONTROLADOR DE DISPOSITIVO GRµFICO.

  IBM RECHAZA TODAS LAS DEMµS GARANT÷AS, TANTO EXPL÷CITAS COMO IMPL÷CITAS,
  INCLUYENDO, PERO SIN LIMITARSE A, LAS GARANT÷AS IMPL÷CITAS DE
  COMERCIALIZACI‡N O IDONEIDAD PARA UNA FINALIDAD DETERMINADA, CON
  RESPECTO A LA INFORMACI‡N CONTENIDA EN ESTE DOCUMENTO. MEDIANTE LA
  ENTREGA DE ESTE DOCUMENTO, IBM NO OTORGA NINGUNA LICENCIA SOBRE LAS
  PATENTES O LOS DERECHOS DE COPIA RELACIONADOS.

  INTERNATIONAL BUSINESS MACHINES CORPORATION POSEE LOS DERECHOS DE COPIA
  DE ESTOS CONTROLADORES. SE APLICAN TODAS LAS RESTRICCIONES PERTINENTES. 


  MARCAS REGISTRADAS
  __________________

  Los tÇrminos siguientes, que van seguidos de un asterisco (*) en este
  archivo, son marcas registradas o nombres comerciales de IBM Corporation
  en los Estados Unidos y/o en otros pa°ses:

      Distributed Console Access Facility (DCAF)
      IBM
      MMPM/2
      OS/2
      Presentation Manager
      PS/ValuePoint
      WIN-OS/2

  Los tÇrminos siguientes, que van seguidos de dos asteriscos (**) en
  este archivo, son marcas registradas o nombres comerciales de otras
  empresas, seg£n la tabla siguiente:

  MARCAS REGISTRADAS       PROPIETARIO
  __________________       __________________________

  ATI, Mach64, Rage        ATI Technologies, Inc.
  CorelDRAW                Corel Corporation
  Millenium, Mystique      Matrox
  Windows                  Microsoft Corporation
  S3, Trio, Virge          S3 Incorporated
  VESA                     Video Electronics Standards Association

                CONTROLADORES DE DISPOSITIVO GRADD OS2                 P†gina 4

  CONTROLADORES DE DISPOSITIVO DE ADAPTADORES GRµFICOS (GRADD)
  ____________________________________________________________

  GRADD es una arquitectura que facilita el soporte de nuevo hardware de
  gr†ficos a medida que vaya apareciendo en el mercado. Puede
  aumentarse el rendimiento de las aplicaciones de PM utilizando los
  controladores GRADD acelerados.

  En este paquete se incluyen varios controladores GRADD nuevos y
  actualizados.


  CARACTER÷STICAS SOPORTADAS
  __________________________

  Los controladores de dispositivo GRADD proporcionan soporte
  transparente para los gr†ficos de pantalla acelerados y no acelerados, y
  las resoluciones y profundidad de color avanzados. Se ajustan al modelo
  de memoria plana de OS/2 de 32 bits y est†n dise§ados para funcionar como
  controladores de dispositivos gr†ficos de Presentation Manager* de 32
  bits bajo el motor de gr†ficos de OS/2 de 32 bits.


  CONTROLADORES INCLUIDOS
  _______________________

  Se incluyen los siguientes controladores GRADD acelerados:

      * ATI Mach64/Rage GRADD           (M64GRADD)
      * Chips & Technology 6555X GRADD  (CHPGRADD)
      * Matrox Millenium/Mystique GRADD (MGAGRADD)
      * NeoMagic GRADD                  (NMGRADD)
      * S3 86x/96x/Trio GRADD           (S3GRADD)
      * S3 Virge/Trio3D GRADD           (S3DGRADD)

  TambiÇn se incluye soporte VGA y SVGA genÇrico.

      * Video Graphics Array GRADD      (VGAGRADD)
      * Generic SVGA GRADD              (GENGRADD)

  Si no se incluye un controlador GRADD o PM acelerado para su
  adaptador, GENGRADD puede proporcionar soporte NO ACELERADO para los
  gr†ficos en pantalla con resoluci¢n y profundidad de color mejorados. 
  GENGRADD funciona con la mayor°a de adaptadores que incluyen BIOS conforme
  a VESA; y el rendimiento, que var°a seg£n la configuraci¢n del sistema, no
  ser† tan bueno como el de un controlador acelerado.











                CONTROLADORES DE DISPOSITIVO GRADD OS2                 P†gina 5

  RESOLUCIONES SOPORTADAS
  _______________________

  Las resoluciones y las profundidades de color dependen del
  adaptador y variar†n seg£n la cantidad de memoria gr†fica y la
  implantaci¢n del adaptador.


  COMPATIBILIDAD
  ______________

  Estos controladores de dispositivos gr†ficos actualmente son compatibles
  con:

        Todas las versiones de OS/2 3.0 con el fixpak nivel 35 o posterior
        Todas las versiones de OS/2 4.0 con el fixpak nivel 5 o posterior
        Todas las versiones de OS/2 Warp Server for e-business

  El mandato de instalaci¢n SETUP rechaza las instalaciones en versiones
  de OS/2 o niveles de fixpak inaceptables.

  Adem†s, despuÇs de instalar estos controladores de gr†ficos, si
  posteriormente desea desinstalar un Fixpak y queda un nivel de Fixpak
  inferior a 5 (OS/2 4.0) o inferior a 35 (OS/2 3.0), primero tendr† que
  restaurar el sistema a VGA para poder eliminar los controladores BBS GRADD.

  Aparte del uso de mensajes en inglÇs, los controladores SBCS instalados
  para los idiomas SBCS que no se encuentran en la lista SET LANG= en la
  secci¢n denominada "Extracci¢n" anterior, son plenamente funcionales
  para el idioma seleccionado.

  RESTRICCIONES FUNCIONALES
  _________________________

  Las restricciones conocidas actualmente incluyen lo siguiente:

  1) IBM ha probado muchos sistemas y adaptadores que incorporan los
     dispositivos gr†ficos para los controladores acelerados que se
     enumeran. Las pruebas se efectuaron solamente en sistemas con
     gr†ficos con bus PCI, aunque el bus PCI no es un requisito espec°fico.

  2) Las pruebas realizadas en adaptadores con bus ISA han sido
     satisfactorias. Sin embargo, al intentar restaurar al controlador
     "PM" anterior, a veces se produce un problema en la detecci¢n del
     adaptador. Este problema deber°a resolverse apagando el sistema para
     inicializar el adaptador despuÇs de restaurar VGA.

     Los adaptadores ATI Mach 64 de Bus ISA no est†n soportados
     actualmente.

  3) Todos los controladores GRADD, excepto VGAGRADD, requieren BIOS de
     v°deo conforme a VESA** (Versi¢n 1.2 o superior) o un archivo
     SVGADATA.PMI adecuado. Para adaptadores no VESA m†s antiguos con
     soporte de controlador PM SVGA de IBM, a menudo puede utilizarse
     GENGRADD como conjunto de controlador SVGA alternativo; para ello,
     despuÇs del mandato de instalaci¢n SETUP de los controladores BBS de
     gr†ficos GRADD, debe emitirse el mandato "SVGA ON INIT" desde una
     pantalla completa de OS/2 o de DOS para crear un archivo SVGADATA.PMI,
     antes de rearrancar para utilizar los controladores GRADD.


                CONTROLADORES DE DISPOSITIVO GRADD OS2                 P†gina 6

  4) M64GRADD y S3GRADD: Se han observado problemas con ciertos adaptadores
     con soporte de cursor de hardware. Los s°ntomas van desde la aparici¢n
     del puntero como un rect†ngulo s¢lido negro hasta la mala
     visualizaci¢n de la zona de la pantalla por donde pasa el cursor. Se
     ha proporcionado una soluci¢n que fuerza el uso de un cursor de
     software. Para ello debe a§adirse la l°nea siguiente en CONFIG.SYS
     y rearrancar el sistema:

        SET HW_CURSOR=OFF

  Puede encontrar arreglos y actualizaciones para los controladores de
  dispositivo GRADD y de otros gr†ficos en la siguiente direcci¢n de
  Internet:

     http://service5.boulder.ibm.com/pspfixpk.nsf

  En el URL anterior, seleccione "All Fix packages - By Product" y, a
  continuaci¢n, busque "GRADD".


  COPIA EN DISQUETES
  __________________


  Una vez extra°dos en un †rbol de directorios de instalaci¢n, puede
  colocar los archivos de instalaci¢n de controladores GRADD en disquetes
  para tener una copia de seguridad o para transportarlos, utilizando el
  mandato BACKUP de OS/2:

  1. Abra una sesi¢n de pantalla completa de OS/2 o ventana de OS/2.

  2. Escriba "BACKUP C:\BBS\GRADD A: /S" y pulse la tecla Intro.

  3. Ponga etiquetas e inserte todos los disquetes formateados que sean
     necesarios.

  4. Puede utilizar HELP BACKUP para obtener m†s informaci¢n sobre el
     mandato BACKUP.

  Para restaurar los mismos disquetes al mismo sistema o a un sistema
  distinto:

  1. Abra una sesi¢n de pantalla completa de OS/2 o ventana de OS/2.

  2. Escriba "RESTORE A: C:\BBS\GRADD /N /S" y pulse la tecla Intro.

  3. Inserte los disquetes de copia de seguridad seg£n se le solicite.

  4. Puede utilizar HELP RESTORE para obtener m†s informaci¢n sobre el
     mandato RESTORE.

  IBM no proporciona la posibilidad de instalar estos controladores
  directamente desde disquetes.








                CONTROLADORES DE DISPOSITIVO GRADD OS2                 P†gina 7

  INSTALACI‡N
  ___________

  PASOS PRELIMINARES
  __________________

  Los pasos siguientes preparan su sistema para la instalaci¢n de los
  controladores de dispositivo GRADD:

  1.  Deben cerrarse las dem†s aplicaciones, particularmente las de
      WIN-OS/2, para que la instalaci¢n del controlador de dispositivo
      pueda sustituir los archivos de controlador que una aplicaci¢n abierta
      podr°a bloquear como s¢lo de lectura.

  2.  Si ha instalado un controlador SVGA anteriormente, vuelva a la
      resoluci¢n VGA utilizando los procedimientos en la secci¢n de este
      README titulada "Establecer la pantalla en modalidad VGA".


  ESTABLECER LA PANTALLA EN MODALIDAD VGA
  _______________________________________

  Si su pantalla est† sincronizada y, por otra parte, tiene un Escritorio
  utilizable, le recomendamos que use la Instalaci¢n selectiva para
  establecer su pantalla en modalidad VGA. De lo contrario, utilice los
  procedimientos siguientes para volver a la modalidad VGA.

      1.  Encienda el sistema. Si ya est† encendido, ciÇrrelo o pulse
          Control+Alt+Supr para reiniciarlo.
      2.  Cuando aparezca un peque§o recuadro blanco en el †ngulo superior
          izquierdo de la pantalla, pulse Alt+F1.
      3.  Cuando aparece la pantalla Opciones de recuperaci¢n, pulse la
          tecla de funci¢n F3 o la letra "V", seg£n la versi¢n del sistema
          operativo.
      4.  Ejecute Instalaci¢n Selectiva para cambiar los controladores de
          Windows.

  Una vez se ha rearrancado el sistema, se restaura el adaptador de
  pantalla y puede trabajar en modalidad VGA. Si desea instalar un nuevo
  adaptador de pantalla o controlador de dispositivo de gr†ficos, consulte
  el cap°tulo titulado "Procedimientos de v°deo" en la Gu°a del usuario
  de OS/2 Warp.


  INSTALACI‡N ATENDIDA
  ____________________

  Para llevar a cabo una instalaci¢n atendida de los controladores GRADD
  desde el directorio de instalaci¢n de archivos comprimidos de extracci¢n
  autom†tica, haga lo siguiente:

  1.  Abra una sesi¢n de pantalla completa de OS/2 o ventana de OS/2.

  2.  Antes de ejecutar el archivo extra°do SETUP.CMD, utilice SET LANG=
      para establecer el idioma correcto. Es posible que el idioma ya estÇ
      correctamente definido en el archivo CONFIG.SYS. Encontrar†
      ejemplos en la secci¢n "Extracci¢n" de este README.



                CONTROLADORES DE DISPOSITIVO GRADD OS2                 P†gina 8

  3.  En el indicador de mandatos de OS/2, escriba el mandato siguiente
      para copiar todos los archivos necesarios en la unidad de arranque
      de OS/2:

          <V°aOri>SETUP xxx [<V°aOri>] [<UnidadArranque>] [/u]

      Donde:
          xxx es:

              "ATI"   - ATI Mach64/Rage Family GRADD
              "CHP"   - Chips & Technology 6555x Family GRADD
              "DYN"   - Dynamically Selected GRADD
              "GEN"   - Generic VESA Unaccelerated GRADD
              "MGA"   - Matrox Millenium & Mystique Family GRADD
              "NM"    - NeoMagic 2090/2093/2097/2160/2200/2360 Family GRADD
              "S3"    - S3 86x/96x/Trio Family GRADD
              "VGA"   - Video Graphics Array (VGA) GRADD
              "VIRGE" - S3 Virge/Trio3D Family GRADD

          <V°aOri> para SETUP se requiere cuando SETUP no se encuentra en
                      el directorio actual.

          [<V°aOri>] es opcional (este par†metro es necesario si se especifica
                      el par†metro siguiente) y es el directorio de instalaci¢n.

          [<UnidadArranque>] es opcional y es la unidad donde est†
                      instalado OS/2.

          [/u] es opcional e indica una instalaci¢n desatendida, como por
                      ejemplo, las instalaciones CID. No es necesario un
                      archivo de respuestas CID.

      A continuaci¢n, pulse Intro.

  4.  Cuando se le solicite, concluya y vuelva a iniciar el sistema.

      NOTAS:

      1) Durante la instalaci¢n de este controlador, se crean los
         archivos DISPLAY.LOG y DSPINSTL.LOG o se a§aden al directorio
         OS2\INSTALL. Estos archivos identifican los archivos del sistema
         de OS/2 que se han actualizado e indican si la instalaci¢n fue
         satisfactoria y, en caso negativo, los motivos de que no lo
         fuera. El contenido de estos archivos puede ser £til si necesita
         comunicar un problema de instalaci¢n a IBM.

      2) Quiz† se le pregunte si desea sobregrabar ciertos archivos en los
         que el archivo destino es m†s reciente que el archivo origen. En
         general, debe responder S÷ a todas las preguntas, a menos que
         anteriormente haya experimentado problemas espec°ficos con el
         controlador y estÇ reinstal†ndolo.








                CONTROLADORES DE DISPOSITIVO GRADD OS2                 P†gina 9

  5.  DespuÇs de rearrancar el sistema, efect£e los pasos siguientes para
      configurar correctamente la pantalla actual y seleccione una
      resoluci¢n y cadencia de refresco adecuadas.

      a.  Abra la carpeta Sistema OS/2.
      b.  Abra la carpeta Configuraci¢n del sistema.
      c.  Abra el objeto Sistema.
      d.  Cuando aparece el cuaderno Valores, seleccione la pesta§a
          Pantalla. A continuaci¢n, vaya a la p†gina 2 de Pantalla.
      e.  Se da soporte a los protocolos 1 y 2B de DDC (Display Data
          Channel) VESA** para la detecci¢n autom†tica de pantallas DDC.
          Si su pantalla es compatible DDC, la p†gina 2 de Pantalla
          debe mostrar una descripci¢n de su pantalla. Si su pantalla no
          es compatible DDC, seleccione su pantalla en la lista que aparece
          en esta p†gina 2.
      f.  Vuelva a la p†gina 1 de Pantalla y seleccione una resoluci¢n y
          una cadencia de refresco. Seg£n el adaptador y la pantalla,
          quiz† no pueda seleccionar la cadencia de refresco.
      g.  Cierre el cuaderno Valores.
      h.  Concluya y vuelva a iniciar el sistema.

































                CONTROLADORES DE DISPOSITIVO GRADD OS2                P†gina 10

  INSTALACI‡N EN UN ENTORNO CID
  _____________________________

  NOTAS:

  1.  Cree un directorio en el servidor (por ej., X:\BBS\GRADD) y extraiga
      los archivos de instalaci¢n del archivo de extracci¢n autom†tica
      GRADDBB*.EXE en el directorio de instalaci¢n X:\BBS\GRADD, tal como
      se describe en la secci¢n "Extracci¢n".

  2.  Debe haber instalado satisfactoriamente OS/2 en el cliente
      utilizando el mÇtodo CID (Configuraci¢n, Instalaci¢n y Distribuci¢n).  

  3.  Para configurar la selecci¢n de pantalla, la resoluci¢n y la
      cadencia de refresco, consulte el archivo "README.CFG" de este
      paquete.

  Para instalar un controlador de dispositivo utilizando CID, utilice la
  informaci¢n siguiente para modificar el archivo de mandatos LCU. El
  ejemplo siguiente instala el GRADD ATI Mach64/Rage (M64GRADD).

  NOTA:  La siguiente informaci¢n es un ejemplo a modo de gu°a.
         Su archivo de mandatos LCU puede ser distinto.

    /*****************************************************/
    /*       SECCI‡N DE DATOS DE PRODUCTO LCU            */
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
    /*         NÈMERO DE PROGRAMAS INSTALADOS EN LA      */
    /*             SECCI‡N DE DATOS DE PRODUCTO          */
    /*****************************************************/

    NUM_INSTALL_PROGS = 15






               CONTROLADORES DE DISPOSITIVO GRADD OS2                 P†gina 11

    /*****************************************************/
    /*               SECCI‡N DE INSTALACI‡N              */
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
    /*              SECCI‡N DE LA RUTINA                  */
    /*  La informaci¢n siguientes ya debe existir en el   */
    /*  archivo de mandatos LCU.                          */
    /******************************************************/
                         .
                         .
                         .
    RebootAndGotoState:
      parse arg new_state, other

      rc2 = SetState(new_state, 'RebootAndGotoState', 1)    /* Establecer el */
                                                   /* estado para que pase a */
                                                            /* OVERALL_STATE */

      Call SaveStates                         /* Guardar las vars de entorno */

      Call Reboot                                  /* Rearrancar el sistema  */

      return

                          .
                          .
                          .

    /*****************************************************/
    /*          FIN DE LA INFORMACI‡N LCU A A•ADIR       */
    /*****************************************************/











                CONTROLADORES DE DISPOSITIVO GRADD OS2                P†gina 12

  ARREGLOS APAR INCLUIDOS EN ESTE CONTROLADOR
  ___________________________________________

  Algunos APAR arreglados quiz† no aparezcan en la lista. Si ha recibido
  este controlador a travÇs del canal de soporte de IBM OS/2 y el APAR que
  ha solicitado no se encuentra listado, instale el controlador ya que el
  APAR solicitado est† incluido.














































                               (Fin del documento)
