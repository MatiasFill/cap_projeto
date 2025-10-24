sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"com/capfinance/movement/type/appmovementstypes/test/integration/pages/MovementTypeList",
	"com/capfinance/movement/type/appmovementstypes/test/integration/pages/MovementTypeObjectPage"
], function (JourneyRunner, MovementTypeList, MovementTypeObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('com/capfinance/movement/type/appmovementstypes') + '/test/flp.html#app-preview',
        pages: {
			onTheMovementTypeList: MovementTypeList,
			onTheMovementTypeObjectPage: MovementTypeObjectPage
        },
        async: true
    });

    return runner;
});

