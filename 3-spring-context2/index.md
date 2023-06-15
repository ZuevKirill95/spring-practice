# Контекст Spring (Часть 2)

- [Презентация](https://docs.google.com/presentation/d/1ESgxmzR_KWfkr69wVps1rfwtfE-8FItVatsRALZTCP8/edit?usp=sharing)
- [Исходный код из лекции](https://github.com/ZuevKirill95/spring-practice-source-code/tree/main/spring-context-2)

## Домашнее задание

Создать проект, описанный в диаграмме.

```puml
@startuml
participant Application as App
participant BankClientsApp as BankClients
participant TransferByPhoneApp as TransferByPhoneApp
database    Database    as DB
App -> BankClients : Проверить, что пользователь является клиентом банка
BankClients -> App : Вернуть ответ (является или не является)
alt если пользователь не является клиентом банка
App -> App: Вывести на экран ошибку
end
App -> TransferByPhoneApp : Перевести сумму по номеру телефона
App -> DB : Записать в Базу данных кому и на какую сумму был перевод
@enduml
```

- App - ваше приложение.
- BankClientsApp - стороннее приложение. Предоставляет информацию о клиентах банка.
- TransferByPhoneApp - стороннее приложение. Переводит денежные средства по номеру телефона
- DataBase - База данных вашего приложения. Хранит историю переводов.

BankClientsApp, TransferByPhoneApp и DataBase - это заглушки. Их не надо реализовывать.