
&НаСервереБезКонтекста
Процедура ЗарегистрироватьИзмененияНаСервере(Узел)
	
	//Регситрация изменений всех данных узла
	ПланыОбмена.ЗарегистрироватьИзменения(Узел);	
КонецПроцедуры

&НаКлиенте
Процедура ЗарегистрироватьИзменения(Команда)
	ЗарегистрироватьИзмененияНаСервере(Элементы.Список.ТекущаяСтрока);
КонецПроцедуры


&НаСервереБезКонтекста
Функция ПредопределенныйУзел(Узел)
	
	Возврат Узел = ПланыОбмена.Филиалы.ЭтотУзел()
	
КонецФункции

&НаКлиенте
Процедура СписокПриАктивизацииСтроки(Элемент)
	
	Если ПредопределенныйУзел(Элемент.ТекущаяСтрока) Тогда
		Элементы.ФормаЗарегистрироватьИзменения.Доступность = Ложь;
		
	Иначе
		Элементы.ФормаЗарегистрироватьИзменения.Доступность = Истина;
	КонецЕсли;
	
КонецПроцедуры
