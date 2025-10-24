sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.capfinance.movement.type.appmovementstypes',
            componentId: 'MovementTypeObjectPage',
            contextPath: '/MovementType'
        },
        CustomPageDefinitions
    );
});