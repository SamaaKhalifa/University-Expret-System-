(deftemplate Department 
(slot depn (type STRING))
)
(deftemplate TA 
(slot depta (type STRING))
(multislot taname)
)
(defclass University
(is-a USER)
(role concrete)
(slot name_ (type STRING))
(multislot faculty  (type STRING))
)
;(GetFaculty "Cairo")
(deffunction GetFaculty (?uni)
	(bind $?faculty (send (nth$ 1 (find-instance ((?f University)) (eq ?f:name_ ?uni))) get-faculty))
	;(printout t $?faculty crlf)
	(open "out.dat" w "a")
    (printout w $?faculty crlf)
    (close w)
)
(defrule get_FacultyUni
	(GetFacultyuni ?uniName)
=>
	(GetFaculty ?uniName)
)
(defclass Faculty
(is-a USER)
(role concrete)
(slot name_ (type STRING))
(multislot courses  (type STRING))
(multislot department  (type STRING))
)

;(GetCoursesInFaculty "FCAI")
(deffunction GetCoursesInFaculty (?fac)
	(bind $?c (send (nth$ 1 (find-instance ((?f Faculty)) (eq ?f:name_ ?fac))) get-courses))
	;(printout t $?c crlf)
	(open "out.dat" w "a")
    (printout w $?c crlf)
	(close w)
)

(defrule get_CoursesFaculty
	(GetCoursFaculty ?facultyName)
=>
	(GetCoursesInFaculty ?facultyName)
 )

(defclass Department
(is-a USER)
(role concrete)
(slot name_ (type STRING))
(multislot ta (type STRING))
(multislot lecturer  (type STRING))
)



(deffunction GetAllTas (?dep)
	(bind $?ta (send (nth$ 1 (find-instance ((?f Department)) (eq ?f:name_ ?dep))) get-ta))
	;(printout t $?ta crlf)
	(open "out.dat" w "a")
    (printout w $?ta crlf)
	(close w)
)

;(deffacts def (GetTas "dept2") )
(defrule get_TAsDep
	(GetTas ?depName)
=>
	(GetAllTas ?depName)
	
  )
;(bind $?ta (send (nth$ 1 (find-instance ((?f Department)) (eq ?f:name_ "dept1"))) get-ta))

(defclass Course
(is-a USER)
(role concrete)
(slot name_ (type STRING))
)

(defclass Person
(is-a USER)
(role abstract) 
(slot name_ (type STRING))
)

(defclass Lecturer
(is-a Person)
(role concrete)
(multislot courses (type STRING))
)

;(GetLecturerInDep "CS")
(deffunction GetLecturerInDep (?dep)
	(bind $?c (send (nth$ 1 (find-instance ((?f Department)) (eq ?f:name_ ?dep))) get-lecturer))
	(open "out.dat" w "a")
    (printout w $?c crlf)
    (close w)
)

;(GetLecturerInFaculty "FCAI")
(deffunction GetLecturerInFaculty (?fac)
	(bind $?c (send (nth$ 1 (find-instance ((?f Faculty)) (eq ?f:name_ ?fac))) get-department))
	(bind ?dcount (length$ $?c))
	(while (> ?dcount 0)
		(GetLecturerInDep (nth$ ?dcount $?c ))
		(bind ?dcount (- ?dcount 1))
	)

)
(defrule get_GetLectFaculty
	(GetLectFaculty ?facultyName)
=>
	(GetLecturerInFaculty ?facultyName)
)
(defclass TA
(is-a Person)
(role concrete)
(multislot courses (type STRING))
)

(defclass Student
(is-a Person)
(role concrete)
(multislot courses (type STRING))
)

;(GetCourses "Noura Ashraf")
(deffunction GetCourses (?stud)
	(bind $?course (send (nth$ 1 (find-instance ((?f Student)) (eq ?f:name_ ?stud))) get-courses))
	;(printout t $?course crlf)
	(open "out.dat" w "a")
    (printout w $?course crlf)
	(close w)
)

(defrule get_courses
	(GetCours ?studName)
=>
	(GetCourses ?studName)

  )
(definstances instances

(univirsity1 of University (name_ "Cairo")(faculty "FCAI" "Engineering" ))

(faculty1 of Faculty (name_ "FCAI") (courses "CS50" "IS50" "AI50" "DS50" "IT50") (department "CS" "IS" "AI" "IT"))
(faculty2 of Faculty (name_ "Engineering") (courses "IT50" ) (department "AI50" "IT50"))

(department1 of Department (name_ "CS") (ta "Kholod" "Ahmed" ) (lecturer "Abeer" "Ameen"))
(department2 of Department (name_ "IS") (ta "Ahmed" ) (lecturer "soha" ))
(department3 of Department (name_ "AI") (ta "Toka" ) (lecturer "Noura" ))
(department4 of Department (name_ "IT") (ta "Toka" ) (lecturer "Mohammed" ))

(course1 of Course (name_ "CS50") )
(course2 of Course (name_ "IS50") )
(course3 of Course (name_ "AI50") )
(course4 of Course (name_ "DS50") )
(course5 of Course (name_ "IT50") )

(student1 of Student (name_ "Noura Ashraf") (courses "CS50" "IS50" "AI50"))
(student2 of Student (name_ "Samaa Khalifa") (courses "CS50" "DS50" "AI50" "IT50"))
(student3 of Student (name_ "Ahmed Ibrahim") (courses "CS50" "DS50" ))
(student4 of Student (name_ "Sondos Emara") (courses  "AI50" "IT50"))

(ta1 of TA (name_ "Kholod") (courses "CS50" ))
(ta2 of TA (name_ "Ahmed")(courses "AI50" ))
(ta3 of TA (name_ "Rawaa")(courses "DS50" ))
(ta4 of TA (name_ "Toka")(courses "IT50" ))

(lecturer1 of Lecturer (name_ "Abeer") (courses "CS50"  "AI50"))
(lecturer2 of Lecturer (name_ "soha") (courses "CS50" "DS50" ))
(lecturer3 of Lecturer (name_ "Ameen")(courses "AI50" "IS50" ))

)
