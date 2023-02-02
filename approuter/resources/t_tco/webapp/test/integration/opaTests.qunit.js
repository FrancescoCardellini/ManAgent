sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'managent/ttco/test/integration/FirstJourney',
		'managent/ttco/test/integration/pages/t_tcoList',
		'managent/ttco/test/integration/pages/t_tcoObjectPage'
    ],
    function(JourneyRunner, opaJourney, t_tcoList, t_tcoObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('managent/ttco') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThet_tcoList: t_tcoList,
					onThet_tcoObjectPage: t_tcoObjectPage
                }
            },
            opaJourney.run
        );
    }
);