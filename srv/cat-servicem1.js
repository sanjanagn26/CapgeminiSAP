const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {

    const {
        DepartmentsSrv,
        EmployeesSrv,
        ProjectsSrv,
        ProjectAssignmentsSrv,
        ClientsSrv,
        ProjectClientsSrv,
        TimesheetsSrv
    } = this.entities;

    // Department Operations

    //create
    this.on('createDepartment', async (req) => {
        await INSERT.into(DepartmentsSrv).entries(req.data);
        return 'Department Created Successfully';
    });

    //read
    this.on('readDepartment', async (req) => {
        const { department_id } = req.data;
        return await SELECT.one.from(DepartmentsSrv)
            .where({ department_id });
    });

    //update
    this.on('updateDepartment', async (req) => {
        const { department_id, department_name } = req.data;
        await UPDATE(DepartmentsSrv)
            .set({ department_name })
            .where({ department_id });
        return 'Department Updated Successfully';
    });

    //delete
    this.on('deleteDepartment', async (req) => {
        const { department_id } = req.data;
        await DELETE.from(DepartmentsSrv)
            .where({ department_id });
        return 'Department Deleted Successfully';
    });

    // Employee Operations

    //create
    this.on('createEmployee', async (req) => {
        await INSERT.into(EmployeesSrv).entries(req.data);
        return 'Employee Created Successfully';
    });

    //read
    this.on('readEmployee', async (req) => {
        const { employee_id } = req.data;
        return await SELECT.one.from(EmployeesSrv)
            .where({ employee_id });
    });

    //update
    this.on('updateEmployee', async (req) => {
        const { employee_id, email } = req.data;
        await UPDATE(EmployeesSrv)
            .set({ email })
            .where({ employee_id });
        return 'Employee Updated Successfully';
    });

    //delete
    this.on('deleteEmployee', async (req) => {
        const { employee_id } = req.data;
        await DELETE.from(EmployeesSrv)
            .where({ employee_id });
        return 'Employee Deleted Successfully';
    });

    // Project Operations

    //create
    this.on('createProject', async (req) => {
        await INSERT.into(ProjectsSrv).entries(req.data);
        return 'Project Created Successfully';
    });

    //read
    this.on('readProject', async (req) => {
        const { project_id } = req.data;
        return await SELECT.one.from(ProjectsSrv)
            .where({ project_id });
    });

    //update
    this.on('updateProject', async (req) => {
        const { project_id, budget } = req.data;
        await UPDATE(ProjectsSrv)
            .set({ budget })
            .where({ project_id });
        return 'Project Updated Successfully';
    });

    //delete
    this.on('deleteProject', async (req) => {
        const { project_id } = req.data;
        await DELETE.from(ProjectsSrv)
            .where({ project_id });
        return 'Project Deleted Successfully';
    });

    // Project Assignment Operations

    //create
    this.on('createProjectAssignment', async (req) => {
        await INSERT.into(ProjectAssignmentsSrv).entries(req.data);
        return 'Project Assignment Created Successfully';
    });

    //read
    this.on('readProjectAssignment', async (req) => {
        const { assignment_id } = req.data;
        return await SELECT.one.from(ProjectAssignmentsSrv)
            .where({ assignment_id });
    });

    //update
    this.on('updateProjectAssignment', async (req) => {
        const { assignment_id, hours_per_week } = req.data;
        await UPDATE(ProjectAssignmentsSrv)
            .set({ hours_per_week })
            .where({ assignment_id });
        return 'Project Assignment Updated Successfully';
    });

    //delete
    this.on('deleteProjectAssignment', async (req) => {
        const { assignment_id } = req.data;
        await DELETE.from(ProjectAssignmentsSrv)
            .where({ assignment_id });
        return 'Project Assignment Deleted Successfully';
    });

    // Client Operations

    //create
    this.on('createClient', async (req) => {
        await INSERT.into(ClientsSrv).entries(req.data);
        return 'Client Created Successfully';
    });

    //read
    this.on('readClient', async (req) => {
        const { client_id } = req.data;
        return await SELECT.one.from(ClientsSrv)
            .where({ client_id });
    });

    //update
    this.on('updateClient', async (req) => {
        const { client_id, contact_email } = req.data;
        await UPDATE(ClientsSrv)
            .set({ contact_email })
            .where({ client_id });
        return 'Client Updated Successfully';
    });

    //delete
    this.on('deleteClient', async (req) => {
        const { client_id } = req.data;
        await DELETE.from(ClientsSrv)
            .where({ client_id });
        return 'Client Deleted Successfully';
    });

    // Project Client Operations

    //create
    this.on('createProjectClient', async (req) => {
        await INSERT.into(ProjectClientsSrv).entries(req.data);
        return 'Project Client Created Successfully';
    });

    //read
    this.on('readProjectClient', async (req) => {
        const {
            Project_project_id,
            Client_client_id
        } = req.data;
        return await SELECT.one.from(ProjectClientsSrv)
            .where({
                Project_project_id,
                Client_client_id
            });
    });

    //update
    this.on('updateProjectClient', async (req) => {
        const {
            Project_project_id,
            Client_client_id,
            New_Client_client_id
        } = req.data;
        await UPDATE(ProjectClientsSrv)
            .set({
                Client_client_id: New_Client_client_id
            })
            .where({
                Project_project_id,
                Client_client_id
            });
        return 'Project Client Updated Successfully';
    });

    //delete
    this.on('deleteProjectClient', async (req) => {
        const {
            Project_project_id,
            Client_client_id
        } = req.data;
        await DELETE.from(ProjectClientsSrv)
            .where({
                Project_project_id,
                Client_client_id
            });
        return 'Project Client Deleted Successfully';
    });

    // Timesheet Operations

    //create
    this.on('createTimesheet', async (req) => {
        await INSERT.into(TimesheetsSrv).entries(req.data);
        return 'Timesheet Created Successfully';
    });

    //read
    this.on('readTimesheet', async (req) => {
        const { timesheet_id } = req.data;
        return await SELECT.one.from(TimesheetsSrv)
            .where({ timesheet_id });
    });

    //update
    this.on('updateTimesheet', async (req) => {
        const { timesheet_id, hours_logged } = req.data;
        await UPDATE(TimesheetsSrv)
            .set({ hours_logged })
            .where({ timesheet_id });
        return 'Timesheet Updated Successfully';
    });

    //delete
    this.on('deleteTimesheet', async (req) => {
        const { timesheet_id } = req.data;
        await DELETE.from(TimesheetsSrv)
            .where({ timesheet_id });
        return 'Timesheet Deleted Successfully';
    });

});