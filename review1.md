0. Получил доступ к репозиторию :) :heavy_check_mark:

1. Валидация коммитов :heavy_check_mark:
    - без инициализации husky сразу не работает. Необходимо добавить скрипт prepare в package.json (ну или вручную инициализировать)
    https://typicode.github.io/husky/getting-started.html#manual

2. Проверка Pull Request :heavy_check_mark:
    - тесты запускают при пул-реквесте :heavy_check_mark:
    - при провале тестов мёрж запрещён :heavy_check_mark:

3. Проверка релиза
    - при релизе тега создаётся issue с правильным тегом
    - в issue отображены корректные дата и время, а также автор релиза
    - в issue отображён правильный changelog, содержащий все коммиты с предыдущего релиза