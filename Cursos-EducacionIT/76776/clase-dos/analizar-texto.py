import requests
import json

# Entradas del usuario
endpoint = input("Ingrese el endpoint del recurso de Language Services: ").strip()
key = input("Ingrese la key del recurso de Language Services: ").strip()
txt = input("Ingrese el texto a Analizar: ").strip()

headers = {
    "Ocp-Apim-Subscription-Key": key,
    "Content-Type": "application/json"
}

document = {
    "documents": [
        {
            "id": "1",
            "text": txt
        }
    ]
}

# --- Detección de Idioma ---
print("\n***Detecting Language***")
url = f"{endpoint}/text/analytics/v3.1/languages"
response = requests.post(url, headers=headers, json=document)
result = response.json()

lang = result["documents"][0]["detectedLanguage"]
print(f"  - Language: {lang['name']}\n  - Code: {lang['iso6391Name']}\n  - Score: {lang['confidenceScore']}")

# --- Frases Clave ---
print("\n\n***Finding Key Phrases***")
url = f"{endpoint}/text/analytics/v3.1/keyPhrases"
response = requests.post(url, headers=headers, json=document)
result = response.json()

key_phrases = result["documents"][0]["keyPhrases"]
print("  - Key Phrases:")
for phrase in key_phrases:
    print(f"    - {phrase}")

# --- Análisis de Sentimiento ---
print("\n\n***Analyzing Sentiment***")
url = f"{endpoint}/text/analytics/v3.1/sentiment"
response = requests.post(url, headers=headers, json=document)
result = response.json()

doc = result["documents"][0]
sentiment = doc["sentiment"]
scores = doc["confidenceScores"]

print(f"  - A {sentiment} sentiment based on these scores:")
print(f"    - Positive: {scores['positive']}")
print(f"    - Neutral:  {scores['neutral']}")
print(f"    - Negative: {scores['negative']}")

# --- Entidades Conocidas ---
print("\n\n***Identifying Known Entities***")
url = f"{endpoint}/text/analytics/v3.1/entities/linking"
response = requests.post(url, headers=headers, json=document)
result = response.json()

entities = result["documents"][0]["entities"]
for entity in entities:
    print(f"  - {entity['name']} : {entity['url']}")
