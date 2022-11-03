using {mysrv} from '../../../srv/mysrv';

annotate mysrv.ProductsSRV with @

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

