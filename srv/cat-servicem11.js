const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {

    const { Products } = this.entities;

    // CREATE
    this.on('createProduct', async (req) => {

        const { ProductID, ProductName, Price } = req.data;

        await INSERT.into(Products).entries({
            ProductID,
            ProductName,
            Price
        });

        return 'Product Created Successfully';
    });

    // READ
    this.on('readProducts', async () => {

        return await SELECT.from(Products);

    });

    // UPDATE
    this.on('updateProduct', async (req) => {

        const { ProductID, ProductName, Price } = req.data;

        await UPDATE(Products)
            .set({
                ProductName,
                Price
            })
            .where({ ProductID });

        return 'Product Updated Successfully';
    });

    // DELETE
    this.on('deleteProduct', async (req) => {

        const { ProductID } = req.data;

        await DELETE.from(Products)
            .where({ ProductID });

        return 'Product Deleted Successfully';
    });

});