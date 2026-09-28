// using ssapplication from '../db/m1exam3';

// service CatalogService5 {

//     entity Customers as projection on ssapplication.Customer;
// entity Products as projection on ssapplication.Product;
// entity Orders as projection on ssapplication.Order;
// entity OrderProducts as projection on ssapplication.OrderProduct;

//     action createProduct(
//         ProductID   : Integer,
//         ProductName : String,
//         Price       : Decimal(10,2)
//     ) returns String;

//     action updateProduct(
//         ProductID   : Integer,
//         ProductName : String,
//         Price       : Decimal(10,2)
//     ) returns String;

//     action deleteProduct(
//         ProductID   : Integer
//     ) returns String;

//     action readProducts() returns array of Products;
// }