// Imports
const cds = require("@sap/cds"); // connect to remote service

/**
   * The service implementation with all service handlers
   */
module.exports = cds.service.impl(async function () {
    const { CompanyCode } = this.entities;

    const CompanyCodeSrv = await cds.connect.to("API_COMPANYCODE_SRV");

    /**
     * Event-handler for read-events on the CompanyCode entity.
     * Each request to the API Business Hub requires the apikey in the header.
     */
    this.on("READ", CompanyCode, async (req) => {
        // The API Sandbox returns alot of business partners with empty names.
        // We don't want them in our application
        req.query.where("CompanyCode <> ''");

        return await CompanyCodeSrv.transaction(req).send({
            query: req.query,
            headers: {
                apikey: process.env.apikey_CompanyCode,
            },
        });
    });

});