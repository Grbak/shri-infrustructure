# ДЗ "Инфраструктура"

Для проверки некоторых из представленных ниже фичей может предварительно понадобиться:

- клонировать репозиторий
- попросить добавить себя в контрибьюторы реопзитория, написав мне в телеграм (_@dybokvd_)

### Валидация сообщений коммитов 

- проверяет сообщение на соответствие спецификации *conventional commits*
- реализована с помощью инструментов _commitlint_ и _husky_
- срабатывает при локальном совершении коммита

**Как проверить:** внести изменения в код локально и совершить попытку коммита с невалидным сообщением; убедиться, что коммит не совершился.

### Автоматический запуск проверок в СI для PR

- представляет собой тестирование кода с помощью автотестов
- запускается при создании PR в master, а также при последующем изменении истории коммитов этого PR
- результат тестирования отображается на странице PR
- в случае непрохождения тестов мерж блокируется, при необходимости есть возможность явно игнорировать блокировку

**Как проверить:** создать PR из предварительно созданой фича-ветки в master, проверить прохождения тестов; сломать тесты и запушить коммит в ту же фича-ветку, из которой был создан PR и убедиться, что непройденные тесты не дают совершить мерж без явного подтверждения.

### Релизный процесс

- при появлении тега с названием, соответствующим маске **v<число>**, создается релиз
- название созданного релиза соответствует названию релизного тега
- релиз включает себя changelog, содержащий все коммиты между текущим и предыдущим тегами
- после создания релиза создается issue с меткой RELEASE, содержащий дату релиза, автора и changelog

**Как проверить:** внести изменения в код репозитория для формирования непустого changelog'а, создать релизный тег, повысив необходимую (мажорную/минорную/патч-) версию последнего релиза; зайти на соответствующие страницы релиза и issue, проверить указанные данные. 