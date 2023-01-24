sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'managent.ttft',
            componentId: 't_tftList',
            entitySet: 't_tft'
        },
        CustomPageDefinitions
    );
});