
#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	//Если Параметры.ДляВнешнегоПользователя Тогда
	//	НастройкиВхода = ПользователиСлужебныйПовтИсп.Настройки().ВнешниеПользователи;
	//Иначе
	//	НастройкиВхода = ПользователиСлужебныйПовтИсп.Настройки().Пользователи;
	//КонецЕсли;
	
	МинимальнаяДлинаПароля = ПолучитьМинимальнуюДлинуПаролейПользователей();
	
	//Если МинимальнаяДлинаПароля < НастройкиВхода.МинимальнаяДлинаПароля Тогда
	//	МинимальнаяДлинаПароля = НастройкиВхода.МинимальнаяДлинаПароля;
	//КонецЕсли;
	
	Если МинимальнаяДлинаПароля <= 8 Тогда
		МинимальнаяДлинаПароля = 8;
	КонецЕсли;
	
	ПараметрыПароля = ПользователиСлужебный.ПараметрыПароля(МинимальнаяДлинаПароля, Истина);
	
	НовыйПароль = ПользователиСлужебный.СоздатьПароль(ПараметрыПароля);
	
КонецПроцедуры

#КонецОбласти
