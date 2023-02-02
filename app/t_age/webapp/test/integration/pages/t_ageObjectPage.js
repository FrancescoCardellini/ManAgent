sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'ManAgent.tage',
            componentId: 't_ageObjectPage',
            entitySet: 't_age'
        },
        CustomPageDefinitions
    );
});