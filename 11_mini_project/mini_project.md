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

# Ejemplo caso de uso

---

- Genera una función lamnda que lea un documento creado en un bucket de sr y ejecute textract sobre el.
- Tendras que añadir las roles necesarios para ello:  AmazonS3FullAccess y AmazonTextractFullAccess.
- Pon todo en un repositorio de Git y haz que se despliege automaticamente.
- Guarda alguna parte del documento en aws dynamodb.

---