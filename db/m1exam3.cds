// namespace ssapplication;

// entity Customer {
//     key CustomerID : Integer;
//     FirstName      : String(100);
//     LastName       : String(100);
//     Email          : String(100);
// }

// entity Product {
//     key ProductID  : Integer;
//     ProductName    : String(100);
//     Price          : Decimal(10,2);
// }

// entity Order {
//     key OrderID    : Integer;
//     OrderDate      : Date;
//     TotalAmount    : Decimal(10,2);

//     Customer       : Association to Customer;
// }

// entity OrderProduct {
//     key OrderID    : Integer;
//     key ProductID  : Integer;

//     order          : Association to Order;
//     product        : Association to Product;
// }