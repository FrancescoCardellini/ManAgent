using ManagentService as service from '../../srv/managent-service';


annotate service.t_age with @(

    UI.HeaderInfo      : {
        TypeName       : 'Anagrafica Agente',
        TypeNamePlural : 'Anagrafiche Agente',
        Title          : {
            $Type : 'UI.DataField',
            Value : lifnr
        },
        Description    : {
            $Type : 'UI.DataField',
            Value : bukrs
        }
    },

    UI.SelectionFields : [
        lifnr,
        bukrs,
        zdtini
    ],

    UI.Identification  : [
        {Value : lifnr},
        {Value : bukrs},
        {Value : zdtini},
    ],

    UI.LineItem : [
            {
                $Type : 'UI.DataField',
                Value : bukrs,
                ![@Common.QuickInfo] : 'Società',
            },
            {
                $Type : 'UI.DataField',
                Value : lifnr,
            },
            {
                $Type : 'UI.DataField',
                Value : zdtini,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpage,
            },
            {
                $Type : 'UI.DataField',
                Value : spras,
            },
            {
                $Type : 'UI.DataField',
                Value : waers,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpsag,
            },
            {
                $Type : 'UI.DataField',
                Value : zdtinc,
            },
            {
                $Type : 'UI.DataField',
                Value : zdtfic,
            },
            {
                $Type : 'UI.DataField',
                Value : zmaten,
            },
            {
                $Type : 'UI.DataField',
                Value : ziccom,
            },
            {
                $Type : 'UI.DataField',
                Value : zitrib,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpliq,
            },
            {
                $Type : 'UI.DataField',
                Value : zaccon,
            },
            {
                $Type : 'UI.DataField',
                Value : zminga,
            },
            {
                $Type : 'UI.DataField',
                Value : zcongu,
            },
            {
                $Type : 'UI.DataField',
                Value : zstpre,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpcag,
            },
            {
                $Type : 'UI.DataField',
                Value : ztppre,
            },
            {
                $Type : 'UI.DataField',
                Value : zterm,
            },
            {
                $Type : 'UI.DataField',
                Value : kostl,
            },
            {
                $Type : 'UI.DataField',
                Value : zperli,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpoda,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpeca,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpeaz,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpfir,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpind,
            },
            {
                $Type : 'UI.DataField',
                Value : mwskz,
            },
            {
                $Type : 'UI.DataField',
                Value : land1,
            },
            {
                $Type : 'UI.DataField',
                Value : witht,
            },
            {
                $Type : 'UI.DataField',
                Value : wt_withcd,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpftf,
            },
            {
                $Type : 'UI.DataField',
                Value : zdtfion,
            },
        ]
);
annotate service.t_age with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : bukrs,
            },
            {
                $Type : 'UI.DataField',
                Value : lifnr,
            },
            {
                $Type : 'UI.DataField',
                Value : zdtini,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpage,
            },
            {
                $Type : 'UI.DataField',
                Value : spras,
            },
            {
                $Type : 'UI.DataField',
                Value : waers,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpsag,
            },
            {
                $Type : 'UI.DataField',
                Value : zdtinc,
            },
            {
                $Type : 'UI.DataField',
                Value : zdtfic,
            },
            {
                $Type : 'UI.DataField',
                Value : zmaten,
            },
            {
                $Type : 'UI.DataField',
                Value : ziccom,
            },
            {
                $Type : 'UI.DataField',
                Value : zitrib,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpliq,
            },
            {
                $Type : 'UI.DataField',
                Value : zaccon,
            },
            {
                $Type : 'UI.DataField',
                Value : zminga,
            },
            {
                $Type : 'UI.DataField',
                Value : zcongu,
            },
            {
                $Type : 'UI.DataField',
                Value : zstpre,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpcag,
            },
            {
                $Type : 'UI.DataField',
                Value : ztppre,
            },
            {
                $Type : 'UI.DataField',
                Value : zterm,
            },
            {
                $Type : 'UI.DataField',
                Value : kostl,
            },
            {
                $Type : 'UI.DataField',
                Value : zperli,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpoda,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpeca,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpeaz,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpfir,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpind,
            },
            {
                $Type : 'UI.DataField',
                Value : mwskz,
            },
            {
                $Type : 'UI.DataField',
                Value : land1,
            },
            {
                $Type : 'UI.DataField',
                Value : witht,
            },
            {
                $Type : 'UI.DataField',
                Value : wt_withcd,
            },
            {
                $Type : 'UI.DataField',
                Value : ztpftf,
            },
            {
                $Type : 'UI.DataField',
                Value : zdtfion,
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
