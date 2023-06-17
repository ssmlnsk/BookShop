# Книжный магазин "Дом книги"

Программа способна обрабатывать заказы клиентов книжного магазина мгновенно, показывая какая книга есть в наличии и существенно ускоряя процесс работы системы всего книжного магазина, устраняя затраты и нивелируя ошибки персонала книжного магазина, имея на такой случай специальную систему защиты.

***
### Необходимые условия

Для работы с проектом необходимо установить среду разработки PyCharm, а также язык программирования Python версии 3.9 и MySQL Workbench. 

В MySQL Workbench нужно добавить базу данных для работы приложения (если есть подключение к серверу):
  1. открыв подключение, во вкладке *"Server"* выбрать *"Data Import"*

      ![image](https://user-images.githubusercontent.com/70947811/217860981-4ad4319d-92e8-4fae-a67d-5fd5579961fd.png)

  3. выбрать пункт *"Import from self-Contained File"* и указать путь к файлу *"DumpBookShop.sql"*

  4. нажать на кнопку ![image](https://user-images.githubusercontent.com/70947811/217873879-dfab5dda-e93d-4749-81cc-3a7e360512bc.png) .

## Установка desktop-приложения

Для установки desktop-приложения необходимо запустить файл *"BookShopSetup.exe"* и откроется установщик. Далее следовать инструкциям в установщике.

## Работа с проектом

Для копирования проекта с сервиса GitHub необходимо перейти в репозиторий проекта и по нажатию на кнопку ![Без имени-2](https://user-images.githubusercontent.com/70947811/223948449-d3e2378a-aa18-42b1-9a81-72443a45d62c.png) , выбрать вид скачивания *"ZIP"* и дождаться скачивания архива. После того, как архив скачался, необходимо его распаковать в любое удобное место на компьютере.

***

Далее нужно открыть папку с проектом в PyCharm, затем  добавить интерпретатор. Для этого нужно:
  
  1.	во вкладке *"File"* выбрать пункт *"Settings"*;
  
  2.	в поисковой строке ввести *"Python Interpreter"* и открыть данную вкладку;
  
  3.	в строке *"Python Interpreter"* нажать на кнопку ![image](https://user-images.githubusercontent.com/70947811/217787251-dde89c77-978a-4c21-a763-05516fb33681.png) и выбрать "Add";
  
  4.	перейти во вкладку *"System Interpreter"*;
  
  5.	в строке *"Interpreter"* нажать на кнопку ![image](https://user-images.githubusercontent.com/70947811/217787194-5324d8a1-d0e2-4162-875f-34741faab80d.png) ;
  
  6.	указать путь к файлу *"Python.exe"*. Пример:
   
>C:\Users\имя пользователя\AppData\Local\Programs\Python\Python39\python.exe
  
  После добавления интерпретатора, необходимо добавить пакеты, нажав на кнопку ![image](https://user-images.githubusercontent.com/70947811/217788595-89b3f5d0-fa92-4f94-840c-9bd7de748085.png) :
  
  - PyQt5
  - PyQt5-tools
  - PyInstaller
  - barcode
  - img2pdf
  - mysql
  - mysql-connector-python
  - Pillow
  - fpdf
  - captcha

В папке проекта *"BookShop"* в файле *"database.py"* необходимо изменить в строке подключения переменные *"user"* и *"password"* на свои, для подключения к базе данных. Либо создать MySQL новый профиль с *user=root* и *password=root*

В папке проекта *"BookShop"* найти файл *"gui.py"*, нажать ПКМ по нему и выбрать *"Run 'gui'"*. Это назначит его запускающимся файлом и запустит проект.

![image](https://user-images.githubusercontent.com/70947811/217841092-49d68263-e826-4abb-93e7-068ebbb9dbad.png)

После этого можно работать с проектом.

***

## Автор

**Дарья Макарова** - [ssmlnsk](https://github.com/ssmlnsk)
