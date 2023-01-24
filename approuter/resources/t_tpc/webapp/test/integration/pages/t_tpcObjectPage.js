sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'managent.ttpc',
            componentId: 't_tpcObjectPage',
            entitySet: 't_tpc'
        },
        CustomPageDefinitions
    );
});