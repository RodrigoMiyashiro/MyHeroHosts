# MyHeroHosts
Meus heróis - Lista com os anfritriões que já hospedaram seus pets ou aqueles que você favoritou.

Versão: 0.0.1<br>
Linguagem: Swift<br>

## Aplicativo

### 1 - Objetivo

Aplicativo mostra a lista de anfritriões que já hospderam seus pets ou aqueles você já favoritou, a partir de uma JSON (mock).<br>

### 2 - Arquitetura

![alt text](https://blog.cleancoder.com/uncle-bob/images/2012-08-13-the-clean-architecture/CleanArchitecture.jpg)
De forma bem resumida, está arquitetura foi pensada para criar um aplicativo inspirado no Clean Archicture. <br>
Contendo um Core, onde o conjunto de regras da aplicação fica disponível. Se eventualmente, precisar implementar
outra aplicação em Swift, o Core já estará pronto.<br>
Dentro da aplicação encontramos o Boundary, a Infrastructure e o Presentation.<br>
A Infrastructure é responsável por cuidar da camada externa da aplicação, como banco de
dados, serviços etc.<br> 
O Boundary é responsável por interligar as camadas externa com o Core.<br>
O Presentation cuida da apresentação das telas, da interação e de como os elementos visuais são montados.<br>

![alt text](https://herbertograca.com/2017/11/16/explicit-architecture-01-ddd-hexagonal-onion-clean-cqrs-how-i-put-it-all-together/070-explicit-architecture-svg/)

Os links para mais informações está presente nas referências.

### 3 - Melhorias

Algumas melhorias para fazer na próxima versão do app:<br>
- Ampliar os testes unitários e de UI.

## Referências

herbertograca - DDD, Hexagonal, Onion, Clean, CQRS, … How I put it all together<br>
https://herbertograca.com/2017/11/16/explicit-architecture-01-ddd-hexagonal-onion-clean-cqrs-how-i-put-it-all-together/

Robert C Martin - Clean Archicture and Design<br>
https://www.youtube.com/watch?v=Nsjsiz2A9mg
https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html
