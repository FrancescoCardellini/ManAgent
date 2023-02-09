using {managent as ma} from '../db/schema';

@path : 'service/managent'
service ManagentService {
    entity t_tpc           as projection on ma.t_tpc;
    annotate t_tpc with @odata.draft.enabled;
    entity t_tft           as projection on ma.t_tft;
    annotate t_tft with @odata.draft.enabled;
    entity t_age           as projection on ma.t_age;
    annotate t_age with @odata.draft.enabled;
    entity t_tco           as projection on ma.t_tco;
    annotate t_tco with @odata.draft.enabled;
    entity t_ctb           as projection on ma.t_ctb;
    annotate t_ctb with @odata.draft.enabled;
    entity CompanyCode     as projection on ma.CompayCode;
    entity SalesArea       as projection on ma.SalesArea;
    entity CondType        as projection on ma.CondType;
    entity BusinessPartner as projection on ma.BusinessPartner;
    entity Supplier        as projection on ma.Supplier;
    entity tpar            as projection on ma.tpar;
    entity dom_zcodpr      as projection on ma.dom_zcodpr;
    entity dom_zcodct      as projection on ma.dom_zcodct;
    entity dom_ztpsag      as projection on ma.dom_ztpsag;
    entity dom_ztpliq       as projection on ma.dom_ztpliq;
    entity dom_zaccon       as projection on ma.dom_zaccon;
}
