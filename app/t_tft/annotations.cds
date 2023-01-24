using ManagentService as service from '../../srv/managent-service';

annotate service.t_tft with @(
    UI.HeaderInfo      : {
        TypeName       : 'Tipo Fattura SD',
        TypeNamePlural : 'Tipi Fattura SD',
        Title          : {
            $Type : 'UI.DataField',
            Value : fkart
        },
        Description    : {
            $Type : 'UI.DataField',
            Value : fkart
        }
    },

    UI.SelectionFields : [
        vkorg,
        fkart,
        pstyv
    ],

    UI.Identification  : [
        {Value : vkorg},
        {Value : fkart},
        {Value : pstyv},
    ],


    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : vkorg,
        },
        {
            $Type : 'UI.DataField',
            Value : fkart,
        },
        {
            $Type : 'UI.DataField',
            Value : pstyv,
        },
        {
            $Type : 'UI.DataField',
            Value : zsegno,
        },
    ]
);
annotate service.t_tft with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : vkorg,
            },
            {
                $Type : 'UI.DataField',
                Value : fkart,
            },
            {
                $Type : 'UI.DataField',
                Value : pstyv,
            },
            {
                $Type : 'UI.DataField',
                Value : zsegno,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Dati',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
