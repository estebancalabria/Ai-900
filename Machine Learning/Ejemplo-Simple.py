# Si no encuentra el modulo hacer en una celda de codigo anterior pip install scikit-learn sin el ! adelante
# NO PONER !pip install scikit-learn COMO EN COLAB SINO DIRECTAMENTE pip install scikit-learn

# Paso 1: Importar
from sklearn.linear_model import LinearRegression

# Paso 2: Datos de ejemplo (nota -> horas de estudio)
# Notas: 2, 4, 6, 8, 10
# Horas estudiadas: 1, 2, 3, 4, 5
X = [[2], [4], [6], [8], [10]]  # Nota (input)
y = [1, 2, 3, 4, 5]             # Horas estudiadas (output)

# Paso 3: Crear y entrenar el modelo
modelo = LinearRegression()
modelo.fit(X, y)

# Paso 4: Hacer una predicción
nota_nueva = [[7]]
horas_estimadas = modelo.predict(nota_nueva)

print(f"Para una nota de 7, se estima que estudió {horas_estimadas[0]:.2f} horas.")
