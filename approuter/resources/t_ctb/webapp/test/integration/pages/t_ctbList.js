sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'managent.tctb',
            componentId: 't_ctbList',
            entitySet: 't_ctb'
        },
        CustomPageDefinitions
    );
});