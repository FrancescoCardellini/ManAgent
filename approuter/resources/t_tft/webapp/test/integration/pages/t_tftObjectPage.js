sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'managent.ttft',
            componentId: 't_tftObjectPage',
            entitySet: 't_tft'
        },
        CustomPageDefinitions
    );
});