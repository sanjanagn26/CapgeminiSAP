using { ssapplication as db } from '../db/practice3';

service CatalogService1 {

    entity AuthorSrv as projection on db.Author;
    entity PublisherSrv as projection on db.Publisher;
    entity BookSrv as projection on db.Book;
    entity CustomerSrv as projection on db.Customer;
    entity ShoppingBasketSrv as projection on db.ShoppingBasket;
    entity ShoppingBasketBookSrv as projection on db.ShoppingBasketBook;
    entity WarehouseSrv as projection on db.Warehouse;
    entity WarehouseBookSrv as projection on db.WarehouseBook;

    action createBook(
        Publisher_Name: String(255),
        Author_Name: String(255),
        Author_Address: String(255),
        ISBN: String(255),
        Title: String(255),
        Year: Integer,
        Price: Decimal(19,2)
    ) returns String;

    action createAuthor(
        Name: String(255),
        Address: String(255),
        URL: String(255)
    ) returns String;

    action createPublisher(
        Name: String(255),
        Address: String(255),
        Phone: String(255),
        URL: String(255)
    ) returns String;

    action createCustomer(
        Email: String(255),
        Name: String(255),
        Phone: String(255),
        Address: String(255)
    ) returns String;

    action createShoppingBasket(
        ID: Integer,
        Customer_Email: String(255)
    ) returns String;

    action createShoppingBasketBook(
        ShoppingBasket_ID: Integer,
        Book_ISBN: String(255),
        Count: Integer
    ) returns String;

    action createWarehouse(
        Code: Integer,
        Phone: String(255),
        Address: String(255)
    ) returns String;

    action createWarehouseBook(
        Warehouse_Code: Integer,
        Book_ISBN: String(255),
        Count: Integer
    ) returns String;

}