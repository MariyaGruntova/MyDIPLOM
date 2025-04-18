#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ОписаниеПеременных

#КонецОбласти

#Область ПрограммныйИнтерфейс

// Код процедур и функций

#КонецОбласти

#Область ОбработчикиСобытий

Процедура ОбработкаПроведения(Отказ, Режим)
	
	// регистр ВКМ_ОстаткиОтпусков Приход
	Движения.ВКМ_ОстаткиОтпусков.Записывать = Истина; 
	Движения.ВКМ_ОстаткиОтпусков.Записать();
	
	Для Каждого ТекСтрокаОтпускаСотрудников Из ОтпускаСотрудников Цикл
		Движение = Движения.ВКМ_ОстаткиОтпусков.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
		Движение.Период = Дата;
		Движение.Сотрудник = ТекСтрокаОтпускаСотрудников.Сотрудник;
		Движение.ДниОтпуска = ТекСтрокаОтпускаСотрудников.КоличествоДней;
	КонецЦикла;
	
	//{{__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!

	//}}__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
КонецПроцедуры


#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

// Код процедур и функций

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

// Код процедур и функций

#КонецОбласти

#Область Инициализация

#КонецОбласти

#КонецЕсли
