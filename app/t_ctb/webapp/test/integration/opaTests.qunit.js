sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'managent/tctb/test/integration/FirstJourney',
		'managent/tctb/test/integration/pages/t_ctbList',
		'managent/tctb/test/integration/pages/t_ctbObjectPage'
    ],
    function(JourneyRunner, opaJourney, t_ctbList, t_ctbObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('managent/tctb') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThet_ctbList: t_ctbList,
					onThet_ctbObjectPage: t_ctbObjectPage
                }
            },
            opaJourney.run
        );
    }
);