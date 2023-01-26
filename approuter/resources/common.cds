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
      Parameters     : [
         {
            $Type             : 'Common.ValueListParameterInOut',
            LocalDataProperty : kschl,
            ValueListProperty : 'ConditionType'
         }
      ]
   }});
}
