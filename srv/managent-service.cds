using {managent as ma} from '../db/schema';

@path : 'service/managent'
service ManagentService {
    entity t_tpc as projection on ma.t_tpc;
    annotate t_tpc with @odata.draft.enabled;

    entity t_tft as projection on ma.t_tft;
    annotate t_tft with @odata.draft.enabled;

    entity t_age as projection on ma.t_age;
    annotate t_age with @odata.draft.enabled;

    entity CompanyCode as projection on ma.CompayCode;
    entity SalesArea as projection on ma.SalesArea;
    entity CondType as projection on ma.CondType;
    entity BusinessPartner as projection on ma.BusinessPartner;
    entity Supplier as projection on ma.Supplier;
}
