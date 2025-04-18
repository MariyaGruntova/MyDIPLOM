﻿#language: ru

@tree

Функционал: Формирование заявки "Обслуживание Клиента"

Как Специалист я хочу
закрыть заявку на обслуживание клиента 
чтобы отразить время к оплате Клиентам   

Контекст:
	Дано Я подключаю клиент тестирования "Специалист" из таблицы клиентов тестирования
	И я закрываю все окна клиентского приложения
	
Сценарий: Создать документ ОбслуживаниеКлиента и заполнить данными для формирования заявки
* И Я открываю форму списка Документов
	И В командном интерфейсе я выбираю "Добавленные объекты" "Обслуживание клиента"
	Тогда открылось окно "Обслуживание клиента"	
* Затем я нажимаю на выбираю Документ
	Когда открылось окно "Обслуживание клиента"
	И в таблице 'Список' я перехожу к строке:
		| "Дата"                | "Договор"    | "Клиент"  | "Номер"     | "Специалист"                  |
		| "01.04.2025 21:22:02" | "Договор АО" | "Клиент1" | "000000017" | "Грунтова Мария Владимировна" |
* И Я выбираю документ «Обслуживание клиента» 
	И в таблице 'Список' я активизирую поле с именем 'Клиент'
	И в таблице 'Список' я выбираю текущую строку
	Тогда открылось окно "ОбслуживаниеКлиента * от *"
* И в документе «Обслуживание клиента» я заполняю Табличную часть
	И в таблице 'ВыполненныеРаботы' я нажимаю на кнопку с именем 'ВыполненныеРаботыДобавить'
	И в таблице 'ВыполненныеРаботы' в поле с именем 'ВыполненныеРаботыОписаниеРабот' я ввожу текст "Обновление 1С"
	И в таблице 'ВыполненныеРаботы' я активизирую поле с именем 'ВыполненныеРаботыФактическиПотраченоЧасов'
	И в таблице 'ВыполненныеРаботы' в поле с именем 'ВыполненныеРаботыФактическиПотраченоЧасов' я ввожу текст "6,00"
	И в таблице 'ВыполненныеРаботы' я активизирую поле с именем 'ВыполненныеРаботыЧасыКОплатеКлиенту'
	И в таблице 'ВыполненныеРаботы' в поле с именем 'ВыполненныеРаботыЧасыКОплатеКлиенту' я ввожу текст "6,00"
	И в таблице 'ВыполненныеРаботы' я завершаю редактирование строки
* Затем Я записываю документ «Обслуживание клиента»
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Затем Я прикрепляю файл
	Тогда открылось окно "ОбслуживаниеКлиента * от *"
	И В текущем окне я нажимаю кнопку командного интерфейса "Присоединенные файлы"
	И я выбираю файл 'D:\Документы\422717.jpg'
	И я нажимаю на кнопку с именем 'ДобавитьИзФайлаНаДиске'
	Тогда открылось окно "ОбслуживаниеКлиента * от *"
* Затем Я закрываю документ «Обслуживание клиента»
	И В текущем окне я нажимаю кнопку командного интерфейса "Основное"
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна "ОбслуживаниеКлиента * от *" в течение 20 секунд	