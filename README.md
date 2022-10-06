# Contenidos

## 1. AWS EC2
- Introducción a AWS.
- Máquinas Virtuales en AWS: EC2
- Desarrollo en remoto con vscode y SSH.
- Cronjobs.
- Variables de entorno.
- Despliegue de un API en EC2.

## 2. AWS S3
- Almacenamiento S3.

## 3. AWS Lambda.
- Funciones Lambda.
- Registro de imágenes Docker en AWS ECR.
- Funciones Lambda con Docker.

---

## 4. Contenedores en AWS: ECS y Amazon Lightsail.
- Despliege de imágenes Docker en AWS EC2.
- Despliege de imágenes Docker en AWS ECS.
- Despliege de imágenes Docker en Amazon Lightsail.

---

## 5. Filosodia DevOps, AWS RDS, AWS Dynamo
- Filosofía Devops.
- Acciones de Github.
- Ejemplo DevOps AWS Lambda.
- Ejemplo DevOps AWS EC2 y ECR.

## 6. Bases de datos en AWS: AWS RDS, AWS Dynamo
- Bases de Datos Relacionales en AWS: RDS
- AWS Athenea
- Bases de Datos Relacionales en AWS: Dynamo
### Proyecto final

# Otros
- Para convertir las diapositivas de md a pdf usar el comando:
```bash
docker run --rm --init -v $PWD:/home/marp/app/ -e LANG=$LANG marpteam/marp-cli **/*.md  --pdf --allow-local-files
```