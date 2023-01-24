sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'managent.ttpc',
            componentId: 't_tpcList',
            entitySet: 't_tpc'
        },
        CustomPageDefinitions
    );
});