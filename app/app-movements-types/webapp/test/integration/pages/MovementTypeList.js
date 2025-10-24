sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'com.capfinance.movement.type.appmovementstypes',
            componentId: 'MovementTypeList',
            contextPath: '/MovementType'
        },
        CustomPageDefinitions
    );
});