sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'riskmanagement/risk/test/integration/FirstJourney',
		'riskmanagement/risk/test/integration/pages/RisksList',
		'riskmanagement/risk/test/integration/pages/RisksObjectPage'
    ],
    function(JourneyRunner, opaJourney, RisksList, RisksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('riskmanagement/risk') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRisksList: RisksList,
					onTheRisksObjectPage: RisksObjectPage
                }
            },
            opaJourney.run
        );
    }
);