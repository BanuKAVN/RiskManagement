sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'riskmanagement.risk',
            componentId: 'RiskObjectPage',
            contextPath: '/Risk'
        },
        CustomPageDefinitions
    );
});