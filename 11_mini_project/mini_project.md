---
marp: true
theme: default
paginate: true
---

<style>
img[alt~="center"] {
  display: block;
  margin: 0 auto;
}
</style>

# Ejemplos caso de usos

---
## Caso de uso 1.

- Genera una función lamnda que scrape los datos de https://www.ecb.europa.eu/stats/policy_and_exchange_rates/euro_reference_exchange_rates/html/index.en.html
- Guarda los datos cada vez que se ejecute la lambda en formato csv en un bucket de s3.
- Guarda los datos cada vez que se ejecute la lambda en la base de datos DynamoDB.
- La función lambda se tendra que ejecutar una vez al día.
- Tendras que añadir las roles necesarios para ello:  AmazonS3FullAccess y AmazonDynamoDBFullAccess.
- Pon todo en un repositorio de Git y haz que se despliege automaticamente.

---
## Caso de uso 2.
- Genera una función lamnda que lea un documento creado en un bucket de sr y ejecute textract sobre el.
- Tendras que añadir las roles necesarios para ello:  AmazonS3FullAccess y AmazonTextractFullAccess.
- Pon todo en un repositorio de Git y haz que se despliege automaticamente.
- Guarda alguna parte del documento en aws dynamodb.

---