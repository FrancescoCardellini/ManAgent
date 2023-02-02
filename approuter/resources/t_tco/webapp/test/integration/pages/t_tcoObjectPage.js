sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'managent.ttco',
            componentId: 't_tcoObjectPage',
            entitySet: 't_tco'
        },
        CustomPageDefinitions
    );
});