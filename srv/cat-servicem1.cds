// using { ssapplication as db } from '../db/m1exam';


// service CatalogService3 {

//     // Entity Projections
//     entity DepartmentsSrv as projection on db.Departments;
//     entity EmployeesSrv as projection on db.Employees;
//     entity ProjectsSrv as projection on db.Projects;
//     entity ProjectAssignmentsSrv as projection on db.ProjectAssignments;
//     entity ClientsSrv as projection on db.Clients;
//     entity ProjectClientsSrv as projection on db.ProjectClients;
//     entity TimesheetsSrv as projection on db.Timesheets;

//     //CRUD Operations Start from here​‌

//     // Department Actions (create, read, update, delete)
//     action createDepartment(
//         department_id : Integer,
//         department_name : String(100),
//         manager_id : Integer
//     ) returns String;

//     action readDepartment(
//         department_id : Integer
//     ) returns DepartmentsSrv;

//     action updateDepartment(
//         department_id : Integer,
//         department_name : String(100)
//     ) returns String;

//     action deleteDepartment(
//         department_id : Integer
//     ) returns String;

//     // Employee Actions (create, read, update, delete)
//     action createEmployee(
//         employee_id : Integer,
//         first_name : String(50),
//         last_name : String(50),
//         email : String(100),
//         hire_date : Date,
//         Department_department_id : Integer
//     ) returns String;

//     action readEmployee(
//         employee_id : Integer
//     ) returns EmployeesSrv;

//     action updateEmployee(
//         employee_id : Integer,
//         email : String(100)
//     ) returns String;

//     action deleteEmployee(
//         employee_id : Integer
//     ) returns String;

//     // Project Actions (create, read, update, delete)
//     action createProject(
//         project_id : Integer,
//         project_name : String(100),
//         start_date : Date,
//         budget : Decimal(20,2)
//     ) returns String;

//     action readProject(
//         project_id : Integer
//     ) returns ProjectsSrv;

//     action updateProject(
//         project_id : Integer,
//         budget : Decimal(20,2)
//     ) returns String;

//     action deleteProject(
//         project_id : Integer
//     ) returns String;

//     // Project Assignment Actions (create, read, update, delete)
//     action createProjectAssignment(
//         assignment_id : Integer,
//         Employee_employee_id : Integer,
//         Project_project_id : Integer,
//         role : String(100),
//         hours_per_week : Integer
//     ) returns String;

//     action readProjectAssignment(
//         assignment_id : Integer
//     ) returns ProjectAssignmentsSrv;

//     action updateProjectAssignment(
//         assignment_id : Integer,
//         hours_per_week : Integer
//     ) returns String;

//     action deleteProjectAssignment(
//         assignment_id : Integer
//     ) returns String;

//     // Client Actions (create, read, update, delete)
//     action createClient(
//         client_id : Integer,
//         client_name : String(100),
//         contact_email : String(100)
//     ) returns String;

//     action readClient(
//         client_id : Integer
//     ) returns ClientsSrv;

//     action updateClient(
//         client_id : Integer,
//         contact_email : String(100)
//     ) returns String;

//     action deleteClient(
//         client_id : Integer
//     ) returns String;

//     // Project Client Actions (create, read, update, delete)
//     action createProjectClient(
//         Project_project_id : Integer,
//         Client_client_id : Integer
//     ) returns String;

//     action readProjectClient(
//         Project_project_id : Integer,
//         Client_client_id : Integer
//     ) returns ProjectClientsSrv;

//     action updateProjectClient(
//         Project_project_id : Integer,
//         Client_client_id : Integer,
//         New_Client_client_id : Integer
//     ) returns String;

//     action deleteProjectClient(
//         Project_project_id : Integer,
//         Client_client_id : Integer
//     ) returns String;

//     // Timesheet Actions (create, read, update, delete)
//     action createTimesheet(
//         timesheet_id : Integer,
//         Employee_employee_id : Integer,
//         Project_project_id : Integer,
//         date : Date,
//         hours_logged : Decimal(4,1)
//     ) returns String;

//     action readTimesheet(
//         timesheet_id : Integer
//     ) returns TimesheetsSrv;

//     action updateTimesheet(
//         timesheet_id : Integer,
//         hours_logged : Decimal(4,1)
//     ) returns String;

//     action deleteTimesheet(
//         timesheet_id : Integer
//     ) returns String;

// }