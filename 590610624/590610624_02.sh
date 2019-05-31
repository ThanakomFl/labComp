#!/bin/bash

a=`cat mp3.txt`
b=`cat mp4.txt`
c=`cat all.txt`
d=`expr $a + $b + $c `
echo "<html>" | cat > index.html
echo "<head>" | cat >> index.html
echo "</head>" | cat >> index.html
echo "<body>" | cat >> index.html
echo "<table border = 1 >" | cat >> index.html
echo "<tr bgcolor = lightgray > " | cat >> index.html
echo "	<td><center> File Type </center></td> " | cat >> index.html
echo "	<td><center> Quantity </center></td> " | cat >> index.html
echo " </tr> " | cat >> index.html
echo " <tr>  " | cat >> index.html
echo "	<td><center> Music </center></td> " | cat >> index.html
echo "	<td><center>  $a </center></td>  " | cat >> index.html
echo " </tr> " | cat >> index.html
echo " <tr> " | cat >> index.html 
echo " <td><center> Movie </center></td> " | cat >> index.html
echo " 	<td><center> $b </center></td> " | cat >> index.html
echo "</tr>" | cat >> index.html
echo "<tr>" | cat >> index.html 
echo "	<td><center> Misc </center></td> " | cat >> index.html
echo "	<td><center> $c </center></td> " | cat >> index.html
echo "</tr>" | cat >> index.html
echo "<tr>  " | cat >> index.html
echo "	<td><center> Total </center></td> " | cat >> index.html
echo "	<td><center> $d </center></td> " | cat >> index.html
echo " </tr> " | cat >> index.html
echo " </table> " | cat >> index.html

echo " </center> " | cat >> index.html
echo "</body> " | cat >> index.html
echo " </html> " | cat >> index.html

rm *.txt
