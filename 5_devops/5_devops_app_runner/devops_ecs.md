---
marp: true
theme: default
paginate: true


---
# Despliege automatico de contenedores en App Runner con Github Actions.

---

# Ejercicio

- Crea un repo nuevo
- Copia los ficheros necesarios para construir la imagen del API suma.
- Despliega automaticamente la misma en un contenedor de App Runner, para ello busca como hacerlo desde la line de comandos de aws o con la acción awslabs/amazon-app-runner-deploy:

```bash
      - name: Deploy to App Runner
        id: deploy-apprunner
        uses: awslabs/amazon-app-runner-deploy@main        
        with:
          service: app-runner-image-deploy-service
          image: imagename       
          access-role-arn: ROLE_ARN
          runtime: python3        
          region: REGION
          cpu : 1
          memory : 2
          port: 8080
          wait-for-service-stability: true
```

Puedes ver un ejemplo en: https://github.com/sanju2/pythonapplication/blob/main/.github/workflows/image-pipeline.yml

---

