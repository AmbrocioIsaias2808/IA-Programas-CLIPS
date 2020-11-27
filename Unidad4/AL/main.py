import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import mglearn

data= np.array([     
                    [11,   7, 17,2.7 ],
                    [10,6.5,19,3.0 ],
                    [8,6,17.5,2.8 ],
                    [9,7,17.5,2.8 ],
                    [8.3,5,16,2.5 ],
                    [7.5,6,17.2,2.7 ],
                    [11.2,6.7,19.5,3.1 ],
                    [11.5,6,17.8,2.8 ],
                    [11.1,5.5,16.9,2.7 ],
                    [9,6,17.8,2.8 ],
                    [11.3,5.5,18,2.9 ],
                    [10.4,5.5,15.5,2.5 ],
                    [10.9,7.5,17.3,2.8 ],
                    [9,6,18.5,2.9 ],
                    [8.2,6.3,17.6,2.8 ],
                    [8.9,7.1,17.3,2.8 ],
                    [8.5,4.9,16.3,2.6 ],
                    [11,6.5,19,3.0 ],
                    [10.9,5.3,16.5,2.6 ],
                    [8.9,5.9,17.4,2.8 ],
                    [11.2,5.4,17,2.7 ],
                    [10.2,5.2,15.6,2.5 ],
                    [8.1,5.4,13.5,2.1 ],
                    [10.4,5.5,15.5,2.5 ],
                    [10.9,7.5,17.3,2.8 ],
                    [9,6,18.5,2.9 ],
                    [8.2,6.3,17.6,2.8 ],
                    [8.9,7.1,17.3,2.8 ],
                    [11,7.2,17.3,2.8 ],
                    [6,9,25,4.0 ],
                    [6.5,6,20,3.2 ],
                    [6,5.5,18,2.9 ],
                    [7,7,22,3.5 ],
                    [11.5,8.5,22,3.5 ],
                    [8.5,6,18,2.9 ],
                    [10.5,6.5,19,3.0 ],
                    [10.5,8.5,21,3.3 ],
                    [6.3,9.4,24,3.8 ],
                    [6.4,6.1,21,3.3 ],
                    [6.3,5.5,18.4,2.9 ],
                    [7,7.3,20,3.2 ],
                    [11.3,8.3,21.5,3.4 ],
                    [11.2,8.2,21,3.3 ],
                    [10,8,19,3.0 ],
                    [9,8,18,2.9 ],
                    [8.5,7,20,3.2 ],
                    [10,6,18,2.9 ],
                    [6,6.5,17.5,2.8 ],
                    [11.5,9,24,3.8 ],
                    [11.5,8.5,22,3.5 ],
                    [8.5,6,18,2.9 ],
                    [10.5,6.5,19,3.0 ],
                    [10.5,8.5,21,3.3 ],
                    [6.3,9.4,24,3.8 ],
                    [11,8,21,3.3 ],
                    [11.3,8,20,3.2 ],
                    [10.5,8,19.5,3.1 ],
                    [9.5,8,18,2.9 ],
                    [8.5,7,20,3.2 ],
                    [8.5,8,21,3.3 ],
                    [6.5,7,20,3.2 ],
                    [5.5,6.5,17,2.7 ],
                    [5.5,6.4,19.5,3.1 ],
                    [6,6.5,20.5,3.3 ],
                    [7,6.7,21.5,3.4 ],
                    [6.5,6.6,20.5,3.3 ],
                    [6.7,6.5,15.5,2.5 ],
                    [5.5,6.2,17,2.7 ],
                    [5.7,6.5,20,3.2 ],
                    [6,7,16.5,2.6 ],
                    [6.3,6.5,18,2.9 ],
                    [6,6.5,18.5,2.9 ],
                    [6.4,6.9,19,3.0 ],
                    [5.9,6.3,18.7,3.0 ],
                    [6.9,6.6,21.4,3.4 ],
                    [6.5,6.7,15.5,2.5 ],
                    [5.5,6.3,18,2.9 ],
                    [5.5,6.2,17,2.7 ],
                    [5.7,6.5,20,3.2 ],
                    [6,7,16.5,2.6 ],
                    [6.3,6.5,18,2.9 ],
                    [6,6.5,18.5,2.9 ],
                    [6,7,20,3.2 ],
                    [6.4,6,19,3.0 ],
                    [5.6,6.4,19.5,3.1 ],
                    [6.6,6,16,2.5 ],
                    [5.5,6.3,18,2.9 ],
                    [5.5,6.2,17,2.7 ],
                    [5.7,6.5,20,3.2 ],
                    [6,7,16.5,2.6 ]
            ]
    )

target = np.array([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                   1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
                   2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2])


target_names = np.array(['Mante',     'Naranja',        'Manzana']);

feature_names = ['Alto', 'Ancho', 'Circunferencia', 'Radio']



dataset={
    'data'           : data,
    'target'         : target,
    'target_names'   : target_names,
    'feature_names' : feature_names
}

print("Data shape: {}".format(data.shape))
print("Targets shape: {}".format(data.shape))


from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(
    dataset['data'], dataset['target'], random_state=0)

print("X_train shape: {}".format(X_train.shape))
print("y_train shape: {}".format(y_train.shape))

print("X_test shape: {}".format(X_test.shape))
print("y_test shape: {}".format(y_test.shape))

dataframe = pd.DataFrame(X_train, columns=dataset['feature_names'])
grr = pd.plotting.scatter_matrix(dataframe, c=y_train, figsize=(15, 15), marker='o',
 hist_kwds={'bins': 20}, s=60, alpha=.8, cmap=mglearn.cm3)


from sklearn.neighbors import KNeighborsClassifier
knn = KNeighborsClassifier(n_neighbors=1)

knn.fit(X_train, y_train)



#instancia desconocida
X_new = np.array([[6.2,5.7,27.76,37.40 ]])
print("X_new.shape: {}".format(X_new.shape))

#Calculamos de que tipo será
prediction = knn.predict(X_new)
print("Prediction: {}".format(prediction))
print("Predicted target name: {}".format( dataset['target_names'][prediction]))

#Calculamos que tan precisa fue nuestra prediccion
print("Test set score: {:.2f}".format(knn.score(X_test, y_test)))
plt.show() #Mostramos los graficos

