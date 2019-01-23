# Проектування та розробка бази даних «Деканат»

### Завдання 
Реалізувати облік оплат, навчальних заборгованостей, контроль успішності студентів та видачу довідок
### Щоб підняти базу даних потрібно імпортувати файл Deanery.sql
 
 #### Базу даних було реалізовано за допомогою таких таблиць:
>0. Deneary - код кафедри, назва кафедри, та ПІБ завідувача кафедри;  
>0. Student - номер студента, прізвище, по батькові та імя студента, його стать, код групи, форми навчання та датою народження;   
>0. Group - код групи, ім’я групи, код кафедри;  
>0. Payment - код оплати, дата оплати, сума оплати та код студента що оплатив;  
>0. Note - код студента, дата отримання довідки, код довідки, назва довідки, код кафедри;
>0. Employeers - код співробітника, код кафедри до якої належить співробітник, ім’я, фамілія, по батькові та наукову ступінь;
>0. Subject - код предмету та його назву;
>0. Academic_Perfomance - код студента, предмету, працівника, групи, код самої успішності та оцінку;
>0. Debtor - складається з таких атрибутів: код успішності та боржника, стан боржника (відпрацьовано/не відпрацьовано) та дату коли було його занесено.

#### Всі зв'язки зображені в ER-моделі
### Основні запити для роботи з базою даних:

>* ### Створює студента   
>USE deanery  
INSERT INTO RSTUDENT(studentName, studentSurname, studentMiddleName, studentGender, studentTypeTraining, studentDateOfBirth, groupID)  
VALUES('Ivan','Sirman','Mykolayovych','male','Full-time education','1988-12-12','2')  
>* ### Створює співробітника   
>USE deanery  
INSERT INTO REMPLOYEERS(deaneryID, employeesName, employeesSurname, employeesMiddleName, employeesScientificDegree)
VALUES('2','Mykola','Fetkiv','Ivanovich','Professor')
>* ### Створює деканат   
>USE deanery  
INSERT INTO RDEANERY(deaneryName, deaneryHeadDepartment)
VALUES('Department of Algebra and Geometry','Lavrynovich Ivan')
>* ### Створює предмет      
>USE deanery  
INSERT INTO CSUBJECT(subjectName)     
VALUES('Algebra')
>* ### Створює групу   
>USE deanery  
INSERT INTO RGROUP(groupName,deaneryID)
VALUES('Applied Mathematics',4)   
>* ### Створює довідку   
>USE deanery   
INSERT INTO JNOTE(deaneryID,studentID,noteDate,noteName)   
VALUES(2,61,'2018-11-12','Note of income')
>* ### Створює відомость про успішність предмету  
>USE deanery  
INSERT INTO JACADEMIC_PERFORMANCE(studentID,subjectID,employeersID,academic_perfomanceRating,groupID)  
VALUES(61,3,5,4,2)
>* ### Видаляє предмет з заданою назвою
>USE deanery
DELETE FROM CSUBJECT  
WHERE subjectName='Economics';
>* ### Видаляє базу даних
>USE deanery  
>DROP DATABASE deanery;
>* ### Вибирає всіх студентів в яких ім'я Іван
>USE deanery  
SELECT * FROM RSTUDENT  
WHERE (studentName = 'Ivan')

#### Під час розробки використовувались такі інструменти:
* Microsoft Sql Server Express 2017 - Система керування базами даних (СКБД)
* https://jbt.github.io/markdown-editor/ - онлайн генератор маркдаун розмітки
* https://www.lucidchart.com/ - онлайн генератор моделей
