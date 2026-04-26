# CityGreen Back-end - Sistema de Gestão de Fazenda Urbana

Este é o back-end do **CityGreen**, o motor central responsável pela inteligência de negócio, segurança e persistência de dados de uma fazenda urbana. A API fornece os recursos necessários para o controle rigoroso de insumos, monitoramento de ciclos de produção, gestão de lotes e automação de vendas, integrando-se nativamente com processos de auditoria e triggers de banco de dados.

---

## 🛠 Arquitetura e Tecnologias

A API foi construída com foco em performance, integridade dos dados e escalabilidade, utilizando as versões mais recentes do ecossistema Java:

- **Linguagem:** Java 21 (LTS)
- **Framework:** Spring Boot 3.4.x
- **Banco de Dados:**
  - **SQL Server 2022:** Base principal executada via **Docker**, garantindo consistência entre ambientes.
  - **Flyway:** Gestão de versionamento de banco de dados (Migrations) para evolução segura do schema.
- **Segurança:** Spring Security com autenticação **Stateless via JWT** (JSON Web Token) e controle de acesso baseado em permissões (RBAC).
- **Persistência:** Spring Data JPA / Hibernate com validação rigorosa de schema e suporte a chaves compostas.
- **Documentação:** Swagger (OpenAPI 3) para mapeamento integral dos endpoints.

---

## 📂 Estrutura do Projeto

O projeto adota uma organização modular focada em separação de responsabilidades (estilo Domain-Driven Design):

- **`com.citygreen.api.modules`**: Contém os módulos de negócio (User, Inventory, Production, Sales). Cada módulo agrupa seus próprios Controllers, Services, Models e Repositories.
- **`com.citygreen.api.infrastructure`**: Camada técnica com configurações de segurança (JWT), filtros, exceções globais e modelos base (`BaseEntity`).
- **`/src/main/resources/db/migration`**: Scripts SQL versionados pelo Flyway (Criação de tabelas, Triggers e Inserts de semente).
- **`docker-compose.yml`**: Orquestração do container SQL Server 2022.

---

## 🚀 Funcionalidades Principais

- **Gestão de Insumos (Inventory)**: Controle de fertilizantes e sementes com monitoramento automático de validade.
- **Ciclos de Produção**: Rastreabilidade completa desde o plantio até a colheita, vinculando o consumo de insumos a cada ciclo.
- **Controle de Lotes (Batch Management)**: Organização automatizada de produtos colhidos, gerindo validade e disponibilidade para o mercado.
- **Motor de Vendas**: Processamento de pedidos com baixa automática no estoque e vinculação de clientes.
- **Segurança e Auditoria**: Controle de acesso por níveis (Admin/Operador) e rastreamento automático de criação/edição de registros via `BaseEntity`.

---

## 🛠 Instalação e Execução

### Pré-requisitos
- **JDK 21**
- **Maven 3.9+**
- **Docker** e **Docker Compose**

### Passo a Passo

1. **Clone o repositório:**
   ```bash
   git clone [https://github.com/niuan-souza/citygreen-backend.git](https://github.com/niuan-souza/citygreen-backend.git)
   cd citygreen-backend

2. **Inicie o Banco de Dados (Docker):**  
    ```bash
   docker compose up \-d

3. **Crie a base de dados manualmente:**  
   *(O SQL Server requer a criação manual da database antes da execução das migrations)*  
    ```bash
   docker exec \-it city\_green\_sqlserver /opt/mssql-tools18/bin/sqlcmd \-S localhost \-U sa \-P "CityGreen123\!" \-C \-Q "CREATE DATABASE city\_green"

4. **Execute a aplicação:**  
    ```bash
   mvn spring-boot:run

---

**📋 Padronização de Desenvolvimento**

Para manter a qualidade e organização do código, o projeto utiliza:

| Ferramenta | Tecnologia | Objetivo |
| :---- | :---- | :---- |
| **Commitlint** | Node.js | Garante mensagens de commit no padrão *Conventional Commits*. |
| **Husky** | Git Hooks | Automatiza validações e testes antes de cada commit/push. |
| **Lombok** | Java Library | Redução de código boilerplate (Getters, Setters, Constructors). |

---

**📊 Painel de Controle e Dashboards**

A API está preparada para fornecer dados agregados para dashboards de BI:

* **Eficiência de Produção**: Comparativo entre insumos investidos e volume colhido.  
* **Giro de Estoque**: Alertas de lotes próximos do vencimento.  
* **Análise de Vendas**: Indicadores de receita e performance por categoria de produto.

---


**Desenvolvido por Niuan Spolidorio da Rocha Souza**

*Desenvolvedor Full Stack | Inteligência de Dados*

