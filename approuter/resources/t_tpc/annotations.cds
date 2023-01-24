using ManagentService as service from '../../srv/managent-service';

annotate service.t_tpc with @(
    UI.HeaderInfo      : {
        TypeName       : 'Tipo Condizione SD',
        TypeNamePlural : 'Tipi Condizione SD',
        Title          : {
            $Type : 'UI.DataField',
            Value : kschl
        },
        Description    : {
            $Type : 'UI.DataField',
            Value : kschl
        }
    },

    UI.SelectionFields : [
        bukrs,
        vkorg,
        vtweg,
        spart,
        kschl
    ],

    UI.Identification  : [
        {Value : bukrs},
        {Value : vkorg},
        {Value : vtweg},
        {Value : spart},
        {Value : kschl},
    ],

    UI.LineItem     : [
        {
            $Type : 'UI.DataField',
            Value : bukrs,
        },
        {
            $Type : 'UI.DataField',
            Value : vkorg,
        },
        {
            $Type : 'UI.DataField',
            Value : vtweg,
        },
        {
            $Type : 'UI.DataField',
            Value : spart,
        },
        {
            $Type : 'UI.DataField',
            Value : kschl,
        },
        {
            $Type : 'UI.DataField',
            Value : parvw,
        },
        {
            $Type : 'UI.DataField',
            Value : ztpprv,
        },
        {
            $Type : 'UI.DataField',
            Value : znocon,
        },
        {
            $Type : 'UI.DataField',
            Value : ztesto,
        },
        {
            $Type : 'UI.DataField',
            Value : fieldname,
        },
    ]
);

annotate service.t_tpc with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Value : bukrs,
            },
            {
                $Type : 'UI.DataField',
                Value : vkorg,
            },
            {
                $Type : 'UI.DataField',
                Value : vtweg,
            },
            {
                $Type : 'UI.DataField',
                Value : spart,
            },
            {
                $Type : 'UI.DataField',
                Value : kschl,
            },
            {
                $Type : 'UI.DataField',
                Value : parvw,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpprv,
            },
            {
                $Type : 'UI.DataField',
                Value : znocon,
            },
            {
                $Type : 'UI.DataField',
                Value : ztesto,
            },
            {
                $Type : 'UI.DataField',
                Value : fieldname,
            },
        ],
    },
    UI.Facets                      : [{
        $Type  : 'UI.ReferenceFacet',
        ID     : 'GeneratedFacet1',
        Label  : 'Dati',
        Target : '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);
