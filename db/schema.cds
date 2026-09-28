namespace ssapplication;

//Syntax for Identifier
//type ![EmployeeName] : String(50);

//type this and replace all String(50) with nameStr
type nameStr : String(50);
//type nameInt : Integer;

using {ssapplication.common as common} from './common';

using {managed, temporal} from '@sap/cds/common';

entity Students : common.address, common.feeasp, managed, temporal {
    key StudentId:Integer;
    StudentName:common.nameStr;
    FatherName:common.nameStr;
    MotherName:common.nameStr;
    ContactNo:String(20);
    Fee: Decimal;
    //Currency: common.nameStr;
    //City: common.nameStr;
    //Country: common.nameStr;
    abc_class: Association to one Classes;
    book: Association to many Books on book.parent = $self;
}
 entity Classes{
    key ClassId:Integer;
    ClassName:common.nameStr;
    TeacherName:String(20);
}
 entity Employees: managed, temporal{
    key employeeId:Integer;
    employeeName:common.nameStr;
    salary:String(10);
    department:common.nameStr;
    currencyCode:String(100);
    city:String(100);
    country:String(100);
    division:Association to one Divisions;
 
 
 }
 entity Divisions: managed, temporal{
    key divisionId:Integer;
    divisionName:String(100);
    city:String(100);
    country:String(100);
 }

 entity Books{
    key BookId: Integer;
    parent: Association to Students;
    studentName: common.nameStr;
    bookauthor: common.nameStr;
    price: Decimal(10,2);
    StudId: Integer;
    doi: Date;
    dor: Date;
}
 entity StudentDetails{
   key StudId: Integer;
   subject: common.nameStr;
   marks: Integer;
   def: Association to one Students;
 }