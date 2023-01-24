# !/bin/bash
# Programa para revisar los tipos de operadores
# Autor: Juan Manuel

# !/bin/bash
# Programa para revisar los tipos de operadores
# Autor: Juan Manuel

numA=10
numB=4

echo -e "\n"
echo "Arithmetic Operators"
echo "Numbers: A=$numA and B=$numB"
echo -e "\nAdd A + B=" $((numA + numB))
echo "Subtract A - B=" $((numA - numB))
echo "Multiply A * B=" $((numA * numB))
echo "Divide A / B=" $((numA / numB))
echo "Residue A % B=" $((numA % numB))

echo -e "\nRelational operators"
echo "Numbers: A=$numA and B=$numB"
echo -e "\nA > B =" $((numA > numB))
echo "A < B =" $((numA < numB))
echo "A >= B =" $((numA >= numB))
echo "A <= B =" $((numA <= numB))
echo "A == B =" $((numA == numB))
echo "A != B =" $((numA != numB))

echo -e "\nAssignment operators"
echo "Numbers: A=$numA and B=$numB"
echo -e "\nAdd A += B =" $((numA += numB))
echo "Subtract A -= B =" $((numA -= numB))
echo "Multiply A *= B =" $((numA *= numB))
echo "Divide A /= B =" $((numA /= numB))
echo "Residue A %= B =" $((numA %= numB))
