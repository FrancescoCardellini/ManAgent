using managent as ma from '../db/schema';

annotate ma.t_tpc with {
   bukrs     @title : 'Società';
   vkorg     @title : 'Organizzazione commerciale';
   vtweg     @title : 'Canale di distribuzione';
   spart     @title : 'Settore merceologico';
   kschl     @title : 'Tipo di condizione';
   parvw     @title : 'Ruolo partner';
   ztpprv    @title : 'Tipo provvigione';
   znocon    @title : 'Provvigione da non contabilizzare';
   ztesto    @title : 'Descrizione';
   fieldname @title : 'Nome campo';
}

annotate ma.t_tft with {
   vkorg  @title : 'Organizzazione commerciale';
   fkart  @title : 'Tipo di fattura';
   pstyv  @title : 'Categoria di posizione';
   zsegno @title : 'Segno provvigione';
}

annotate ma.t_tpc with {
   bukrs @(Common : {ValueList : {
      Label          : 'Company',
      CollectionPath : 'CompanyCode',
      Parameters     : [
         {
            $Type             : 'Common.ValueListParameterInOut',
            LocalDataProperty : bukrs,
            ValueListProperty : 'CompanyCode'
         },
         {
            $Type             : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty : 'CompanyCodeName'
         }
      ]
   }});
   vkorg @(Common : {ValueList : {
      Label          : 'SalesArea',
      CollectionPath : 'SalesArea',
      Parameters     : [
         {
            $Type             : 'Common.ValueListParameterInOut',
            LocalDataProperty : vkorg,
            ValueListProperty : 'SalesOrganization'
         },
         {
            $Type             : 'Common.ValueListParameterOut',
            LocalDataProperty : vtweg,
            ValueListProperty : 'DistributionChannel'
         },
         {
            $Type             : 'Common.ValueListParameterOut',
            LocalDataProperty : spart,
            ValueListProperty : 'Division'
         }
      ]
   }});
   vtweg @(Common : {ValueList : {
      Label          : 'SalesArea',
      CollectionPath : 'SalesArea',
      Parameters     : [
         {
            $Type             : 'Common.ValueListParameterInOut',
            LocalDataProperty : vkorg,
            ValueListProperty : 'SalesOrganization'
         },
         {
            $Type             : 'Common.ValueListParameterInOut',
            LocalDataProperty : vtweg,
            ValueListProperty : 'DistributionChannel'
         },
         {
            $Type             : 'Common.ValueListParameterOut',
            LocalDataProperty : spart,
            ValueListProperty : 'Division'
         }
      ]
   }});
   spart @(Common : {ValueList : {
      Label          : 'SalesArea',
      CollectionPath : 'SalesArea',
      Parameters     : [
         {
            $Type             : 'Common.ValueListParameterInOut',
            LocalDataProperty : vkorg,
            ValueListProperty : 'SalesOrganization'
         },
         {
            $Type             : 'Common.ValueListParameterInOut',
            LocalDataProperty : vtweg,
            ValueListProperty : 'DistributionChannel'
         },
         {
            $Type             : 'Common.ValueListParameterInOut',
            LocalDataProperty : spart,
            ValueListProperty : 'Division'
         }
      ]
   }});
   kschl @(Common : {ValueList : {
      Label          : 'CondType',
      CollectionPath : 'CondType',
      Parameters     : [{
         $Type             : 'Common.ValueListParameterInOut',
         LocalDataProperty : kschl,
         ValueListProperty : 'ConditionType'
      }]
   }});
   parvw @(Common : {ValueList : {
      Label          : 'Funzione Partner',
      CollectionPath : 'tpar',
      Parameters     : [
         {
            $Type             : 'Common.ValueListParameterInOut',
            LocalDataProperty : parvw,
            ValueListProperty : 'parvw'
         },
         {
            $Type             : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty : 'vtext'
         }
      ]
   }});
}

annotate ma.t_age with {
   bukrs     @title : 'Società';
   lifnr     @title : 'Fornitore';
   zdtini    @title : 'Data Inizio';
   ztpage    @title : 'Tipo Contratto Agente';
   spras     @title : 'Lingua';
   waers     @title : 'Divisa';
   ztpsag    @title : 'Tipo Soc Agente';
   zdtinc    @title : 'Data inizio contratto';
   zdtfic    @title : 'Data fine contratto';
   zmaten    @title : 'Matricola Enasarco';
   ziccom    @title : 'Iscrizione Camera Commercio';
   zitrib    @title : 'Iscrizione al tribunale';
   ztpliq    @title : 'Tipo liquidazione';
   zaccon    @title : 'Regole reg. acconto';
   zminga    @title : 'Regole reg. minimo garantito';
   zcongu    @title : 'Regole reg. conguaglio';
   zstpre    @title : 'Regole stampa fattura';
   ztpcag    @title : 'Tipo contratto agente';
   ztppre    @title : 'Tipologia prefattura';
   zterm     @title : 'Condiz. pagamento';
   kostl     @title : 'Centro di costo';
   zperli    @title : 'Periodo liquidazione';
   ztpoda    @title : 'Tipo contab oda';
   ztpeca    @title : 'Enasarco carico agente';
   ztpeaz    @title : 'Enasarco carico azienda';
   ztpfir    @title : 'Tipo contributo FIRR';
   ztpind    @title : 'Tipo contributo Indennità di clientela';
   mwskz     @title : 'Cod IVA';
   land1     @title : 'Paese';
   witht     @title : 'Cod per tipo ritenuta di acconto';
   wt_withcd @title : 'Cod ritenuta di acconto';
   ztpftf    @title : 'Tipo contabilizzazione fattura fornitore';
   zdtfion   @title : 'Data fine calcolo oneri';
}


annotate ma.t_age with {
   bukrs @(Common : {ValueList : {
      Label          : 'Company',
      CollectionPath : 'CompanyCode',
      Parameters     : [
         {
            $Type             : 'Common.ValueListParameterInOut',
            LocalDataProperty : bukrs,
            ValueListProperty : 'CompanyCode'
         },
         {
            $Type             : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty : 'CompanyCodeName'
         }
      ]
   }});
   lifnr @(Common : {ValueList : {
      Label          : 'Fornitore',
      CollectionPath : 'Supplier',
      Parameters     : [
         {
            $Type             : 'Common.ValueListParameterInOut',
            LocalDataProperty : lifnr,
            ValueListProperty : 'Supplier'
         },
         {
            $Type             : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty : 'SupplierName'
         },
         {
            $Type             : 'Common.ValueListParameterDisplayOnly',
            ValueListProperty : 'SupplierFullName'
         }
      ]
   }, })

}
