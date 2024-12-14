Escribe un script  findholes.sh, en shell (sh) para linux, que reciba un parámetro obligatorio, la extensión. Dado un conjunto de ficheros en el directorio actual con nombres de tres dígitos y acabados en la extensión, imprimirá uno o varios comandos para crear vacíos los ficheros que faltan.

Imaginemos que en el directorio actual he creado todos los ficheros posibles:

$> ls *.ext
000.ext
001.ext
...
999.ext
$> rm 003.ext 017.ext 024.ext
$> ./findholes.sh ext
touch 003.ext
touch 017.ext
touch 024.ext
$> ./findholes.sh ext    #alternativamente podría hacer esto también
touch 003.ext 017.ext 024.ext
