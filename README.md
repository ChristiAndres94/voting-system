# 🗳️ Sistema de Votación Electrónica

## 🏗️ Arquitectura de Microservicios

- **5 Dominios de Negocio**
- **30 Microservicios**
- **5 Lenguajes de Programación**
- **5 Estilos de Arquitectura**
- **5+ Bases de Datos**

## 🚀 Tecnologías

### Lenguajes
- Python (FastAPI)
- Java (Spring Boot)
- Node.js (Express)
- Go (Gin)
- C# (.NET)

### Arquitecturas
- REST API
- GraphQL
- gRPC
- WebSocket
- SOAP

### Bases de Datos
- PostgreSQL
- MongoDB
- Redis
- DynamoDB
- ElasticSearch

## 🏃‍♂️ Inicio Rápido

```bash
# Instalar dependencias
make install

# Ejecutar en desarrollo
make dev

# Ejecutar tests
make test

# Desplegar en producción
make deploy-prod
```

## 📁 Estructura del Proyecto

```
voting-system/
├── services/           # 30 Microservicios en 5 dominios
├── infrastructure/     # Terraform, Kubernetes, Docker
├── gateway/           # API Gateway y Load Balancer
├── databases/         # Configuraciones de BD
├── frontend/          # Web y Mobile
└── tests/            # Tests de integración
```

## 🧪 Testing

Cada microservicio incluye:
- Tests unitarios
- Tests de integración
- Tests funcionales (CI/CD)

## 🚀 DevOps

- **CI/CD**: GitHub Actions
- **Containers**: Docker + Kubernetes
- **Cloud**: AWS (EKS, RDS, DynamoDB)
- **Monitoring**: Prometheus + Grafana
- **Load Balancer**: AWS ALB + Auto Scaling

## 📖 Documentación

- [Arquitectura](docs/architecture/)
- [APIs](docs/api/)
- [Deployment](docs/deployment/)
