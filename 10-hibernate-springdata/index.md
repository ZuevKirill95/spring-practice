# JPA

- [Исходный код из лекции](https://github.com/ZuevKirill95/spring-practice-source-code/tree/main/hibernate)

## Домашнее задание

Переделать предыдущее задание, используя JPA.

Примечания:

- Свою схему нужно указать в файлах `application.properties` и `schema.sql`. Пример смотрите в исходном коде лекции.
- Можно создать таблицы на основании сущностей. Используйте параметры:
  ```properties
  spring.jpa.properties.javax.persistence.schema-generation.scripts.action=create
  spring.jpa.properties.javax.persistence.schema-generation.scripts.create-target=schema.sql
  ```

