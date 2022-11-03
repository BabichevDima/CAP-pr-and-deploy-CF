namespace myCompany.products;

entity Products {

    key id           : Integer;
        name         : String(65) @title : 'Name';
        price        : Integer;
        supplier     : String(65);
        workSince    : Date;
        remains      : Integer;
        availability : String(24);
        criticality  : Integer;

}

annotate Products with @

UI : {
    SelectionFields : [name],
    LineItem        : [
        {
            Label : 'Id',
            Value : id
        },
        {
            Label : 'Name',
            Value : name
        },
        {
            Label : 'Supplier',
            Value : supplier
        },
        {
            Label : 'Work since',
            Value : workSince
        },
        {
            Label : 'Price',
            Value : price
        },
        {
            Label : 'Availability',
            Value : availability,
            Criticality: criticality
        }
    ],

    HeaderInfo      : {
        TypeName       : name,
        TypeNamePlural : name,
        Title          : {
            Label : 'Name',
            Value : name
        },
        Description    : {Value : price}
    },
};
