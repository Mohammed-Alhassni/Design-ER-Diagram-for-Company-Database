#Task 1: Design-ER-Diagram-for-Company-Database
📝 Instruction (Task Description):
Please design an Entity-Relationship (ER) diagram based on the following company structure and business rules:


📌 Entities & Attributes:

Employee

Attributes: SSN (Primary Key), Fname, Lname, BirthDate, Gender
Each employee:
Must be assigned to one department
May supervise other employees (recursive relationship)
May have dependents (if still employed)
Works on multiple projects, with WorkingHours recorded for each


Department

Attributes: DName, DNUM (Primary Key), Locations (multivalued)
Each department:
Must be managed by one employee (with HireDate as attribute of relationship)
May include multiple employees
Can have multiple projects


Project

Attributes: PName, PNumber (Primary Key), Location, City
Each project:
Must be assigned to one department
Has many employees working on it (many-to-many with Employee), each with WorkingHours


Dependent

Attributes: DependentName (Primary Key under Employee), Gender, BirthDate
Only exists for currently employed employees
Related only to one employee


🔁 Relationships & Constraints:

An employee supervises other employees (recursive relationship).
An employee works on multiple projects and each project has many employees, with working hours stored in the relationship.
A department is managed by one employee, and this management relationship includes a HireDate.
A project belongs to one department but departments may have many projects.
A department may have multiple employees, but an employee belongs to exactly one department.
Dependents are associated with their parent employee, and should be removed if the employee leaves the company.

#Task 2: Apply ER-to-Relational Mapping Rules to Existing ER Diagram

📝 Instruction (Task Description):

In this task, you will build on the ER Diagram you created previously for the company's employee-project-department system.
Your objective is to apply ER-to-Relational Mapping rules and convert your diagram into a complete relational schema.

🛠️ What to do:

Use your existing ER Diagram from the previous task as the foundation.
Apply the standard ER Mapping Rules:
Convert each strong entity into a table.
Convert weak entities (if any) with proper foreign keys and primary keys.
Convert multivalued attributes into separate relations.
Map 1:1, 1:N, and M:N relationships correctly using foreign keys or bridge tables as needed.
Include any necessary attributes of relationships (e.g., working hours, hire date).
Identify primary keys and foreign keys clearly in your schema.
Use correct notation to show foreign key dependencies and constraints.

📄 Deliverables:

A complete Relational Schema document/table based on your ERD.
Make sure it includes all entities, attributes, and relationships with keys and constraints clearly defined.
