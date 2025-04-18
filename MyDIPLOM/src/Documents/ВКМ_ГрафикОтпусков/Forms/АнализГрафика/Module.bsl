#Область ОбработчикиСобытийФормы
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	СтандартнаяОбработка = Ложь;
	АдресОтпусковДокумента = Параметры.АдресОтпусковДокумента;
	
	ОтобранныеОтпуска = ПолучитьИзВременногоХранилища(АдресОтпусковДокумента);
	
	ГрафикОтпусков.Обновление = Ложь;
	ГрафикОтпусков.Очистить(); 
	
	Серия = ГрафикОтпусков.УстановитьСерию("Отпуск");
	Серия.Цвет = WebЦвета.Коралловый;
		
	Для Каждого Строка Из ОтобранныеОтпуска Цикл
			
		Точка = ГрафикОтпусков.УстановитьТочку(Строка.Сотрудник); 
		
		Значение = ГрафикОтпусков.ПолучитьЗначение(Точка, Серия);
				
		Интервал = Значение.Добавить();
		Интервал.Начало = Строка.ДатаНачала;
		Интервал.Конец = Строка.ДатаОкончания;
	
	КонецЦикла; 
		
	ГрафикОтпусков.Обновление = Истина;
		
КонецПроцедуры
#КонецОбласти
