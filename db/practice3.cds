namespace ssapplication;

entity Author{
    key Name : String(255);
    key Address  : String(255);
    URL      : String(255);
    books : Association to many Book on books.Author = $self;
}

entity Publisher{
    key Name : String(255);
    Address  : String(255);
    Phone    : String(255);
    URL      : String(255);
    books : Association to many Book on books.Publisher = $self;
}

entity Book{
    key ISBN : String(255);
    Publisher : Association to one Publisher;
    Author : Association to one Author;
    Year  : Integer;
    Title : String(255);
    Price : Decimal(19,2);
    basketBooks : Association to many ShoppingBasketBook on basketBooks.Book = $self;
    warehouseBooks : Association to many WarehouseBook on warehouseBooks.Book = $self;
}

entity Customer{
    key Email : String(255);
    Name : String(255);
    Phone : String(255);
    Address : String(255);
    baskets : Association to many ShoppingBasket on baskets.Customer = $self;
}

entity ShoppingBasket{
    key ID : Integer;
    Customer : Association to one Customer;
    basketBooks : Association to many ShoppingBasketBook on basketBooks.ShoppingBasket = $self;
}

entity ShoppingBasketBook{
    key ShoppingBasket : Association to one ShoppingBasket;
    key Book : Association to one Book;
    Count : Integer;
}

entity Warehouse{
    key Code : Integer;
    Phone   : String(255);
    Address : String(255);
    warehouseBooks : Association to many WarehouseBook on warehouseBooks.Warehouse = $self;
}

entity WarehouseBook{
    key Warehouse : Association to one Warehouse;
    key Book      : Association to one Book;
    Count : Integer;
}