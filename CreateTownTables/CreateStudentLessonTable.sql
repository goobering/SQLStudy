CREATE TABLE StudentLesson (
	StudentId INT NOT NULL,
	LessonId INT NOT NULL,

	CONSTRAINT PK_StudentLesson
		PRIMARY KEY(StudentId, LessonId),
	CONSTRAINT FK_StudentLesson_Student
		FOREIGN KEY(StudentId) REFERENCES Student(Id),
	CONSTRAINT FK_StudentLesson_Lesson
		FOREIGN KEY(LessonId) REFERENCES Lesson(Id)
);