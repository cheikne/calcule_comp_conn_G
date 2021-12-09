#!/usr/bin/python
import matplotlib.pyplot as plt

# Problème 1 

# Calculons la moyenne empirique
l = [0.499, 0.509, 0.501, 0.494, 0.498, 0.497, 0.504, 0.506, 0.502, 0.496, 0.495, 0.493, 0.507, 0.505, 0.503, 0.491]
s = 0 
for i in range(len(l)):
    s += l[i]
    print("Poids en kg", l[i])
    print("Somme courante: ", s)
print("La moyenne empirique est: ", s / len(l))

# Tracer l'histogramme des fréquences 

plt.hist(l, 10 ,edgecolor = 'white')
plt.title('Histogramme des fréquences')
plt.xlabel('valeur x')
plt.ylabel('valeur y')
plt.show()
