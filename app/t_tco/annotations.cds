using ManagentService as service from '../../srv/managent-service';

annotate service.t_tco with @(

    UI.HeaderInfo : {
        TypeName       : 'Tipologia di contabilizzazione',
        TypeNamePlural : 'Tipologie contabilizzazioni',
    },

    UI.LineItem   : [
        {
            $Type : 'UI.DataField',
            Value : bukrs,
        },
        {
            $Type : 'UI.DataField',
            Value : ztpcon,
        },
        {
            $Type : 'UI.DataField',
            Value : ztesto,
        },
        {
            $Type : 'UI.DataField',
            Value : zcodpr,
        },
    ]
);

annotate service.t_tco with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Value : bukrs,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpcon,
            },
            {
                $Type : 'UI.DataField',
                Value : zcodpr,
            },
            {
                $Type : 'UI.DataField',
                Value : zaccan,
            },
            {
                $Type : 'UI.DataField',
                Value : zecaag,
            },
            {
                $Type : 'UI.DataField',
                Value : zecaaz,
            },
            {
                $Type : 'UI.DataField',
                Value : zifirr,
            },
            {
                $Type : 'UI.DataField',
                Value : zincli,
            },
            {
                $Type : 'UI.DataField',
                Value : zliqui,
            },
            {
                $Type : 'UI.DataField',
                Value : zprefa,
            },
            {
                $Type : 'UI.DataField',
                Value : ztesto,
            },
        ],
    },
    UI.Facets                      : [{
        $Type  : 'UI.ReferenceFacet',
        ID     : 'GeneratedFacet1',
        Label  : 'Tipologia di contabilizzazione',
        Target : '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);
