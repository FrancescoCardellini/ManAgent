sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'managent.ttco',
            componentId: 't_tcoList',
            entitySet: 't_tco'
        },
        CustomPageDefinitions
    );
});