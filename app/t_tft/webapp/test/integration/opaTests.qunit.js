sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'managent/ttft/test/integration/FirstJourney',
		'managent/ttft/test/integration/pages/t_tftList',
		'managent/ttft/test/integration/pages/t_tftObjectPage'
    ],
    function(JourneyRunner, opaJourney, t_tftList, t_tftObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('managent/ttft') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThet_tftList: t_tftList,
					onThet_tftObjectPage: t_tftObjectPage
                }
            },
            opaJourney.run
        );
    }
);