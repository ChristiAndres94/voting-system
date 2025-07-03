.PHONY: help install dev test build deploy-dev deploy-qa deploy-prod clean

help: ## Mostrar ayuda
	@echo "Comandos disponibles:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

install: ## Instalar dependencias de todos los servicios
	@echo "🔧 Instalando dependencias..."
	cd services/domain-1-security-users/auth-service && pip install -r requirements.txt
	cd services/domain-1-security-users/jwt-token-service && npm install
	@echo "✅ Dependencias instaladas"

dev: ## Ejecutar en modo desarrollo
	@echo "🚀 Iniciando servicios en desarrollo..."
	docker-compose up --build

test: ## Ejecutar todos los tests
	@echo "🧪 Ejecutando tests..."
	cd services/domain-1-security-users/auth-service && python -m pytest
	cd services/domain-1-security-users/jwt-token-service && npm test
	@echo "✅ Tests completados"

build: ## Construir todas las imágenes
	@echo "🏗️ Construyendo imágenes..."
	docker-compose build
	@echo "✅ Imágenes construidas"

deploy-dev: ## Desplegar en desarrollo
	@echo "🚀 Desplegando en desarrollo..."
	kubectl apply -f infrastructure/kubernetes/namespaces/dev.yml
	kubectl apply -f infrastructure/kubernetes/deployments/dev/
	@echo "✅ Desplegado en desarrollo"

deploy-qa: ## Desplegar en QA
	@echo "🧪 Desplegando en QA..."
	kubectl apply -f infrastructure/kubernetes/namespaces/qa.yml
	kubectl apply -f infrastructure/kubernetes/deployments/qa/
	@echo "✅ Desplegado en QA"

deploy-prod: ## Desplegar en producción (requiere aprobación)
	@echo "🚀 Desplegando en producción..."
	kubectl apply -f infrastructure/kubernetes/namespaces/prod.yml
	kubectl apply -f infrastructure/kubernetes/deployments/prod/
	@echo "✅ Desplegado en producción"

clean: ## Limpiar contenedores y volúmenes
	@echo "🧹 Limpiando..."
	docker-compose down -v
	docker system prune -f
	@echo "✅ Limpieza completada"
