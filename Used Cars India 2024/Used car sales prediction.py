# -*- coding: utf-8 -*-
"""Untitled3.ipynb

Automatically generated by Colab.

Original file is located at
    https://colab.research.google.com/drive/1powfIumUVdirvYX14B0KSIUi42SdCBVo
"""

from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder, StandardScaler

df['reg_year'] = pd.to_datetime(df['reg_year'], format='%d-%m-%Y')

df['Year'] = df['reg_year'].dt.year
df['Month'] = df['reg_year'].dt.month
df['Day'] = df['reg_year'].dt.day
df = df.drop(columns = ['reg_year'])

x = df.drop('price',axis = 1)
y = df['price']

x_train , x_test , y_train,y_test = train_test_split(x,y,test_size = 0.2,random_state = 42)

y_train

scaler = StandardScaler()
x_train_scaled = scaler.fit_transform(x_train)
x_test_scaled = scaler.transform(x_test)

from sklearn.linear_model import LinearRegression
from sklearn.ensemble import RandomForestRegressor, GradientBoostingClassifier
from sklearn.tree import DecisionTreeRegressor
from sklearn.metrics import r2_score, mean_squared_error

models = {
    'LinearRegression':LinearRegression(),
    'RandomForestRegressor':RandomForestRegressor(),
    'GradientBoostingClassifier':GradientBoostingClassifier(),
    'DecisionTreeRegressor':DecisionTreeRegressor()
}

result = {}
for model_name, model in models.items():

    model.fit(x_train_scaled, y_train)

    y_pred = model.predict(x_test_scaled)

    r2 = r2_score(y_test, y_pred)
    RMSE = np.sqrt(mean_squared_error(y_test, y_pred))

    result[model_name] = {'R2_score':r2, 'RMSE':RMSE}
model_df = pd.DataFrame(result).T
print(model_df)