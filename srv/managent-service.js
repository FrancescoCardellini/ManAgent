// Imports
const cds = require("@sap/cds"); // connect to remote service

/**
   * The service implementation with all service handlers
   */
module.exports = cds.service.impl(async function () {
    const { CompanyCode , SalesArea , CondType } = this.entities;

    const CompanyCodeSrv = await cds.connect.to("API_COMPANYCODE_SRV");

    /**
     * Event-handler for read-events on the CompanyCode entity.
     * Each request to the API Business Hub requires the apikey in the header.
     */
    this.on("READ", CompanyCode, async (req) => {
        //req.query.where("CompanyCode <> ''");
        return await CompanyCodeSrv.transaction(req).send({
            query: req.query,
            headers: {
                apikey: process.env.apikey_CompanyCode,
            },
        });
    });
    
    const SalesAreaSrv = await cds.connect.to("SALESAREA_0001");
    this.on("READ", SalesArea, async (req) => {
        return await SalesAreaSrv.transaction(req).send({
            query: req.query,
            headers: {
                apikey: process.env.apikey_SalesArea,
            },
        });
    });
    
    const CondTypeSrv = await cds.connect.to("API_SLSPRICINGCONDITIONTYPE_SRV");
    this.on("READ", CondType, async (req) => {
        req.query.where("ConditionClass = 'A'");
        return await CondTypeSrv.transaction(req).send({
            query: req.query,
            headers: {
                apikey: process.env.apikey_CondType,
            },
        });
    });

});