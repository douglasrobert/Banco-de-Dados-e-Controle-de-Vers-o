# EcoPlacas SQL 🪵♻️

Sistema de banco de dados relacional para apoiar o projeto de extensão sobre reaproveitamento de resíduos de marcenaria na produção de placas ecológicas.

## 📚 Sobre o projeto

Este repositório contém o modelo relacional e os scripts SQL para criação das tabelas e organização de dados da aplicação **EcoPlacas**, além do histórico de desenvolvimento usando Git.

## 🧱 Estrutura do Banco de Dados

O banco contém as seguintes entidades:

- `Residuo` - Rejeitos de MDF ou madeira
- `Bioresina` - Composição utilizada na placa
- `PlacaEcologica` - Unidade produzida
- `TesteTecnico` - Resultados técnicos das placas
- `Participante` - Morador/comunidade envolvida
- `Oficina` - Oficinas realizadas com a comunidade
- `Participacao` - Participação de pessoas nas oficinas
- `Devolutiva` - Feedbacks sobre as placas

## 🧪 Como usar

1. Certifique-se de que o MySQL/MariaDB está rodando via **XAMPP**
2. Acesse [http://localhost/phpmyadmin](http://localhost/phpmyadmin)
3. Crie um banco chamado `ecoplacas`
4. Execute o script `banco.sql` dentro desse banco

Ou via terminal MySQL:

bash
mysql -u root -p
USE ecoplacas;
SOURCE caminho/para/banco.sql;
