using managent as ma from '../db/schema';

annotate ma.t_tpc with {
   @mandatory bukrs  @title: '{i18n>Bukrs}';
   @mandatory vkorg  @title: 'Organizzazione commerciale';
   @mandatory vtweg  @title: 'Canale di distribuzione';
   @mandatory spart  @title: 'Settore merceologico';
   @mandatory kschl  @title: 'Tipo di condizione';
   parvw     @title: 'Ruolo partner';
   ztpprv    @title: 'Tipo provvigione';
   znocon    @title: 'Provvigione da non contabilizzare';
   ztesto    @title: 'Descrizione';
   fieldname @title: 'Nome campo';
}

annotate ma.t_tft with {
   vkorg  @title: 'Organizzazione commerciale';
   fkart  @title: 'Tipo di fattura';
   pstyv  @title: 'Categoria di posizione';
   zsegno @title: 'Segno provvigione';
}

annotate tpar with {
   FunzionePartner @title: 'Funzione Partner';
   Definizione     @title: 'Definizione';
}

annotate ma.t_tpc with {
   bukrs @(Common: {ValueList: {
      Label         : 'Company',
      CollectionPath: 'CompanyCode',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: bukrs,
            ValueListProperty: 'CompanyCode'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'CompanyCodeName'
         }
      ]
   }});
   vkorg @(Common: {ValueList: {
      Label         : 'SalesArea',
      CollectionPath: 'SalesArea',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: vkorg,
            ValueListProperty: 'SalesOrganization'
         },
         {
            $Type            : 'Common.ValueListParameterOut',
            LocalDataProperty: vtweg,
            ValueListProperty: 'DistributionChannel'
         },
         {
            $Type            : 'Common.ValueListParameterOut',
            LocalDataProperty: spart,
            ValueListProperty: 'Division'
         }
      ]
   }});
   vtweg @(Common: {ValueList: {
      Label         : 'SalesArea',
      CollectionPath: 'SalesArea',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: vkorg,
            ValueListProperty: 'SalesOrganization'
         },
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: vtweg,
            ValueListProperty: 'DistributionChannel'
         },
         {
            $Type            : 'Common.ValueListParameterOut',
            LocalDataProperty: spart,
            ValueListProperty: 'Division'
         }
      ]
   }});
   spart @(Common: {ValueList: {
      Label         : 'SalesArea',
      CollectionPath: 'SalesArea',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: vkorg,
            ValueListProperty: 'SalesOrganization'
         },
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: vtweg,
            ValueListProperty: 'DistributionChannel'
         },
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: spart,
            ValueListProperty: 'Division'
         }
      ]
   }});
   kschl @(Common: {ValueList: {
      Label         : 'CondType',
      CollectionPath: 'CondType',
      Parameters    : [{
         $Type            : 'Common.ValueListParameterInOut',
         LocalDataProperty: kschl,
         ValueListProperty: 'ConditionType'
      }]
   }});
   parvw @(Common: {ValueList: {
      Label         : 'Funzione Partner',
      CollectionPath: 'tpar',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: parvw,
            ValueListProperty: 'FunzionePartner'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'Definizione'
         }
      ]
   }});
}

annotate ma.t_age with {
   bukrs     @title: 'Società';
   lifnr     @title: 'Fornitore';
   zdtini    @title: 'Data Inizio';
   ztpage    @title: 'Tipo Contratto Agente';
   spras     @title: 'Lingua';
   waers     @title: 'Divisa';
   ztpsag    @title: 'Tipo Soc Agente';
   zdtinc    @title: 'Data inizio contratto';
   zdtfic    @title: 'Data fine contratto';
   zmaten    @title: 'Matricola Enasarco';
   ziccom    @title: 'Iscrizione Camera Commercio';
   zitrib    @title: 'Iscrizione al tribunale';
   ztpliq    @title: 'Tipo liquidazione';
   zaccon    @title: 'Regole reg. acconto';
   zminga    @title: 'Regole reg. minimo garantito';
   zcongu    @title: 'Regole reg. conguaglio';
   zstpre    @title: 'Regole stampa fattura';
   ztpcag    @title: 'Tipo contratto agente';
   ztppre    @title: 'Tipologia prefattura';
   zterm     @title: 'Condiz. pagamento';
   kostl     @title: 'Centro di costo';
   zperli    @title: 'Periodo liquidazione';
   ztpoda    @title: 'Tipo contab oda';
   ztpeca    @title: 'Enasarco carico agente';
   ztpeaz    @title: 'Enasarco carico azienda';
   ztpfir    @title: 'Tipo contributo FIRR';
   ztpind    @title: 'Tipo contributo Indennità di clientela';
   mwskz     @title: 'Cod IVA';
   land1     @title: 'Paese';
   witht     @title: 'Cod per tipo ritenuta di acconto';
   wt_withcd @title: 'Cod ritenuta di acconto';
   ztpftf    @title: 'Tipo contabilizzazione fattura fornitore';
   zdtfion   @title: 'Data fine calcolo oneri';
}

annotate ma.t_age with {
   bukrs @(Common: {ValueList: {
      Label         : 'Company',
      CollectionPath: 'CompanyCode',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: bukrs,
            ValueListProperty: 'CompanyCode'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'CompanyCodeName'
         }
      ]
   }});
   lifnr @(Common: {ValueList: {
      Label         : 'Fornitore',
      CollectionPath: 'Supplier',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: lifnr,
            ValueListProperty: 'Supplier'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'SupplierName'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'SupplierFullName'
         }
      ]
   }, })

}

annotate ma.t_tco with {
   bukrs  @title: 'Società';
   ztpcon @title: 'Tipologia contabilizzazione';
   zcodpr @title: 'Codice provvigione interno';
   zaccan @title: 'Rilevante per accantonamenti';
   zecaag @title: 'Rilevante per "Enasarco carico agente"';
   zecaaz @title: 'Rilevante per "Enasarco carico azienda"';
   zifirr @title: 'Rilevante per "Indennità fine rapporto"';
   zincli @title: 'Rilevante per "Indennità di clientela"';
   zliqui @title: 'Rilevante per liquidazione';
   zprefa @title: 'Rilevante per prefattura';
   ztesto @title: 'Descrizione';

   bukrs  @(Common: {ValueList: {
      Label         : 'Company',
      CollectionPath: 'CompanyCode',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: bukrs,
            ValueListProperty: 'CompanyCode'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'CompanyCodeName'
         }
      ]
   }});
   zcodpr @(Common: {ValueList: {
      Label         : 'Codice',
      CollectionPath: 'dom_zcodpr',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: zcodpr,
            ValueListProperty: 'codice'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'descrizione'
         }
      ]
   }})
}

annotate ma.t_ctb with {
   bukrs  @title: 'Società';
   ztpctb @title: 'Tipo contributo';
   zcodct @title: 'Codice contributo';
   ztpcon @title: 'Tipologia contabilizzazione';
   ztesto @title: 'Descrizione';

   bukrs  @(Common: {ValueList: {
      Label         : 'Company',
      CollectionPath: 'CompanyCode',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: bukrs,
            ValueListProperty: 'CompanyCode'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'CompanyCodeName'
         }
      ]
   }});
   zcodct @(Common: {ValueList: {
      Label         : 'Codice',
      CollectionPath: 'dom_zcodct',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: zcodct,
            ValueListProperty: 'codice'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'descrizione'
         }
      ]
   }});
   ztpcon @(Common: {ValueList: {
      Label         : 'Contabilizzazione',
      CollectionPath: 't_tco',
      Parameters    : [
         {
            $Type            : 'Common.ValueListParameterIn',
            LocalDataProperty: bukrs,
            ValueListProperty: 'bukrs'
         },
         {
            $Type            : 'Common.ValueListParameterInOut',
            LocalDataProperty: ztpcon,
            ValueListProperty: 'ztpcon'
         },
         {
            $Type            : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty: 'ztesto'
         }
      ]
   }});
}
