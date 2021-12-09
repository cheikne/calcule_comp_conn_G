import numpy as np
import matplotlib.pyplot as plt

def regLin_np(x, y):
    # conversion en array numpy
    x = np.array(x)
    y = np.array(y)
    # nombre de points
    npoints = len(x)
    # calculs des parametres a et b
    a = (npoints * (x*y).sum() - x.sum()*y.sum()) / (npoints*(x**2).sum() - (x.sum())**2)
    b = ((x**2).sum()*y.sum() - x.sum() * (x*y).sum()) / (npoints * (x**2).sum() - (x.sum())**2)
    # renvoie des parametres
    return a, b


x = [45, 50, 55, 60, 65, 70, 75, 80, 85, 90]
y = [43, 45, 48, 51, 55, 57, 59, 63, 66, 68]

# x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# y = [2.1, 2.9, 4.2, 5.05, 5.85, 6.95, 8.1, 9.0, 10.2, 10.9]

a, b = regLin_np(x, y)
print("a = {:8.3f}\nb = {:8.3f}".format(a, b)) 


plt.rcParams['figure.figsize'] = 10, 10

plt.plot(x, y, "bo", label="donnees") 
plt.plot(
    [x[0], x[-1]],                  
    [a * x[0] + b, a * x[-1] + b],  
    "r-",                           
    label="regression")             
plt.xlabel("x")
plt.ylabel("y") 
plt.xlim(0, 100)


plt.show()