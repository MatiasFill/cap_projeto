sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.capfinance.wallets.appwallets',
            componentId: 'WalletsObjectPage',
            contextPath: '/Wallets'
        },
        CustomPageDefinitions
    );
});