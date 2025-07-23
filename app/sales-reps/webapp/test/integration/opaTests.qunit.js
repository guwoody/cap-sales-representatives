sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'salesreps/test/integration/FirstJourney',
		'salesreps/test/integration/pages/SalesRepresentativesList',
		'salesreps/test/integration/pages/SalesRepresentativesObjectPage'
    ],
    function(JourneyRunner, opaJourney, SalesRepresentativesList, SalesRepresentativesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('salesreps') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSalesRepresentativesList: SalesRepresentativesList,
					onTheSalesRepresentativesObjectPage: SalesRepresentativesObjectPage
                }
            },
            opaJourney.run
        );
    }
);