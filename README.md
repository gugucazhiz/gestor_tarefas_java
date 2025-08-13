# Projeto JSF com PostgreSQL

Este projeto é uma aplicação web JSF que utiliza **JPA/Hibernate** para persistência de dados em **PostgreSQL**.

---

## Pré-requisitos

Antes de rodar o projeto, a máquina deve ter:

- **Java JDK 8+**
- **Servidor de aplicação** (Tomcat 9+, GlassFish 6+, etc.)
- **PostgreSQL 12+**
- **IDE de desenvolvimento** (opcional: Eclipse, IntelliJ)

---

## 2️⃣ Configuração do banco de dados

### 2.1 Criar banco e usuário
No PostgreSQL, execute:

```sql
CREATE DATABASE meuprojeto;
CREATE USER meuusuario WITH PASSWORD 'password';
GRANT ALL PRIVILEGES ON DATABASE meuprojeto TO meuusuario;

Criar Tabelas do banco de dados postgresql: psql -U meuusuario -d meuprojeto -f backup_meuprojeto.sql 
```
3️⃣ Configuração do projeto

No arquivo persistence.xml:

```
<property name="javax.persistence.jdbc.url" value="jdbc:postgresql://localhost:5432/meuprojeto"/>
<property name="javax.persistence.jdbc.user" value="meuusuario"/>
<property name="javax.persistence.jdbc.password" value="minhasenha"/>


hibernate.hbm2ddl.auto=update \\para criar a atualizar as tabelas automaticamente
```
4️⃣ Executar o projeto
```
mvn clean package
```
Isso gera target/ptest.war.

Deploy no Tomcat:

Copie o .war para tomcat/webapps

Inicie o Tomcat

Vá ao endereço:
http://localhost:8080/ptest

## Tela Principal
<img width="1130" height="298" alt="Image" src="https://github.com/user-attachments/assets/01e28ef8-dbc8-4be4-ac41-2d086b636832" />


### Tarefas Enumeradas Em Sequencia
<img width="1083" height="184" alt="Image" src="https://github.com/user-attachments/assets/90620119-5f3b-41bf-9231-ed01817951e3" />

### Tela de registro
<img width="608" height="491" alt="Image" src="https://github.com/user-attachments/assets/82384fa7-273c-4fdd-825f-7b4774bbba8f" />






