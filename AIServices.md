# Servicios de Azure

## Azure AI Services (General)
**¿Qué es?**  
  Azure AI Services es un conjunto de capacidades de inteligencia artificial ofrecidas por Microsoft, que incluye servicios como Vision, Speech, Language, Decision y OpenAI.  
  Es como un "contenedor" que agrupa varios servicios de IA para resolver diferentes necesidades.

- **Uso principal**:  
  Este enfoque se utiliza cuando quieres integrar varios servicios bajo un mismo paraguas para crear una solución más amplia o si no tienes una necesidad específica que cubra un solo servicio (por ejemplo, usar Vision **y** Speech juntos).  

- **Ventajas**:
  - Más fácil para proyectos que combinan varias capacidades de IA.
  - Simplificación de la administración si estás integrando múltiples servicios.
  - Escalabilidad y flexibilidad para soluciones complejas.

### **Servicios incluidos en Azure AI Services (General)**:

| **Categoría**                | **Servicio**                              | **¿Tiene su propia opción?** |
|------------------------------|------------------------------------------|-----------------------------|
| **Vision**                   | Computer Vision                          | ✅ Sí                       |
|                              | Custom Vision                            | ✅ Sí                       |
|                              | Face API                                 | ✅ Sí                       |
|                              | Form Recognizer                          | ✅ Sí                       |
|                              | Spatial Analysis                         | ✅ Sí (Dentro de Computer Vision) |
| **Speech**                   | Speech to Text                           | ✅ Sí                       |
|                              | Text to Speech                           | ✅ Sí                       |
|                              | Speech Translation                       | ✅ Sí                       |
| **Language**                 | Text Analytics (Sentiment Analysis, etc.)| ✅ Sí                       |
|                              | Translator                               | ✅ Sí                       |
|                              | Language Understanding (LUIS)            | ✅ Sí                       |
|                              | Question Answering (QnA Maker)           | ✅ Sí                       |
|                              | Conversational Language Understanding (CLU) | ✅ Sí                     |
| **Decision**                 | Personalizer                             | ✅ Sí                       |
|                              | Content Moderator                        | ✅ Sí                       |
| **OpenAI**                   | ChatGPT, GPT-4, DALL·E                   | ✅ Sí (Azure OpenAI Service)|
---

* ¿Cuándo elegir uno sobre otro?
  * Usa Azure AI Services (general) si:
     * Planeas usar varios servicios (ej.: Vision + Speech).
     * Quieres construir una solución integrada en un solo lugar.
  * Usa Servicios individuales si:
     * Tienes un caso de uso claro y específico.
     * Necesitas un enfoque directo y especializado para una tarea.

## Azure OpenAI
## Azure AI Search
## Computer Vision

- **[Extracción de Texto (OCR)]**: **Convierte imágenes en texto editable.**  
  **Endpoint**:  
  `https://[Nombre_Recurso].cognitiveservices.azure.com/vision/v3.2/ocr`

- **[Análisis de Imágenes (Descripción Automática)]**: **Genera descripciones automáticas en lenguaje natural de una imagen.**  
  **Endpoint**:  
  `https://[Nombre_Recurso].cognitiveservices.azure.com/vision/v3.2/describe`

- **[Detección de Objetos]**: **Detecta y localiza objetos específicos dentro de una imagen.**  
  **Endpoint**:  
  `https://[Nombre_Recurso].cognitiveservices.azure.com/vision/v3.2/detect`

- **[Reconocimiento de Contenido Inapropiado]**: **Detecta contenido explícito u ofensivo en imágenes, como desnudos o violencia.**  
  **Endpoint**:  
  `https://[Nombre_Recurso].cognitiveservices.azure.com/vision/v3.2/moderate`

- **[Análisis de Características Geográficas]**: **Detecta paisajes y escenarios geográficos en imágenes.**  
  **Endpoint**:  
  `https://[Nombre_Recurso].cognitiveservices.azure.com/vision/v3.2/analyze`

- **[Reconocimiento de Texto en Documentos]**: **Extrae texto de imágenes escaneadas o fotografías de documentos.**  
  **Endpoint**:  
  `https://[Nombre_Recurso].cognitiveservices.azure.com/vision/v3.2/read`

- **[Análisis de Imágenes con Etiquetas Predeterminadas]**: **Clasificación automática de imágenes utilizando etiquetas predefinidas (por ejemplo, animales, objetos).**  
  **Endpoint**:  
  `https://[Nombre_Recurso].cognitiveservices.azure.com/vision/v3.2/analyze`

## Face API
## Custom Vision
## Speech services
## Language service

Sirve para:
* Detección de idioma
* Extracción de frases clave
* Análisis de sentimientos
* Identificación de entidades conocidas 

## Translator
## Document Intelligence
## Bot Services
## Anomaly Detector
## Content Moderator
## Health Insights
## Personalizer
## Metrics Advisor
## Immersive Reader
## Azure AI Services multi-service account
## Content Safety
## Language Understanding (LUIS)
### QnA Maker (classic)

