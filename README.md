# Desafio de Projeto

## Infraestrutura como código:<br>Script de Criação de Estrutura de Usuários, Diretórios e Permissões

**IAC** é o gerenciamento e provisionamento da infraestrutura por meio de códigos, em vez de processos manuais. Assim, são criados arquivos de configurações, facilitando o provisionamento do mesmo ambiente todas as vezes.

Neste projeto crio um script onde toda a infraestrutura de  usuários, grupos de usuários, diretórios e permissões serão criadas  automaticamente. Sendo assim, toda nova máquina  virtual que for iniciada já estará pronta para uso quando o script for  executado.

**---Definições---**

| DIRETÓRIOS |      |      |      |
| :--------- | :--- | :--- | :--- |
| /publico   | /adm | /ven | /sec |

| GRUPOS |         |         |      
| :-------| :----- | :------ |
| GRP_ADM |GRP_VEN | GRP_SEC |

| USUÁRIOS |         |         |      
| :------| :----- | :------- |
| carlos | debora | josefina |
| maria | sebastiana | amanda |
| joao |roberto | rogerio |

* Todo provisionamento deve ser feito em um arquivo do tipo ***Bash Script***.

* O dono de todos os diretórios criados será usuário ***root***.

* Todos os usuários terão permissão total dentro do diretório `/publico`.

* Os usuários de cada grupo terão permissão total dentro de seu ***respectivo diretório***.

* Os usuários de cada grupo ***não poderão*** ter permissão de ***leitura, escrita e execução*** em ***diretórios*** de departamento que eles ***não pertencem***.

:arrow_right: **Link de acesso ao script:**

:1st_place_medal: [Script de Criação de Estrutura de Usuários, Diretórios e Permissões](https://github.com/pliniopereira10/linux-experience-iac/blob/main/scripts/iac_criacao_usuarios_diretorios_permissao.sh)
