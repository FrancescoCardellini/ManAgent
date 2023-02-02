sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'ManAgent.tage',
            componentId: 't_ageList',
            entitySet: 't_age'
        },
        CustomPageDefinitions
    );
});