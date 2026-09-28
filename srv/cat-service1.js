const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {

    const { AuthorSrv, PublisherSrv, BookSrv, CustomerSrv, ShoppingBasketSrv, ShoppingBasketBookSrv, WarehouseSrv, WarehouseBookSrv } = this.entities;

    this.on('createBook', async (req) => {
        const { Publisher_Name, Author_Name, Author_Address, ISBN, Title, Year, Price } = req.data;
        await INSERT.into(BookSrv).entries({
            Publisher_Name,
            Author_Name,
            Author_Address,
            ISBN,
            Title,
            Year,
            Price
        });
        return 'Book Created Successfully';
    });

    this.on('createAuthor', async (req) => {
        const { Name, Address, URL } = req.data;
        await INSERT.into(AuthorSrv).entries({
            Name,
            Address,
            URL
        });
        return 'Author Created Successfully';
    });

    this.on('createPublisher', async (req) => {
        const { Name, Address, Phone, URL } = req.data;
        await INSERT.into(PublisherSrv).entries({
            Name,
            Address,
            Phone,
            URL
        });
        return 'Publisher Created Successfully';
    });

    this.on('createCustomer', async (req) => {
        const { Email, Name, Phone, Address } = req.data;
        await INSERT.into(CustomerSrv).entries({
            Email,
            Name,
            Phone,
            Address
        });
        return 'Customer Created Successfully';
    });

    this.on('createShoppingBasket', async (req) => {
        const { ID, Customer_Email } = req.data;
        await INSERT.into(ShoppingBasketSrv).entries({
            ID,
            Customer_Email
        });
        return 'ShoppingBasket Created Successfully';
    });

    this.on('createShoppingBasketBook', async (req) => {
        const { ShoppingBasket_ID, Book_ISBN, Count } = req.data;
        await INSERT.into(ShoppingBasketBookSrv).entries({
            ShoppingBasket_ID,
            Book_ISBN,
            Count
        });
        return 'ShoppingBasketBook Created Successfully';
    });

    this.on('createWarehouse', async (req) => {
        const { Code, Phone, Address } = req.data;
        await INSERT.into(WarehouseSrv).entries({
            Code,
            Phone,
            Address
        });
        return 'Warehouse Created Successfully';
    });

    this.on('createWarehouseBook', async (req) => {
        const { Warehouse_Code, Book_ISBN, Count } = req.data;
        await INSERT.into(WarehouseBookSrv).entries({
            Warehouse_Code,
            Book_ISBN,
            Count
        });
        return 'WarehouseBook Created Successfully';
    });

});