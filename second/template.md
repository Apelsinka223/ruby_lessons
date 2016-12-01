# Ruby Rake is a piece of cake

Всем привет! Воспользуюсь нашим мэйлером еще разок. Надеюсь, вам понравилось занятие! Внизу вы найдете ссылку на все, что мы вчера использовали. Весь свой код я закину в [репозиторий](https://gitlab.rambler.ru/rambler-school/ruby-workshops) нашей школы, можете скачивать и делать с ним что хотите. Будьте готовы использовать свои файлы, т.к. мои шаблоны и списки адресатов будут доступны до следующего занятия. Ну и не стоит, наверное, спамить коллегам. :) Можете спамить мне, мне будет приятно знать, что вы продолжаете ковыряться в коде. :) Если будете использовать свои ссылки на файлы, убедитесь, что браузер по ним сразу начинает скачивать. Например, если вы посмотрите на мои ссылки, в них есть параметр ```dl=1```. По умолчанию, dropbox даст вам ссылку с ```dl=0``` и вместо файла вы прочитаете страницу html. Эти настройки могут отличаться между сервисами облачного хранения файлов.

Не поленитесь заполнить форму обратной связи, нам важно ваше мнение (честно!) [Обратная связь](https://stgerman.typeform.com/to/xbEIQj)

Заметки:
-   В качестве домашнего задания, попробуйте внедрить шаблонизатор, например, [Slim](https://github.com/slim-template/slim). Его даже можно использовать вместе с Redcarpet. Так же можно попробовать найти применение Rake в своей повседневной работе. Будет здорово, если вы поделитесь потом своими идеями с коллегами. Если что, мы подскажем по реализации.
-   У кого вчера были проблемы с подключением гемов, попробуйте либо поставить все гемы без использования Bundler прямо в систему, либо, использую Bundler, запускать код через ```bundle exec rake...``` (я за второй вариант). Вчера был вопрос про то, как работает require и я вынужден признаться, что **наговорил ерунды**. :)  Если коротко, то для понимания, как это работает, нужно читать документацию ```Kernel.require```.  Метод ```require``` принимает в качестве аргумента либо полный путь к файлу, либо название. Если это просто название, то этот файл он будет искать в глобальной переменной $LOAD_PATH. По умолчанию, в $LOAD_PATH будут системные гемы (поэтому при использования Bundler и vendor/bundle следует использовать ```bundle exec``` если хотите, чтобы использовались именно гемы из папки vendor/bundle). Есть вариант самому добавить необходимые файлы в $LOAD_PATH, но так делать не рекомендуется, оставьте это Bundler'у и системе в целом. Если вы будете выпускать гем, Bundler добавит пути к вашим файлам в $LOAD_PATH сам. Так что, резюмируя, для нашего проекта можно вполне оставить require_relative. **Спасибо Илье Заболотневу за хороший вопрос!** Мой ответ мы, надеюсь, вырежем. O:)

Материалы по теме:

-   [Rambler Ruby Workshops](https://gitlab.rambler.ru/rambler-school/ruby-workshops)
-   [Rake](http://rake.rubyforge.org/)  
-   [Bundler](http://bundler.io/)
-   [Gist](http://bit.ly/rake_cake)
-   [Gem Action Mailer](https://github.com/rails/rails/tree/master/actionmailer)
-   [Gem Redcarpet](https://github.com/vmg/redcarpet)
-   [Gem Dotenv](https://github.com/bkeepers/dotenv)
-   [Gem Ruby/Progressbar](https://github.com/jfelchner/ruby-progressbar)