rem P��kaz provede XSLT transformaci XML pomoc� zvolen�ho XSL do v�stupn�ho souboru
rem Pou�it� procesor je Saxon9he
rem
java -cp . -jar c:\Apps\saxon9he.jar -expand:on -o:faktura-d.html faktura-pripojene_DTD.xml faktura_sablona-HTML-d.xsl
pause