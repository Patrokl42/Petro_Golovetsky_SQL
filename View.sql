CREATE VIEW studentInformation AS

SELECT
	RSTUDENT.studentName,
	RSTUDENT.studentSurname,
	RSTUDENT.studentMiddleName,
	RSTUDENT.studentGender,
	RSTUDENT.studentTypeTraining,
	RSTUDENT.studentDateOfBirth,
	RGROUP.groupName,
	RDEANERY.deaneryName
FROM RSTUDENT 
JOIN RGROUP ON RSTUDENT.groupID = RGROUP.groupID
JOIN RDEANERY ON RDEANERY.deaneryID = RGROUP.deaneryID