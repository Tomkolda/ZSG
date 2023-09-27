rem Pøíkaz provede XSLT transformaci XML pomocí zvoleného XSL do výstupního souboru
rem Použitý procesor je Saxon9he
rem
java -cp . -jar c:\Apps\saxon9he.jar -expand:on -o:faktura-d.html faktura-pripojene_DTD.xml faktura_sablona-HTML-d.xsl
pause