import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import mglearn

df = pd.read_csv('Plantas.csv')

target = np.asarray(df['categoria'])

data = np.asarray(df.drop('categoria', axis=1))

feature_names = ['largo petalo', 'ancho petalo', 'largo hoja', 'ancho hoja']
                           
target_names = np.array(['Flor del Desierto',     'Corona de Cristo',        'Belen']); 

dataset={
    'data'           : data,
    'target'         : target,
    'target_names'   : target_names,
    'feature_names'  : feature_names
}

print("Data shape: {}".format(data.shape))
print("Targets shape: {}".format(target.shape))

from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(
    dataset['data'], dataset['target'], random_state=0)

print("X_train shape: {}".format(X_train.shape))
print("y_train shape: {}".format(y_train.shape))

print("X_test shape: {}".format(X_test.shape))
print("y_test shape: {}".format(y_test.shape))



# create dataframe from data in X_train
# label the columns using the strings in iris_dataset.feature_names
dataframe = pd.DataFrame(X_train, columns=dataset['feature_names'])
# create a scatter matrix from the dataframe, color by y_train
grr = pd.plotting.scatter_matrix(dataframe, c=y_train, figsize=(15, 15), marker='o',
 hist_kwds={'bins': 20}, s=60, alpha=.8, cmap=mglearn.cm3)

from sklearn.neighbors import KNeighborsClassifier
knn = KNeighborsClassifier(n_neighbors=1) #Nota: el parametro n_neighbors indica el numero de vecinos cercanos a considerar

knn.fit(X_train, y_train)

#Definimos nuestra instancia desconocida
X_new = np.array([[ 3, 2.5 ,5, 4 ]])
print("X_new.shape: {}".format(X_new.shape))

#Calculamos de que tipo será
prediction = knn.predict(X_new)
print("Prediction: {}".format(prediction))
print("Predicted target name: {}".format( dataset['target_names'][prediction]))

print("Test set score: {:.2f}".format(100*knn.score(X_test, y_test)))
plt.show();

