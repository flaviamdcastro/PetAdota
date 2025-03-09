# PetAdota: Escalando a Plataforma de Adoção com Infraestrutura e Pipelines de Dados

[![Status do Projeto](https://img.shields.io/badge/Status-Em%20Desenvolvimento-yellow)](https://github.com/seuusuario/petadota-infra-data)  Este projeto demonstra a criação de uma infraestrutura escalável, segura e automatizada para a plataforma PetAdota, uma aplicação fictícia de adoção de animais. O projeto aborda os desafios de crescimento da plataforma, implementando soluções para:

*   **Provisionamento de Infraestrutura Automatizada:** Utiliza Terraform e Ansible para criar e gerenciar a infraestrutura na Google Cloud Platform (GCP) de forma eficiente e reproduzível.
*   **Pipeline de Dados para Imagens:** Constrói um pipeline que extrai imagens de cães e gatos de APIs públicas, armazena-as no Google Cloud Storage (GCS) e registra os metadados em um banco de dados MySQL.
*   **Processamento de Interações em Tempo Real:** Implementa um sistema de streaming com Kafka e Spark Streaming para analisar o comportamento dos usuários em tempo real e identificar tendências de adoção.
*   **Automação e Orquestração:** Utiliza o Apache Airflow para automatizar e monitorar os pipelines de dados.

## Tecnologias Utilizadas

*   **Linguagem de Programação:** Python
*   **Infraestrutura como Código:** Terraform
*   **Automação de Configuração:** Ansible
*   **Nuvem:** Google Cloud Platform (GCP)
    *   Compute Engine (VMs)
    *   Cloud Storage (Buckets)
    *   (Opcional) Cloud Composer (Airflow gerenciado)
*   **Banco de Dados:** MySQL
*   **Streaming de Dados:**
    *   Apache Kafka
    *   Apache Spark Streaming
*   **Orquestração de Pipelines:** Apache Airflow
*   **Bibliotecas Python:**
    *   `requests` (para interagir com APIs)
    *   `boto3` (SDK da AWS para interagir com o GCS)
    *   `SQLAlchemy` (para interagir com o MySQL de forma segura)
    *   `PyMySQL` (conector MySQL, se não usar mysqlconnector diretamente)

## Pré-requisitos

1.  **Conta GCP:**  Você precisará de uma conta no Google Cloud Platform com permissões para criar VMs, buckets no Cloud Storage e (opcionalmente) instâncias do Cloud Composer.
2.  **Ferramentas Instaladas:**
    *   Terraform
    *   Ansible
    *   Python 3.7+
    *   Git
    *   CLI do Google Cloud (`gcloud`) -  Configurada e autenticada.
    *   (Opcional) Cliente MySQL (para testar a conexão com o banco de dados)
3. **Conhecimentos Básicos:** Familiaridade com os conceitos básicos das tecnologias utilizadas (GCP, Terraform, Ansible, Python, SQL, Kafka, Spark, Airflow).

