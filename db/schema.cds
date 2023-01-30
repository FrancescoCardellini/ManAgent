namespace managent;

using {managed} from '@sap/cds/common';
using {API_COMPANYCODE_SRV as extCompanyCode} from '../srv/external/API_COMPANYCODE_SRV.csn';
using {SALESAREA_0001 as extSalesArea} from '../srv/external/SALESAREA_0001.csn';
using {API_SLSPRICINGCONDITIONTYPE_SRV as extCondType} from '../srv/external/API_SLSPRICINGCONDITIONTYPE_SRV.csn';
using {API_BUSINESS_PARTNER as extBusinessPartner} from '../srv/external/API_BUSINESS_PARTNER.csn';


// Tipi Condizione SD /IECPRAGE/T_TPC
// test modifica GMONT1
entity t_tpc : managed {
    key bukrs     : String(4);
    key vkorg     : String(4);
    key vtweg     : String(2);
    key spart     : String(2);
    key kschl     : String(4);
        parvw     : String(2);
        ztpprv    : String(2);
        znocon    : Boolean;
        ztesto    : String(39);
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

entity SalesArea as projection on extSalesArea.SalesArea {
    key SalesOrganization,
    key DistributionChannel,
    key Division,
}

entity CondType as projection on extCondType.A_SlsPricingConditionType {
    key ConditionType
}

entity BusinessPartner as projection on extBusinessPartner.A_BusinessPartner {
    key BusinessPartner,
        FirstName,
        LastName
}