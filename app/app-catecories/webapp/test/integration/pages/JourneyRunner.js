sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"com/capfinance/category/appcatecories/test/integration/pages/CategoriesList",
	"com/capfinance/category/appcatecories/test/integration/pages/CategoriesObjectPage"
], function (JourneyRunner, CategoriesList, CategoriesObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('com/capfinance/category/appcatecories') + '/test/flp.html#app-preview',
        pages: {
			onTheCategoriesList: CategoriesList,
			onTheCategoriesObjectPage: CategoriesObjectPage
        },
        async: true
    });

    return runner;
});

