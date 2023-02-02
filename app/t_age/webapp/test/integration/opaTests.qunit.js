sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ManAgent/tage/test/integration/FirstJourney',
		'ManAgent/tage/test/integration/pages/t_ageList',
		'ManAgent/tage/test/integration/pages/t_ageObjectPage'
    ],
    function(JourneyRunner, opaJourney, t_ageList, t_ageObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ManAgent/tage') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThet_ageList: t_ageList,
					onThet_ageObjectPage: t_ageObjectPage
                }
            },
            opaJourney.run
        );
    }
);