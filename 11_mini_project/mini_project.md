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

- Genera una función lamnda que lea todos los datos del api de bme del índice IBEX.
- Guarda los datos de cierre de cada activo en formato csv en un bucket de s3.
- Guarda los datos de cierre de cada activo en la base de datos DynamoDB.
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