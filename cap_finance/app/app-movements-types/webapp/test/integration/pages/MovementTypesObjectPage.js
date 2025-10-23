sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.capfinance.movements.types.appmovementstypes',
            componentId: 'MovementTypesObjectPage',
            contextPath: '/MovementTypes'
        },
        CustomPageDefinitions
    );
});