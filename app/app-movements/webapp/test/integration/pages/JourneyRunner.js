sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"com/capfinance/movements/appmovements/test/integration/pages/MovementsList",
	"com/capfinance/movements/appmovements/test/integration/pages/MovementsObjectPage"
], function (JourneyRunner, MovementsList, MovementsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('com/capfinance/movements/appmovements') + '/test/flp.html#app-preview',
        pages: {
			onTheMovementsList: MovementsList,
			onTheMovementsObjectPage: MovementsObjectPage
        },
        async: true
    });

    return runner;
});

