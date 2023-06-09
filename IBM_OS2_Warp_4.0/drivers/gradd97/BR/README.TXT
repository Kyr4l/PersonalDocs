                DRIVERS DE DISPOSITIVO GRADD DO OS/2                                P�gina 1

  EXTRA��O
  __________

  Para configurar o diret�rio de instala��o do driver GRADD Graphic BBS, proceda da seguinte
  maneira:

  1.  Abra uma tela inteira do OS/2 ou uma sess�o de janela do OS/2.

  2.  Antes de executar o arquivo zip de auto extra��o RADDBB*.EXE (o nome exato
      depende do n�mero de constru��o do release), altere o diret�rio atual
      para o "diret�rio de instala��o" em que voc� deseja armazenar os arquivos de
      instala��o do driver Graphics BBS. Sugerimos C:\BBS\GRADD.
      No prompt de comando do OS/2, digite os seguintes comandos:

      C:
      MD C:\BBS
      MD C:\BBS\GRADD
      CD C:\BBS\GRADD

  3.  Utilize as op��es "-DIR" e "-OVER" no arquivo zip de auto extra��o GRADDBB*.EXE
      para criar a �rvore do diret�rio de instala��o. Primeiramente, conv�m voc� copiar
      o arquivo zip de auto extra��o GRADDBB*.EXE para o diret�rio de
      instala��o. Em seguida, no prompt de comando do OS/2, digite o seguinte comando:

      GRADDBB* -DIR -OVER

  4.  Utilize SET LANG= para definir o idioma correto. O idioma j� pode estar
      corretamente definido em seu CONFIG.SYS.  Se n�o estiver, no prompt de comando do OS/2,
      digite estes comandos SET LANG= para selecionar seu idioma:

      SET LANG=ar_AA    para �rabe -(ingl�s com formata��o gr�fica �rabe)
      SET LANG=pt_BR    para Brasil
      SET LANG=zh_CN    para chin�s simplificado
      SET LANG=de_DE    para alem�o
      SET LANG=da_DK    para Dinamarca
      SET LANG=es_ES    para Espanha
      SET LANG=el_GR    para Gr�cia (ingl�s com formata��o gr�fica grega)
      SET LANG=fi_FI    para Finl�ndia
      SET LANG=fr_FR    para Fran�a
      SET LANG=iw_IL    para Israel (ingl�s com forma��o gr�fica grega)
      SET LANG=it_IT    para It�lia
      SET LANG=jp_JP    para Jap�o
      SET LANG=ko_KR    para Coreano
      SET LANG=nl_NL    para Holanda
      SET LANG=no_NO    para Noruega
      SET LANG=sv_SE    para Su��a
      SET LANG=zh_TW    para Taiwan
      SET LANG=en_US    para ingl�s (padr�o)

      Cada idioma possui sua pr�pria c�pia deste arquivo README.TXT, a qual pode
      se traduzida do ingl�s, bem como outros arquivos dependentes de idioma.



                DRIVERS DE DISPOSITIVO GRADD DO OS/2                                P�gina 2

  5.  O comando SETUP no diret�rio de instala��o pode ser utilizado
      para instalar os arquivos dependentes de idioma apropriados e as informa��es
      de configura��o a partir do diret�rio de instala��o em sua unidade de reinicializa��o.
      Executar SETUP sem quaisquer op��es fornecer� uma ajuda sint�tica sobre o
      comando SETUP (descrito posteriormente em detalhes neste arquivo LEIA ME)
      em seu idioma selecionado ou padr�o.  Para ver esta ajuda, no prompt de comando do
      OS/2, digite o seguinte comando:

      SETUP


  CONTE�DO
  ________

  Extra��o   . . . . . . . . . . . . . . . . . . .  1
  Conte�do do Pacote . . . . . . . . . . . . . . . .  2
  Licen�as e Garantias . . . . . . . . . . . . . . .  3
  Marcas . . . . . . . . . . . . . . . . . . . . . .  3
  Drivers de Dispositivo de Placa Gr�fica (GRADD). . . .  4
  Recursos Suportados. . . . . . . . . . . . . . . .  4
  Drivers Inclu�dos. . . . . . . . . . . . . . . . .  4
  Resolu��es Suportadas  . . . . . . . . . . . . . .  5
  Compatibilidade. . . . . . . . . . . . . . . . . .  5
  Restri��es Funcionais  . . . . . . . . . . . . . .  5
  Como Copiar Disquetes  . . . . . . . . . . . . . .  6
  Instala��o   . . . . . . . . . . . . . . . . . . .  7
  Etapas Preliminares. . . . . . . . . . . . . . . .  7
  Como Definir seu V�deo para o Modo VGA. . . . . . . .  7
  Instala��o Assistida   . . . . . . . . . . . . . .  7
  Instala��o em um Ambiente CID  . . . . . . . . . . . 10
  Corre��es APAR Inclu�das neste Driver. . . . . . . . 12


  CONTE�DO DO PACOTE
  ________________

  Este pacote cont�m o seguinte:

  o   Drivers de dispositivo gr�fico GRADD do OS/2*   

  o   Este arquivo README.TXT, formatado para exibi��o em sua tela.
      Voc� pode:
      -   Utilizar o �ndice e os n�meros de p�gina (que aparecem na parte superior
          de cada p�gina) para ajud�-lo a localizar os t�picos espec�ficos.
      -   Utilizar a op��o Procurar no menu Editar do OS/2 System Editor para
          ajud�-lo a localizar as informa��es espec�ficas.
      -   Imprimir o arquivo.







                DRIVERS DE DISPOSITIVO GRADD DO OS/2                                P�gina 3

  LICEN�AS E GARANTIAS
  _______________________

  LEIA OS SEGUINTES TERMOS E CONDI��ES.
  A UTILIZA��O DOS DRIVERS DE DISPOSITIVO GRADD DO OS/2
  INDICA QUE O CLIENTE ACEITA OS SEGUINTES TERMOS E CONDI��ES:

  o   O CLIENTE DEVE SER, E CONCORDA EM SER, A PRIMEIRA PESSOA A RECEBER LICEN�A DO OS/2.
  o   O CLIENTE PODE FAZER C�PIAS DOS DRIVERS DE DISPOSITIVO GRADD DO OS/2
      IGUAL AO N�MERO DE C�PIAS LICENCIADAS DO OS/2 QUE O CLIENTE POSSUI.
  o   TODOS OS OUTROS TERMOS E CONDI��ES DO ACORDO DE LICEN�A DO OS/2
      APLICAM-SE A ESSES DRIVERS DE DISPOSITIVO GRADD DO OS/2;
      NO ENTANTO, ISTO N�O ESTENDE NENHUMA GARANTIA DESCRITA NESSE ACORDO.
  o   LEIA ESTE DOCUMENTO INTEIRO ANTES DE INICIAR A INSTALA��O DO DRIVER DE DISPOSITIVO
      GR�FICO.

  A IBM RENUNCIA A TODAS AS OUTRAS GARANTIAS, EXPRESSAS OU IMPL�CITAS, INCLUINDO
  MAS N�O LIMITANDO, AS GARANTIAS IMPL�CITAS DE MERCADO OU ADEQUA��O
  A UM DETERMINADO OBJETIVO COM RELA��O �S INFORMA��ES CONTIDAS NESTE DOCUMENTO.
  AO FORNECER ESTE DOCUMENTO, A IBM N�O CONCEDE NENHUMA LICEN�A SOBRE PATENTES OU DIREITOS AUTORAIS
  RELACIONADOS.

  A INTERNATIONAL BUSINESS MACHINES CORPORATION POSSUI DIREITOS AUTORAIS SOBRE ESSES DRIVERS.
  APLICAM-SE TODAS AS RESTRI��ES APROPRIADAS.


  MARCAS
  __________

  Os termos a seguir assinalados com um asterisco (*) neste arquivo, s�o marcas
  ou marcas registradas da IBM Corporation nos Estados Unidos e/ou
  em outros pa�ses:

      Distributed Console Access Facility (DCAF, Recurso de Acesso ao Console Distribu�do)
      IBM
      MMPM/2
      OS/2
      Presentation Manager
      PS/ValuePoint
      WIN-OS/2

  Os termos a seguir, assinalados com dois asteriscos (**) neste arquivo, s�o
  marcas ou marcas registradas de outras empresas, conforme a seguir:

  MARCAS                 PROPRIET�RIO
  __________               __________________________

  ATI, Mach64, Rage        ATI Technologies, Inc.
  CorelDRAW                Corel Corporation
  Millenium, Mystique      Matrox
  Windows                  Microsoft Corporation
  S3, Trio, Virge          S3 Incorporated
  VESA                     Video Electronics Standards Association

                DRIVERS DE DISPOSITIVO GRADD DO OS/2                                P�gina 4

  DRIVERS DE DISPOSITIVO DE PLACA GR�FICA (GRADD)
  _______________________________________

  O GRADD � uma arquitetura que facilita o suporte aos novos
  hardwares gr�ficos � medida em que se tornam dispon�veis. O desempenho de aplicativos
  PM avan�ado pode ser realizado ao utilizar drivers GRADD acelerados.

  Diversos drivers GRADD novos e atualizados est�o inclu�dos neste pacote.


  RECURSOS SUPORTADOS
  __________________

  Os drivers de dispositivo GRADD fornecem suporte perfeito para gr�fico de v�deo
  acelerado e desacelerado e profundidade e resolu��es de cores avan�adas.
  Eles est�o de acordo com o modelo de mem�ria plana do OS/2 e s�o desenvolvidos
  para funcionar como drivers de v�deo gr�fico de 32 bits do Presentation Manager*
  sob o mecanismo de gr�fico de 32 bits do OS/2. 


  DRIVERS INCLU�DOS
  ________________

  S�o inclu�dos os seguintes drivers GRADD acelerados:

      * ATI Mach64/Rage GRADD           (M64GRADD)
      * Chips & Technology 6555X GRADD  (CHPGRADD)
      * Matrox Millenium/Mystique GRADD (MGAGRADD)
      * NeoMagic GRADD                  (NMGRADD)
      * S3 86x/96x/Trio GRADD           (S3GRADD)
      * S3 Virge/Trio3D GRADD           (S3DGRADD)

  Est� inclu�do tamb�m o suporte ao VGA e ao SVGA gen�rico.

      * Video Graphics Array GRADD      (VGAGRADD)
      * Generic SVGA GRADD              (GENGRADD)

  Se um GRADD acelerado ou driver PM n�o estiver inclu�do em sua placa,
  GENGRADD pode fornecer suporte DESACELERADO para gr�fico de v�deo em resolu��es
  avan�adas e profundidades de cores. GENGRADD funcionar� com a maioria das placas
  que incluem um BIOS compat�vel com VESA; e o desempenho, que variar�
  dependendo da configura��o do sistema, n�o ser� t�o bom quanto um driver
  acelerado.











                DRIVERS DE DISPOSITIVO GRADD DO OS/2                                P�gina 5

  RESOLU��ES SUPORTADAS
  _____________________

  As resolu��es suportadas e as profundidades de cores dependem de placas e variar�o
  dependendo da quantidade de mem�ria gr�fica e da implementa��o da placa.


  COMPATIBILIDADE
  _____________

  Esses drivers de dispositivo atualmente s�o compat�veis com:

        Todas as vers�es do OS/2 3.0  com n�vel de pacote de corre��o 35 ou posterior.
        Todas as vers�es do OS/2 4.0 com n�vel de pacote de corre��o 5 ou posterior
        Todas as vers�es do OS/2 Warp Server para e-business

  O comando de instala��o SETUP rejeita instala��es nas vers�es ou nos n�veis de pacote
  de corre��o inaceit�veis do OS/2.

  Tamb�m, depois de instalar esses drivers gr�ficos, se posteriormente voc� desejar
  desinstalar qualquer Pacote de Corre��o necess�rio para um n�vel de Pacote de Corre��o anterior ao Pacote de Corre��o 5 (OS/2 4.0)
  ou o Pacote de Corre��o 35 (OS/2 3.0), voc� deve, primeiro, restaurar seu computador para VGA
  para remover os drivers GRADD BBS.

  Diferentemente da utiliza��o das mensagens em ingl�s, os drivers SBCS instalados para idiomas SBCS
  n�o existentes na lista SET LANG= da se��o intitulada "Extra��o", acima,
  s�o corretamente funcionais para o idioma escolhido.

  RESTRI��ES FUNCIONAIS
  _______________________

  As restri��es atuais conhecidas incluem o seguinte:

  1) A IBM testou muitos computadores e placas incorporando os dispositivos
     gr�ficos para os drivers acelerados listados. O teste foi feito apenas em
     computadores com gr�ficos de barramento PCI, embora um barramento PCI n�o seja
     um requisito espec�fico.

  2) O teste r�pido nas placas de gr�fico do barramento ISA funcionaram. Entretanto durante a tentativa
     de restaurar seu driver "PM" anterior, algumas vezes houve um problema ao
     detectar a placa. Desligar o computador para inicializar
     a placa ap�s restaurar o VGA deve resolver o problema.

     As placas de Barramento ATI Mach 64 ISA n�o s�o suportadas atualmente.

  3) Todos os drivers GRADD, exceto o VGAGRADD, requerem BIOS de v�deo compat�vel com VESA**
     (Vers�o 1.2 ou posterior) ou um arquivo SVGADATA.PMI apropriado. Para outras
     placas mais antigas n�o VESA com suporte ao driver SVGA PM da IBM, GENGRADD pode
     ser freq�entemente utilizado como um driver SVGA alternativo, definido pelo seguinte comando de
     instala��o SETUP dos drivers GRADD Graphics BBS com o comando
     "SVGA ON INIT" de um prompt de tela inteira do OS/2 ou do DOS, para criar
     um arquivo SVGADATA.PMI, antes de reinicializar para utilizar os drivers GRADD.


                DRIVERS DE DISPOSITIVO DO OS/2                               P�gina 6

  4) M64GRADD e S3GRADD: Ocorreram problemas com determinadas placas
     com o suporte ao cursor de hardware.  Os sintomas variam do ponteiro
     que aparece como um ret�ngulo preto s�lido � corrup��o que ocorre na tela
     onde o cursor passa.  Foi fornecida uma solu��o alternativa a qual for�a a utiliza��o
     de um cursor de software.  A inclus�o da seguinte linha no CONFIG.SYS
     e a reinicializa��o devem resolver o problema:

        SET HW_CURSOR=OFF

  Voc� pode encontrar futuras corre��es e atualiza��es para o GRADD e outros
  drivers de dispositivo gr�fico atrav�s da internet em:

     http://service5.boulder.ibm.com/pspfixpk.nsf

  Na URL acima, selecione "Todos os pacotes de corre��o - Por Produto" e procure
  o "GRADD".


  COPIANDO PARA DISQUETES
  ____________________


  Uma vez extra�do para a �rvore do diret�rio de instala��o, voc� poder� colocar os arquivos
  de instala��o do driver GRADD em disquetes para fins de backup ou transporte
  utilizando o comando OS/2 BACKUP:

  1. Abra uma tela inteira ou uma sess�o de janela do OS/2. 

  2. Digite "BACKUP C:\BBS\GRADD A: /S" e pressione a tecla Enter.  

  3. Rotule e insira tantos disquetes pr�-formatados quantos forem necess�rios.

  4. Voc� pode utilizar o BACKUP DE AUX�LIO para obter mais informa��es sobre o comando BACKUP.  

  Para restaurar os mesmos disquetes para o mesmo computador ou para um computador diferente:  

  1. Abra uma tela inteira ou uma sess�o de janela do OS/2. 

  2. Digite "RESTORE A: C:\BBS\GRADD /N /S" e pressione a tecla Enter.

  3. Insira os disquetes em que foi feito o backup anteriormente, conforme necess�rio.

  4. Voc� pode utilizar RESTAURAR AUX�LIO para obter mais informa��es sobre o comando RESTORE.  

  A IBM n�o forneceu nada para instalar esses drivers diretamente dos
  disquetes.








                DRIVES DE DISPOSITIVO GRADD DO OS/2                               P�gina 7

  INSTALA��O
  ____________

  ETAPAS PRELIMINARES
  _________________

  As etapas a seguir preparam seu computador antes de instalar os drivers de
  dispositivo GRADD:

  1.  Outros aplicativos, particularmente os aplicativos WIN-OS/2, devem estar fechados
      para que a instala��o do driver de dispositivo possa substituir os arquivos do driver,
      os quais um aplicativo aberto pode ter bloqueado como apenas para leitura.

  2.  Se voc� instalou um driver SVGA anteriormente, retorne para a resolu��o VGA
      utilizando os procedimentos da se��o neste LEIA ME intitulada "Como Definir Seu
      V�deo para o Modo VGA".


  COMO DEFINIR SEU V�DEO PARA O MODO VGA
  ________________________________

  Se seu v�deo est� no modo sincronizado e voc�, por outro lado tiver um Desktop n�o utiliz�vel,
  recomenda-se utilizar a Instala��o Seletiva para definir seu v�deo para o modo VGA.
  Caso contr�rio, utilize os procedimentos a seguir para retornar para o modo VGA.

      1.  Ligue o computador. Se seu computador j� estiver ligado, desligue-o ou
          pressione Ctrl+Alt+Del para reinici�-lo.
      2.  Quando uma pequena caixa branca aparecer no canto superior esquerdo da
          tela, pressione Alt+F1.
      3.  Quando a tela Op��es de Recupera��o for exibida, pressione a tecla de fun��o F3
          ou a letra "V" dependendo da vers�o do sistema operacional.
      4.  Execute a Instala��o Seletiva para alterar os drivers do Windows.

  Depois de reinicializar o computador, sua placa de v�deo ser� restaurada e poder�
  funcionar no modo VGA.  Se voc� desejar instalar uma nova placa de v�deo ou um driver de
  dispositivo gr�fico, consulte o cap�tulo intitulado "Procedimentos de V�deo" no Guia do
  Usu�rio para OS/2 Warp.


  INSTALA��O ASSISTIDA
  _____________________

  Para fazer uma instala��o assistida dos Drivers GRADD a partir do diret�rio de instala��o
  do arquivo zip de auto extra��o, proceda da seguinte maneira:

  1.  Abra uma tela inteira do OS/2 ou uma sess�o de janela do OS/2.

  2.  Antes de executar o arquivo SETUP.CMD extra�do, utilize SET LANG= para
      definir o idioma correto. O idioma pode estar corretamente definido em seu
      CONFIG.SYS.  A se��o deste LEIA ME intitulado "Extra��o" fornece
      exemplos.



                DRIVES DE DISPOSITIVO GRADD DO OS/2                                P�gina 8

  3.  No prompt de comando do OS/2, digite o seguinte comando para copiar
      todos os arquivos necess�rios para a unidade de reinicializa��o do OS/2:

          <SrcPath>SETUP xxx [<SrcPath>] [<BootDrive>] [/u]

      Onde:
          xxx � um de:

              "ATI"   - ATI Mach64/Rage Family GRADD
              "CHP"   - Chips & Technology 6555x Family GRADD
              "DYN"   - Dynamically Selected GRADD
              "GEN"   - Generic VESA Unaccelerated GRADD
              "MGA"   - Matrox Millenium & Mystique Family GRADD
              "NM"    - NeoMagic 2090/2093/2097/2160/2200/2360 Family GRADD
              "S3"    - S3 86x/96x/Trio Family GRADD
              "VGA"   - Video Graphics Array (VGA) GRADD
              "VIRGE" - S3 Virge/Trio3D Family GRADD

          <SrcPath> para SETUP � necess�rio se SETUP n�o estiver no diret�rio
                      atual.

          [<SrcPath>] o par�metro � opcional (requerido se o pr�ximo par�metro
                      for especificado) e � o diret�rio de instala��o.

          [<BootDrive>] � opcional e � a unidade onde o OS/2 est� instalado.

          [/u] � opcional e indica uma instala��o n�o assistida como para as
               instala��es CID.  N�o � necess�rio um arquivo de resposta CID.

      Em seguida, pressione Enter.

  4.  Quando for solicitado a executar tal fun��o, encerre e, em seguida reinicie o computador.

      NOTAS:

      1) Durante a instala��o deste driver, os arquivos DISPLAY.LOG e DSPINSTL.LOG
         s�o criados ou inclu�dos no diret�rio OS2\INSTALL.  Estes arquivos
         identificam os arquivos do sistema OS/2 que foram atualizados e indicam
         se a instala��o foi bem sucedida e as raz�es se houver falha. O
         conte�do destes arquivos podem ser �teis se voc� precisar relatar um
         problema de instala��o para a IBM.

      2) Voc� pode ser avisado sobre a possibilidade de querer sobrepor determinados arquivos
         onde o arquivo de destino � mais recente do que o arquivo fonte. Em geral, voc� deve
         responder SIM a todos os prompts a menos que tenha tido, anteriormente,
         problemas espec�ficos com o driver e esteja reinstalando-o.








                DRIVERS DE DISPOSITIVO GRADD OS/2                               P�gina 9

  5.  Depois de reinicializar o computador, proceda da seguinte maneira para fazer a configura��o
      correta para seu v�deo atual e selecione uma resolu��o e uma freq��ncia
      de renova��o apropriadas:

      a.  Abra a pasta Sistema OS/2.
      b.  Abra a pasta Configura��o do Sistema.
      c.  Abra o objeto Sistema.
      d.  Quando o bloco de notas Defini��es for exibido, selecione a tabula��o Tela.
          Em seguida, v� para a P�gina 2 da Tela.
      e.  Os protocolos Display Data Channel (DDC, Canal de Dados de V�deo) 1 e 2B VESA** s�o suportados
          para detectar automaticamente os v�deos DDC.
          Se seu v�deo for compat�vel com DDC, a P�gina 2 da Tela dever� mostrar
          uma descri��o de seu v�deo.
          Se seu v�deo n�o for compat�vel com DDC,
          selecione-o na lista de v�deos na P�gina 2 da Tela.
          Se seu v�deo n�o estiver na lista, selecione Padr�o.
      f.  Retorne para a P�gina 1 da Tela e selecione uma resolu��o e uma freq��ncia de renova��o.
          Dependendo de sua placa e v�deo, as freq��ncias de renova��o podem
          n�o ser selecion�veis.
      g.  Feche o bloco de notas Defini��es.
      h.  Encerre e reinicie o computador.

































                DRIVERS DE DISPOSITIVO GRADD DO OS/2                               P�gina 10

  COMO INSTALAR EM UM AMBIENTE CID
  _______________________________

  NOTAS:

  1.  Crie um diret�rio no servidor (por exemplo, X:\BBS\GRADD) e extraia os
      arquivos de instala��o do arquivo GRADDBB*.EXE de auto extra��o para o
      diret�rio de instala��o X:\BBS\GRADD, conforme descrito na se��o
      "Extra��o".

  2.  O OS/2 deve estar bem-sucedidamente instalado no cliente, utilizando o m�todo
      CID (Distribui��o de Instala��o de Configura��o).

  3.  Para configurar a sele��o de v�deo, a resolu��o e a freq��ncia de renova��o, consulte
      o arquivo "README.CFG" neste pacote.

  Para instalar o driver de dispositivo que utiliza CID, utilize as seguintes informa��es para modificar
  seu arquivo de comandos LCU.  O exemplo a seguir instala o ATI Mach64/Rage GRADD
  (M64GRADD).

  NOTA:  As informa��es a seguir s�o utilizadas como orienta��o.
O arquivo de comandos LCU poder� ser diferente.

    /*****************************************************/
    /*           SE��O DE DADOS DO PRODUTO LCU          */
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
    /*         N�MERO DE PROGRAMAS CONFIGURADOS NA       */
    /*               SE��O DE DADOS DO PRODUTO           */
    /*****************************************************/

    NUM_INSTALL_PROGS = 15






                DRIVERS DE DISPOSITIVO GRADD DO OS/2                        P�gina 11

    /*****************************************************/
    /*                  SE��O DE INSTALA��O              */
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
    /*                SE��O DE ROTINA                     */
    /*  As seguintes informa��es j� devem existir no      */
    /*  arquivo de comandos LCU.                             */
    /******************************************************/
                         .
                         .
                         .
    RebootAndGotoState:
      parse arg new_state, other

      rc2 = SetState(new_state, 'RebootAndGotoState', 1)    /* Set the state */
                                                            /*  to go to in  */
                                                            /* OVERALL_STATE */

      Chamada SaveStates                           /* Save the environment vars */

      Chamada Reboot                               /* Reboot the computer */

      retornar

                          .
                          .
                          .

    /*****************************************************/
    /*   FIM DAS INFORMA��ES DE LCU A SEREM INCLU�DAS    */
    /*****************************************************/











                DRIVERS DE DISPOSITIVO GRADD DO OS/2                              P�gina 12

  CORRE��ES APAR INCLU�DAS NESTE DRIVER
  __________________________________

  Alguns APARs corrigidos podem n�o estar listados. Se voc� recebeu este driver
  atrav�s do canal de suporte do IBM OS/2, seu APAR solicitado n�o ser� listado.
  Instale o driver, � medida em que seu APAR solicitado � inclu�do.














































                                (Fim do Documento)
