using {managent as ma} from '../db/schema';

@path : 'service/managent'
service ManagentService {
    entity t_tpc as projection on ma.t_tpc;
    annotate t_tpc with @odata.draft.enabled;

    entity t_tft as projection on ma.t_tft;
    annotate t_tft with @odata.draft.enabled;

    entity CompanyCode as projection on ma.CompayCode;
}
