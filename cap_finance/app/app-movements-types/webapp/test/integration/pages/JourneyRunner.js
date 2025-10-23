sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"com/capfinance/movements/types/appmovementstypes/test/integration/pages/MovementTypesList",
	"com/capfinance/movements/types/appmovementstypes/test/integration/pages/MovementTypesObjectPage"
], function (JourneyRunner, MovementTypesList, MovementTypesObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('com/capfinance/movements/types/appmovementstypes') + '/test/flp.html#app-preview',
        pages: {
			onTheMovementTypesList: MovementTypesList,
			onTheMovementTypesObjectPage: MovementTypesObjectPage
        },
        async: true
    });

    return runner;
});

