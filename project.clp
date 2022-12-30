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

;(GetLecturerInDep "dept1")
(deffunction GetLecturerInDep (?dep)
	(bind $?c (send (nth$ 1 (find-instance ((?f Department)) (eq ?f:name_ ?dep))) get-lecturer))
	(open "out.dat" w "a")
    (printout w ?dep $?c  crlf)
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

;(GetCourses "student1")
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

(faculty1 of Faculty (name_ "FCAI") (courses "course1" "course2" "course3" "course4") (department "dept1" "dept2" ))
(faculty2 of Faculty (name_ "Engineering") (courses "course5" ) (department "dept3"))

(department1 of Department (name_ "dept1") (ta "ta1" "ta2" ) (lecturer "lec1" "lec2"))
(department2 of Department (name_ "dept2") (ta "ta3" ) (lecturer "lec3" ))
(department3 of Department (name_ "dept3") (ta "ta3" ) (lecturer "lec3" ))

(course1 of Course (name_ "course1") )
(course2 of Course (name_ "course2") )
(course3 of Course (name_ "course3") )
(course4 of Course (name_ "course4") )
(course5 of Course (name_ "course5") )

(student1 of Student (name_ "student1") (courses "course1" "course2" "course3"))
(student2 of Student (name_ "student2") (courses "course1" "course2" "course3" "course4"))
(ta1 of TA (name_ "ta1") (courses "course1" ))
(ta2 of TA (name_ "ta2")(courses "course3" ))
(lecturer1 of Lecturer (name_ "lec1") (courses "course1" ))
(lecturer2 of Lecturer (name_ "lec2"))
(lecturer3 of Lecturer (name_ "lec3")(courses "course" ))

)
