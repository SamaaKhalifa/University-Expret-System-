# *Team* :<br>
  - **Ahmed Ibrahim**  => ahmedibrahim55518@gmail.com    github => https://github.com/Ahmed-Ibrahim-30 <br> 
  - **Samaa Khalifa Elsayed** =>  samaakhalifa93@gmail.com      github => https://github.com/SamaaKhalifa <br> 
  - **Noura Ashraf AbdElnaby** => nourraasshhraf@gmail.com      github =>  https://github.com/NouraAshraff<br> 
  - **Sondos Emara Gomaa Basha** => sondos.emara2002@gmail.com  github =>  https://github.com/SondosEmara<br> 
# University-Expret-System-
    ●This project introduce an expert university system 
    and the different relations between its parts represented as facts and rules in clips and hierarchy ontology in protégé.
    It also discusses how to infer on it using rule based system “clips” and SparQl query language.

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
 **Object Properties(Relationships), Data Property and Classes:**<br>
 **1 - Class (University)**
 
     ⦁ Data properties: UniversityName.
     ⦁ Object properties: hasFaculty.
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/1.png?raw=true)
   
   **2 - Class (Faculty)**
 
     ⦁ Data properties: FacultyName.
     ⦁ Object properties: hasPlaces ,hasDepartment and isInside.
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/2.png?raw=true)
   **3 - Class (Course)**
 
     ⦁ Data properties: CourseName.
     ⦁ Object properties: hasExam , hasStudent, hasWork,isToughtBy and is_taught_in .
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/3.png?raw=true)
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/4.png?raw=true)
   **4 - Class (Course Work)**
 
     ⦁ Data properties: workName.
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/5.png?raw=true)
   **5 - Class (Department)**
 
     ⦁ Data properties: DepartmentName.
     ⦁ Object properties: hasLecturer and hasTA.
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/6.png?raw=true)
   **6 - Class (Faculty_Place)**
 
     ⦁ Data properties: PlaceName.
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/7.png?raw=true)
   **7 - Class (Academic_Staff)**
 
     ⦁ Object properties: hasThesis ,inDepartment  and teach.
   ![This is an image](https://github.com/SamaaKhalifa/University-Expret-System-/blob/main/Screenshots/8.png?raw=true)
   




