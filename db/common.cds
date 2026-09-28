namespace ssapplication.common;

//after writing this, replace String(100) for country and currency to country and currency
using {Country, Currency} from '@sap/cds/common';

type nameStr : String(50);

aspect address{
   Doorno: String(20);
   Street: String(50);
   Landmark: String(50);
   City: String(100);
   Postal: Integer;
   State: String(100);
   Country: Country;
   Region: String(20);
}

aspect feeasp{
    gross_fee: Decimal(10,2);
    Tax: Decimal(10,2);
    total_fee: Decimal(10,2);
    Currency: Currency;
}

type Gender: String(20) enum{
    F='Female';
    M='Male';
    U='Undisclosed';
}

type AmountT : Decimal(10,2) @(
    Semantics.amount.currencyCode : 'CURRENCY_CODE',
    sap.unit : 'CURRENCY_CODE'
);
 
type PhoneNumber: String(20) @assert.format : '^(?:(?:\+|00)?91[\-\s]?)?[6-9]\d{9}$';
