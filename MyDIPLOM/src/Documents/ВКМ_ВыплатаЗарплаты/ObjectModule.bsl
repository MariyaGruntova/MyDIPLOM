#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда
	
#Область ОбработчикиСобытий

Процедура ОбработкаПроведения(Отказ, РежимПроведения)
	
	СформироватьДвижения();
	
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Процедура СформироватьДвижения()
	
	Для Каждого Строка Из СписокСотрудников Цикл
		
		Движения.ВКМ_ВзаиморасчетыССотрудниками.Записывать = Истина;
		
		Движение = Движения.ВКМ_ВзаиморасчетыССотрудниками.Добавить();
		Движение.ВидДвижения = ВидДвиженияНакопления.Расход;
		Движение.Период = Дата;
		Движение.Сотрудник = Строка.Сотрудник;
		Движение.Сумма = Строка.СуммаКВыплате;
		
	КонецЦикла;
	
	Движения.ВКМ_ВзаиморасчетыССотрудниками.Записать();
	
КонецПроцедуры

#КонецОбласти

#КонецЕсли
