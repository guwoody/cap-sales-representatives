using SalesRepService as service from '../../srv/service';
annotate service.SalesRepresentatives with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>FirstName}',
                Value : firstName,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>LastName}',
                Value : lastName,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>BirthDate}',
                Value : birthDate,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Email}',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>PhoneNumber}',
                Value : phoneNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Country}',
                Value : country_code,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Active}',
                Value : active,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.SelectionFields : [ firstName, lastName ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : fullName,
        },
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : fullName,
        },
        TypeName : '',
        TypeNamePlural : '',
    },
);

annotate service.SalesRepresentatives with {
    superior @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'SalesRepresentatives',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : superior_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'firstName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'lastName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'birthDate',
            },
        ],
    }
};

using from './tree-view';
