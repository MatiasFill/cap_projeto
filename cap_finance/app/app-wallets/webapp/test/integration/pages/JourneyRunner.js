sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"com/capfinance/wallets/appwallets/test/integration/pages/WalletsList",
	"com/capfinance/wallets/appwallets/test/integration/pages/WalletsObjectPage"
], function (JourneyRunner, WalletsList, WalletsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('com/capfinance/wallets/appwallets') + '/test/flp.html#app-preview',
        pages: {
			onTheWalletsList: WalletsList,
			onTheWalletsObjectPage: WalletsObjectPage
        },
        async: true
    });

    return runner;
});

