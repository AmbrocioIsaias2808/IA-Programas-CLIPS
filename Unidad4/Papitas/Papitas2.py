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


# In[29]:


df = pd.read_csv('valores2.csv')

target = np.asarray(df['categoria'])

data = np.asarray(df.drop('categoria', axis=1))

feature_names = ['largo', 'ancho', 'area', 'perimetro']
                         # 0= Pringles   | 1= Sabritas   |  2= Ruffles
target_names = np.array(['Pringles',     'Sabritas',        'Ruffles']); 

dataset={
    'data'           : data,
    'target'         : target,
    'target_names'   : target_names,
    'feature_names'  : feature_names
}

print("Data shape: {}".format(data.shape))
print("Targets shape: {}".format(target.shape))

#print("Data shape: {}".format(data.shape))
#print("Targets shape: {}".format(data.shape))


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


# In[30]:


#Definimos nuestra instancia desconocida
X_new = np.array([[6.2,5.7,27.76,37.40 ]])  #p
#X_new = np.array([[4.2,4.0,13.19 ,25.76 ]]) #r
#X_new = np.array([[2.1,1,1.65 ,10.05 ]]) #s
print("X_new.shape: {}".format(X_new.shape))

#Calculamos de que tipo será
prediction = knn.predict(X_new)
print("Prediction: {}".format(prediction))
print("Predicted target name: {}".format( dataset['target_names'][prediction]))


# In[31]:


print("Test set score: {:.2f}".format(100*knn.score(X_test, y_test)))
plt.show();

