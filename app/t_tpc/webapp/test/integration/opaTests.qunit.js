sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'managent/ttpc/test/integration/FirstJourney',
		'managent/ttpc/test/integration/pages/t_tpcList',
		'managent/ttpc/test/integration/pages/t_tpcObjectPage'
    ],
    function(JourneyRunner, opaJourney, t_tpcList, t_tpcObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('managent/ttpc') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThet_tpcList: t_tpcList,
					onThet_tpcObjectPage: t_tpcObjectPage
                }
            },
            opaJourney.run
        );
    }
);