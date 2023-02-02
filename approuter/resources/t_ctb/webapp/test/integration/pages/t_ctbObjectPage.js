sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'managent.tctb',
            componentId: 't_ctbObjectPage',
            entitySet: 't_ctb'
        },
        CustomPageDefinitions
    );
});