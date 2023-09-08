#language: ru

Функция: комментирование постов в группе с топиками

	Шаблон сценария: добавление канала в вайтлист группы
		Пусть иннициатор — администратор @<группа>
		И он добавил бота администратором
		Если напишет в нём «/whitelist @<канал>»
		Тогда бот внесёт @channel в вайтлист

	Шаблон сценария: привязка канала к топику группы
		Пусть иннициатор — администратор канала
		И он добавил бота администратором
		И канал есть в вайтлисте каналов группы
		Если напишет боту «/bind @<канал> @<группа>»
		Тогда бот создаст в чате одноимённый с каналом топик
		И внесёт его в список обслуживаемых

	Шаблон сценария: привязка постов к группе
		Пусть канал в обслуживании
		Когда совершается публикация
		Тогда бот её копирует
		* удаляет из канала
		* прогнозирует ссылку на репост в группе
		* добавляет кнопку с данной ссылкой
		* отправляет в канал и группу

	Шаблон сценария: комментирование поста
		Пусть пост привязан к группе
		Когда пользователь нажимает на кнопку под ним
		Тогда его перенаправляет к его репосту в чате
