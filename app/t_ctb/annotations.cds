using ManagentService as service from '../../srv/managent-service';

annotate service.t_ctb with @(
    UI.HeaderInfo : {
        TypeName       : 'Tipo contributo',
        TypeNamePlural : 'Tipi contributi',
    },
    UI.LineItem   : [
        {
            $Type : 'UI.DataField',
            Value : bukrs,
        },
        {
            $Type : 'UI.DataField',
            Value : ztpctb,
        },
        {
            $Type : 'UI.DataField',
            Value : ztesto,
        },
        {
            $Type : 'UI.DataField',
            Value : zcodct,
        },
        {
            $Type : 'UI.DataField',
            Value : ztpcon,
        },
    ]
);

annotate service.t_ctb with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Value : bukrs,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpctb,
            },
            {
                $Type : 'UI.DataField',
                Value : zcodct,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpcon,
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
        Label  : 'Tipo contributo',
        Target : '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);
