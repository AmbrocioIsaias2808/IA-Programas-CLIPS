#!/usr/bin/env python
# coding: utf-8

# # Vecino Más Cercano
# 
# **Elemento de estudio** 
# Papas fritas:
# * Pringles
# * Sabritas
# * Ruffles
# 
# **Razón**
# Para ser sincero tenia antojo y era una escusa perfecta. Y segundo, quise variar en los ejemplos a los que propablemente mis compañeros puedieran entregar.
# 
# **Factores de clasificación:**
# 
# * Largo (cm)
# * Ancho (cm)
# * Area (cm2)
# * Perimetro (cm)
# 
# En el caso del area se consideró la siguiente formula

# In[1]:


get_ipython().run_cell_magic('HTML', '', '<p align="center"><img src="https://www.universoformulas.com/imagenes/formulas/matematicas/geometria/calculos/ejemplo-area-elipse.jpg"></p>')


# Para el perimetro se considero esta otra formula:

# In[2]:


get_ipython().run_cell_magic('HTML', '', '<p align="center"><img src="https://latex.codecogs.com/gif.latex?\\large&space;Perimetro&space;\\approx&space;\\pi&space;\\left&space;[&space;3\\left&space;(&space;a+b&space;\\right&space;)-\\sqrt{\\left&space;(&space;3a+b&space;\\right&space;)\\left&space;(&space;a+&space;3b&space;\\right&space;)}&space;\\right&space;]"/></p>')


# In[3]:


get_ipython().run_cell_magic('HTML', '', '<img src="imagenPapitas.jpg" style="height:50%, width:50%" />')


# # Código

# In[4]:


import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import mglearn


# In[5]:


data= np.array([
                [6.6,5,25.92,36.62],
                [6.6,5,25.92 ,36.62 ],
                [7,5,27.49 ,37.96 ],
                [6.4,5,25.13 ,35.95 ],
                [6.7,4.8,25.26 ,36.38 ],
                [6.6,4.9,25.40 ,36.33 ],
                [6.5,4.8,24.50 ,35.70 ],
                [6.5,4.8,24.50 ,35.70 ],
                [7,4.8,26.39 ,37.39 ],
                [6.9,5,27.10 ,37.62 ],
                [6.8,5,26.70 ,37.29 ],
                [7,4.8,26.39 ,37.39 ],
                [6.6,5.2,26.95 ,37.20 ],
                [6.7,4.7,24.73 ,36.09 ],
                [6.5,4.8,24.50 ,35.70 ],
                [6.8,5,26.70 ,37.29 ],
                [6.7,4.8,25.26 ,36.38 ],
                [6.7,5.2,27.36 ,37.53 ],
                [6.9,4.7,25.47 ,36.77 ],
                [6.6,5.3,27.47 ,37.50 ],
                [6.6,5,25.92 ,36.62 ],
                [6.6,5,25.92 ,36.62 ],
                [6.9,5,27.10 ,37.62 ],
                [6.6,4.9,25.40 ,36.33 ],
                [6.8,4.9,26.17 ,37.00 ],
                [6.6,5,25.92 ,36.62 ],
                [6.8,5,26.70 ,37.29 ],
                [6.8,4.8,25.64 ,36.71 ],
                [6.7,4.7,24.73 ,36.09 ],
                [6.7,5,26.31 ,36.95 ],
                [6.4,4.7,23.62 ,35.08 ],
                [5.5,4.9,21.17 ,32.70 ],
                [6,4.9,23.09 ,34.33 ],
                [4.9,3.5,13.47 ,26.57 ],
                [4.3,4,13.51 ,26.08 ],
                [5,4.2,16.49 ,28.96 ],
                [5.3,4.1,17.07 ,29.65 ],
                [7,5.9,32.44 ,40.60 ],
                [4.1,4,12.88 ,25.45 ],
                [5.9,5,23.17 ,34.30 ],
                [5,4.3,16.89 ,29.26 ],
                [3.9,2.7,8.27 ,20.91 ],
                [4.3,3.7,12.50 ,25.17 ],
                [5.3,5.2,21.65 ,32.99 ],
                [3.4,2.6,6.94 ,18.93 ],
                [4.4,2.7,9.33 ,22.63 ],
                [5.1,4,16.02 ,28.69 ],
                [4.5,3.5,12.37 ,25.23 ],
                [4,2.4,7.54 ,20.42 ],
                [4.5,2.6,9.19 ,22.71 ],
                [5.6,4,17.59 ,30.37 ],
                [3.6,3,8.48 ,20.78 ],
                [4,2.7,8.48 ,21.25 ],
                [4.5,4,14.14 ,26.73 ],
                [5,4,15.71 ,28.36 ],
                [5.2,3.3,13.48 ,27.04 ],
                [3.6,2.7,7.63 ,19.89 ],
                [3.5,3.2,8.80 ,21.06 ],
                [4.8,3.2,12.06 ,25.38 ],
                [5.4,3.3,14.00 ,27.73 ],
                [4,3.3,10.37 ,22.99 ],
                [6.6,5.4,27.99 ,37.79 ],
                [6,5.5,25.92 ,36.15 ],
                [6.2,4.5,21.91 ,33.83 ],
                [6,5,23.56 ,34.63 ],
                [5.9,5,23.17 ,34.30 ],
                [3.7,3.1,9.01 ,21.40 ],
                [5,3.3,12.96 ,26.35 ],
                [6,4.6,21.68 ,33.45 ],
                [6.4,6,30.16 ,38.97 ],
                [5,3.5,13.74 ,26.91 ],
                [5.2,3.4,13.89 ,27.31 ],
                [5,4.7,18.46 ,30.48 ],
                [6.4,6,30.16 ,38.97 ],
                [6,5,23.56 ,34.63 ],
                [5,4.3,16.89 ,29.26 ],
                [3.8,3,8.95 ,21.44 ],
                [6,4.2,19.79 ,32.29 ],
                [7,5,27.49 ,37.96 ],
                [6.6,5.8,30.07 ,39.00 ],
                [3.2,2,5.03 ,16.55 ],
                [3.3,2,5.18 ,16.90 ],
                [8.4,4,26.39 ,40.19 ],
                [5,3.5,13.74 ,26.91 ],
                [5,5.5,21.60 ,33.01 ],
                [4,3,9.42 ,22.10 ],
                [4.1,2.8,9.02 ,21.87 ],
                [4,2.3,7.23 ,20.15 ],
                [6.6,6,31.10 ,39.61 ],
                [6.6,5.4,27.99 ,37.79 ]
            ]
    )

target = np.array([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
                   1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
                   ,2,2,2,2,2,2])
feature_names = ['largo', 'ancho', 'area', 'perimetro']
                         # 0= Pringles   | 1= Sabritas   |  2= Ruffles
target_names = np.array(['Pringles',     'Sabritas',        'Ruffles']); 


dataset={
    'data'           : data,
    'target'         : target,
    'target_names'   : target_names,
    'feature_names' : feature_names
}

print("Data shape: {}".format(data.shape))
print("Targets shape: {}".format(data.shape))


# Despues creamos las graficas:

# In[6]:


from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(
    dataset['data'], dataset['target'], random_state=0)

print("X_train shape: {}".format(X_train.shape))
print("y_train shape: {}".format(y_train.shape))

print("X_test shape: {}".format(X_test.shape))
print("y_test shape: {}".format(y_test.shape))


# In[7]:


# create dataframe from data in X_train
# label the columns using the strings in iris_dataset.feature_names
dataframe = pd.DataFrame(X_train, columns=dataset['feature_names'])
# create a scatter matrix from the dataframe, color by y_train
grr = pd.plotting.scatter_matrix(dataframe, c=y_train, figsize=(15, 15), marker='o',
 hist_kwds={'bins': 20}, s=60, alpha=.8, cmap=mglearn.cm3)


# In[8]:


from sklearn.neighbors import KNeighborsClassifier
knn = KNeighborsClassifier(n_neighbors=1) #Nota: el parametro n_neighbors indica el numero de vecinos cercanos a considerar


# In[9]:


knn.fit(X_train, y_train)


# In[19]:


#Definimos nuestra instancia desconocida
X_new = np.array([[6.2,5.7,27.76,37.40 ]])  #p
#X_new = np.array([[4.2,4.0,13.19 ,25.76 ]]) #r
#X_new = np.array([[2.1,1,1.65 ,10.05 ]]) #s
print("X_new.shape: {}".format(X_new.shape))

#Calculamos de que tipo será
prediction = knn.predict(X_new)
print("Prediction: {}".format(prediction))
print("Predicted target name: {}".format( dataset['target_names'][prediction]))


# In[20]:


print("Test set score: {:.2f}".format(100*knn.score(X_test, y_test)))
plt.show();

