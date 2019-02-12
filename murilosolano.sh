#!/bin/bash
#Criação das variaveis locais
USUARIO="senac"
TESTE01=$(test A == A ; echo $?)
TESTE02=$(test -f /etc/passwd ; echo $?)
USUARIOS=$(who | awk '{print $1}')

#Ultilizando o comando echo para imprimir na tela os valores das variaveis locais
#e variaveis especiais do Shell
echo "Impressão na tela..............: Olá, Mundo!!!"
echo "Nome do Usuario................: $USUARIO"
echo "Nome do arquivo de shell.......: $0"
echo "Quantidade de parâmetros.......: $#"
echo "Todos os parâmetros............: $*"
echo "Parâmetro 01...................: $1"
echo "Parâmetro 02...................: $2"
echo "Status do comando anterior.....: $?"
echo "PID do processo................: $$"
echo "Comando: test A == A...........: $TESTE01"
echo "Comando: test -f /etc/passwd...: $TESTE02"
echo "Usuarios Logados...............: $USUARIOS"

#utilizando o comando if para fazer os testes lógicos e
#validar o ambiente 
if [ $USUARIO == root ];
then 
	echo "Teste de usuario:..............: Usuario é root"
else	
	echo "Teste de usuario:..............: Usuario não é root"
fi	

#Ultilizando o comando if encadeado para aumentar a quantidade do
#testes lógicos
if [ $TESTE01 -eq 0 ];
then 
	echo "Resultado do comando test é....: VERDADEIRO"
elif [ $TESTE01 -eq 1 ];
then
	echo "Resultado do comando test é....: FALSO"
fi

#Ultilizando o comando case para fazer os testes lógicos
#e validar o ambiente 
case $TESTE01 in
	0) echo "Resultado do comando case é....: 0 - VERDADEIRO";;
	1) echo "Resultado do comando case é....: 1 - FALSO";;
	*) echo "Resultado do comando case é....: NÃO INDENTIFICADO"
esac	
	
#Ultilizando o comando read para receber os valores e
#fazer o teste logico com o case 
read -p "Digite as Letras: A, B ou C....: " LETRAS;
case $LETRAS in 
	A|a) echo "A letra digitada foi...........: $LETRAS";;
	B|b) echo "A letra digitada foi...........: $LETRAS";;
	C|c) echo "A letra digitada foi...........: $LETRAS";;
	*) echo "Letra digitada errada..........: $LETRAS"
esac 

#Ultilizando o laço de loop for para verificar os numeros digitados 
#junto com o comando read
read -p "uma sequêcia e numeros.........: " NUMEROS;
for VALORES in $NUMEROS;
do
	echo "Números passados para o loop..: $VALORES"
done

#Ultiliando o lao de loop for para gerar uma tabuada junto com o 
#comando read
read -p "Digite um número da tabuada...: " NUMERO;
for TABUADA in $(seq 0 10);
do
	echo "$NUMERO X $TABUADA.....: $(($TABUADA * $NUMERO))"
done	

#Utilizando o faço de loop while para alcançar os valores 
#desejados com o comando read
read -p "Digite um numero de inicio....: " INICIO;
read -p "Digite um numero de fim.......: " FIM;
while [ $INICIO -le $FIM ]; 
do 
	echo "Valor de sequencia númerica....: $INICIO"
	let INICIO=INICIO+1
done	










































