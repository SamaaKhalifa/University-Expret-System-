# *Team* :<br>
  - **Ahmed Ibrahim**  => ahmedibrahim55518@gmail.com    github => https://github.com/Ahmed-Ibrahim-30 <br> 
  - **Samaa Khalifa Elsayed** =>  samaakhalifa93@gmail.com      github => https://github.com/SamaaKhalifa <br> 
  - **Noura Ashraf AbdElnaby** => nourraasshhraf@gmail.com      github =>  https://github.com/NouraAshraff<br> 
  - **Sondos Emara Gomaa Basha** => sondos.emara2002@gmail.com  github =>  https://github.com/SondosEmara<br> 
# University-Expert-System
    ● This project introduce an expert university system 
    and the different relations between its parts represented as facts
    and rules in clips and hierarchy ontology in protégé.
    It also discusses how to infer on it using rule based system “clips” 
    and SparQl query language.

# University-Expret-System has the Following Classes:
- University
- Faculty
- Department
- Program (Module)
- Course
- academic staff
- Exams
- Course work
- Thesis
- Lecture hall
- Library
- Lab room
- Lecturer
- TA
- Student

# Part1 (ontology):

    ⦁	Define the different classes and subclasses in the system using ontology.
    ⦁	Define the relations between classes using object property. 
    ⦁	Define the attributes of each class using data property.
    ⦁	Define the individuals (instance) of each class.
    ⦁	Reason on the whole ontology system to infers new data.
    ⦁	Use SparQl query language to extract new knowledge.
 **Ontology Diagram:**
 ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/protege.jpg?raw=true)
 **Object Properties(Relationships), Data Property and Classes:**
 <br>**1 - Class (University)**
 
     ⦁ Data properties: UniversityName.
     ⦁ Object properties: hasFaculty.
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/1.png?raw=true)
   
   <br>**2 - Class (Faculty)**
 
     ⦁ Data properties: FacultyName.
     ⦁ Object properties: hasPlaces ,hasDepartment and isInside.
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/2.png?raw=true)
   <br>**3 - Class (Course)**
 
     ⦁ Data properties: CourseName.
     ⦁ Object properties: hasExam , hasStudent, hasWork,isToughtBy and is_taught_in .
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/3.png?raw=true)
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/4.png?raw=true)
   <br>**4 - Class (Course Work)**
 
     ⦁ Data properties: workName.
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/5.png?raw=true)
  <br> **5 - Class (Department)**
 
     ⦁ Data properties: DepartmentName.
     ⦁ Object properties: hasLecturer and hasTA.
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/6.png?raw=true)
  <br> **6 - Class (Faculty_Place)**
 
     ⦁ Data properties: PlaceName.
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/7.png?raw=true)
  <br> **7 - Class (Academic_Staff)**
 
     ⦁ Object properties: hasThesis ,inDepartment  and teach.
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/8.png?raw=true)
   <br> **8 - Class (Lecturer)**
 
     ⦁ Data properties: LecturerName.
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/9.png?raw=true)
   <br> **9 - Class (Lab_room)**<br>
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/10.png?raw=true)
   <br> **10 - Class (Lecture_hall)**<br>
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/11.png?raw=true)
   <br> **11 - Class (Library)**<br>
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/12.png?raw=true)
   <br> **12 - Class (Student)**
   
       ⦁ Data properties: GPA, level, studId and StudName.
       ⦁ Object properties: hasDepartment and study.
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/13.png?raw=true)
   <br> **13 - Class (TA)**
   
       ⦁ Data properties: TAName.
       ⦁ Object properties: inDept .
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/14.png?raw=true)
   <br> **14 - Class (Thesis)**
   
       ⦁ Data properties: TAName.
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/15.png?raw=true)


# Part2 (clips):

    ⦁	Define the different classes and subclasses in the system using clips.
    ⦁	Define the relations between classes using rules. 
    ⦁	Define the individuals (instance) of each class.
    ⦁	Create functions to be able to infer on data.
    ⦁	Use clips rule based system to extract new knowledge.
   **Graphical user Interface**<br>
   - Choose the query to run from the following: <br>
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/c1.png?raw=true)
   - Get all TAs belonging to a department. <br>
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/c2.png?raw=true)
   <br>**Result :) ^^** <br>
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/c3.png?raw=true)
   - Get the courses a student is currently studying.  <br>
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/c4.png?raw=true)
   <br>**Result :) ^^** <br>
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/c5.png?raw=true)
   
   - Get all the courses offered by a certain faculty.   <br>
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/c6.png?raw=true)
   <br>**Result :) ^^** <br>
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/c7.png?raw=true)
   
   - Get Lecturers of a faculty.  <br>
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/c8.png?raw=true)
   <br>**Result :) ^^** <br>
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/c9.png?raw=true)
   
   - Get all faculties of a university.  <br>
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/c10.png?raw=true)
   <br>**Result :) ^^** <br>
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/c11.png?raw=true)
