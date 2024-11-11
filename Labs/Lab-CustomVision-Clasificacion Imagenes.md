# 🔍 Lab 3a: Clasificación de Imágenes con Azure Custom Vision

## 📝 Resumen de Pasos
1. Crear recurso en Azure Portal
2. Descargar imágenes de entrenamiento
3. Configurar proyecto en Custom Vision
4. Entrenar y probar el modelo
5. Publicar y consumir el modelo

## 🎯 Objetivo
Crear un modelo de clasificación de imágenes para identificar diferentes animales (elefante, jirafa, león) usando Azure Custom Vision.

## 🛠️ Pasos Detallados

### 1. Configuración Inicial
- 🌐 Ir a [Azure Portal](https://portal.azure.com)
- ➕ Crear un recurso de **Azure Custom Vision**
- 📋 Guardar las URLs y API Keys para uso posterior

### 2. Preparación de Datos
- 📥 Descargar imágenes de [https://aka.ms/animal-images](https://aka.ms/animal-images)
- 📂 Extraer el ZIP (contiene carpetas: elephant, giraffe, lion)

### 3. Configuración del Proyecto
- 🌐 Ir a [Custom Vision Portal](https://customvision.ai)
- ➕ Crear nuevo proyecto con:
  ```
  📋 Nombre: Animal Identification
  📝 Descripción: Image classification for animals
  🔧 Tipo: Classification
  📊 Clasificación: Multiclass (Single tag per image)
  🎯 Dominio: General [A2]
  ```

### 4. Entrenamiento del Modelo
1. 📤 Subir imágenes:
   - Subir fotos de elefantes → tag "elephant"
   - Subir fotos de jirafas → tag "giraffe"
   - Subir fotos de leones → tag "lion"
2. ⚡ Presionar botón "Train"
3. 📊 Revisar métricas de rendimiento

### 5. Prueba y Publicación
1. 🔍 Usar "Quick Test" para probar el modelo
2. 📢 Publicar el modelo:
   - Nombre: "animals"
   - Guardar Prediction URL y Key


## 🔍 Verificación

1. Abrir un Azure Cli en Powershel
2. Descargar el archivo classify-image.ps1 del repositorio oficial de ai-900
```powershell
wget https://raw.githubusercontent.com/MicrosoftLearning/AI-900-AIFundamentals/refs/heads/main/classify-image.ps1
```
3. 💻 Modificar archivo classify-image.ps1:
   - Actualizar $predictionUrl
   - Actualizar $predictionKey
4. Probar el modelo con el script:
```powershell
./classify-image.ps1 1  # Prueba con jirafa
./classify-image.ps1 2  # Prueba con elefante
./classify-image.ps1 3  # Prueba con león
```

## ⭐ Tips
- Asegurarse de tener suficientes imágenes por categoría
- Verificar que las imágenes sean claras y representativas
- Revisar las métricas de precisión antes de publicar

## 🆘 Solución de Problemas
- Si las predicciones no son precisas, agregar más imágenes de entrenamiento
- Verificar que las URLs y Keys estén correctamente copiadas
- Asegurarse de usar PowerShell en Cloud Shell

---
💡 Para más información, consulta la [documentación oficial de Azure Custom Vision](https://docs.microsoft.com/azure/cognitive-services/custom-vision-service/)