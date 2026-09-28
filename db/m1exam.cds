// namespace ssapplication;

// //Add the Departments entity
// entity Departments {
//     key department_id: Integer;
//         department_name: String(100);
//         manager_id: Integer;
//         employees: Association to many Employees on employees.Department = $self;
// }

// // Employees entity
// entity Employees {
//     key employee_id: Integer;
//         first_name: String(50);
//         last_name: String(50);
//         email: String(100);
//         hire_date: Date;
//         Department: Association to one Departments;
//         assignments: Association to many ProjectAssignments on assignments.Employee = $self;
//         timesheets: Association to many Timesheets on timesheets.Employee = $self;
// }

// // Projects entity
// entity Projects {
//     key project_id: Integer;
//         project_name: String(100);
//         start_date: Date;
//         budget: Decimal(20,2);
//         assignments: Association to many ProjectAssignments on assignments.Project = $self;
//         clients: Association to many ProjectClients on clients.Project = $self;
//         timesheets: Association to many Timesheets on timesheets.Project = $self;
// }


// // Project Assignments entity
// entity ProjectAssignments {
//     key assignment_id: Integer;
//         Employee: Association to one Employees;
//         Project: Association to one Projects;
//         role: String(100);
//         hours_per_week: Integer;
// }


// // Clients entity
// entity Clients {
//     key client_id: Integer;
//         client_name: String(100);
//         contact_email: String(100);
//         projects: Association to many ProjectClients on projects.Client = $self;
// }


// // Project Clients entity
// entity ProjectClients {
//     key Project: Association to one Projects;
//     key Client: Association to one Clients;
// }

// // Timesheets entity
// entity Timesheets {
//     key timesheet_id: Integer;
//         Employee: Association to one Employees;
//         Project: Association to one Projects;
//         date: Date;
//         hours_logged: Decimal(4,1);
// }