namespace managent;

using {managed} from '@sap/cds/common';
using {API_COMPANYCODE_SRV as extCompanyCode} from '../srv/external/API_COMPANYCODE_SRV.csn';
using {SALESAREA_0001 as extSalesArea} from '../srv/external/SALESAREA_0001.csn';
using {API_SLSPRICINGCONDITIONTYPE_SRV as extCondType} from '../srv/external/API_SLSPRICINGCONDITIONTYPE_SRV.csn';
using {API_BUSINESS_PARTNER as extBusinessPartner} from '../srv/external/API_BUSINESS_PARTNER.csn';


// Tipi Condizione SD /IECPRAGE/T_TPC
entity t_tpc : managed {
    key bukrs     : String(4);
    key vkorg     : String(4);
    key vtweg     : String(2);
    key spart     : String(2);
    key kschl     : String(4);
        parvw     : String(2);
        ztpprv    : String(2);
        znocon    : Boolean;
        ztesto    : String(40);
        fieldname : String(10);
}

// Tipi Fattura SD /IECPRAGE/T_TFT
entity t_tft : managed {
    key vkorg  : String(4);
    key fkart  : String(4);
    key pstyv  : String(4);
        zsegno : String(1);
}

entity CompayCode      as projection on extCompanyCode.A_CompanyCode {
    key CompanyCode,
        CompanyCodeName
}

entity SalesArea       as projection on extSalesArea.SalesArea {
    key SalesOrganization,
    key DistributionChannel,
    key Division,
}

entity CondType        as projection on extCondType.A_SlsPricingConditionType {
    key ConditionType
}

entity BusinessPartner as projection on extBusinessPartner.A_BusinessPartner {
    key BusinessPartner,
        FirstName,
        LastName
}

entity Supplier        as projection on extBusinessPartner.A_Supplier {
    key Supplier,
        SupplierName,
        SupplierFullName,
}

// anagrafica agenti
entity t_age : managed {
    key bukrs     : String(4);
    key lifnr     : String(10);
    key zdtini    : Date;
        ztpage    : String(1);
        spras     : String(1);
        waers     : String(5);
        ztpsag    : String(1);
        zdtinc    : Date;
        zdtfic    : Date;
        zmaten    : String(20);
        ziccom    : String(30);
        zitrib    : String(20);
        ztpliq    : String(1);
        zaccon    : String(1);
        zminga    : String(1);
        zcongu    : String(1);
        zstpre    : String(1);
        ztpcag    : String(1);
        ztppre    : String(3);
        zterm     : String(4);
        kostl     : String(10);
        zperli    : String(1);
        ztpoda    : String(3);
        ztpeca    : String(3);
        ztpeaz    : String(3);
        ztpfir    : String(3);
        ztpind    : String(3);
        mwskz     : String(2);
        land1     : String(3);
        witht     : String(3);
        wt_withcd : String(2);
        ztpftf    : String(3);
        zdtfion   : Date;
}

// ruoli partner
entity tpar {
    key FunzionePartner : String(2);
        Definizione     : String(20);
}

// codice provvigione interno
entity dom_zcodpr {
    key codice      : String(2);
        descrizione : String;
}

// /IECPRAGE/T_TCO Tipologie contabilizzazioni
entity t_tco {
    key bukrs  : String(4);
    key ztpcon : String(3);
        zcodpr : String(2);
        zaccan : Boolean;
        zecaag : Boolean;
        zecaaz : Boolean;
        zifirr : Boolean;
        zincli : Boolean;
        zliqui : Boolean;
        zprefa : Boolean;
        ztesto : String;
}

// codice contributo
entity dom_zcodct {
    key codice      : String(2);
        descrizione : String;
}
// /IECPRAGE/T_CTB Tipi contributi
entity t_ctb {
    key bukrs  : String(4);
    key ztpctb : String(3);
        zcodct : String(2);
        ztpcon : String(3);
        ztesto : String;
}