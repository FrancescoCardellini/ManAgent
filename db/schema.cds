namespace managent;

using {managed} from '@sap/cds/common';
using {API_COMPANYCODE_SRV as extCompanyCode} from '../srv/external/API_COMPANYCODE_SRV.csn';
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
        znocon    : String(1);
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

entity CompayCode as projection on extCompanyCode.A_CompanyCode {
    key CompanyCode,
        CompanyCodeName
}

entity BusinessPartner as projection on extBusinessPartner.A_BusinessPartner {
    key BusinessPartner,
        FirstName,
        LastName
}