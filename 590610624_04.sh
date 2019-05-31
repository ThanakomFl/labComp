#!/bin/bash

    declare -a prices amounts names
    names=(`sort -k1 $1 | cut -d ',' -f1 | tr a-z A-Z`)
    prices=(`sort -k1 $1 | cut -d ',' -f2`)
    amounts=(`sort -k1 $1 | cut -d ',' -f3`)
    all_amounts=0
    for am in `sort -k1 $1 | cut -d ',' -f3`;
    do
        ((all_amounts+=$am))
    done
echo "<html>" | cat > index.html
echo "<head>" | cat >> index.html
echo "</head>" | cat >> index.html
echo "<body>" | cat >> index.html
echo "<table border = 1 >" | cat >> index.html
echo "<tr bgcolor = lightgray > " | cat >> index.html
echo "	<td><center> Product </center></td> " | cat >> index.html
echo "	<td><center> Quantity </center></td> " | cat >> index.html
echo "	<td><center> Price </center></td> " | cat >> index.html
echo " </tr> " | cat >> index.html   
    i=0
    j=1
    all_prices=0
      for row in `more $1 `;
    do
        ((all_prices+=`expr ${prices[$i]}*${amounts[$i]}`))
	echo "<tr > " | cat >> index.html
	echo "	<td><center> ${names[$i]} </center></td> " | cat >> index.html
	echo "	<td><center> ${amounts[$i]} </center></td> " | cat >> index.html
	echo "	<td><center> `expr ${prices[$i]} \* ${amounts[$i]}` </center></td> " | cat >> index.html
	echo " </tr> " | cat >> index.html
	((i++))
        ((j++))
    done

echo " <tr> " | cat >> index.html 
echo " <td><center> Total </center></td> " | cat >> index.html
echo " 	<td><center> $all_amounts </center></td> " | cat >> index.html
echo " 	<td><center> $all_prices </center></td> " | cat >> index.html
echo "</tr>" | cat >> index.html
echo " </table> " | cat >> index.html
echo " </center> " | cat >> index.html
echo "</body> " | cat >> index.html
echo " </html> " | cat >> index.html

mv index.html 590610624Expense.html
