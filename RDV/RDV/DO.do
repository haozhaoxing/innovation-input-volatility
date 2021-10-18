
xtset firm year
//Main Results
xtreg innovation innovationvolatility human innovationsubsidy growth age effort profitability debt size i.year , r
outreg2 using 1.doc,append ctitle(innovation)
xtreg innovation innovationvolatility innovationvolatilitysubsidy human innovationsubsidy growth age effort profitability debt size  i.year , r
outreg2 using 1.doc,append ctitle(innovation)
//Substitution of Dependent Variables
xtreg innovation2 innovationvolatility  human innovationsubsidy growth age effort profitability debt size i.year , r
outreg2 using 2.doc,append ctitle(innovation2)
xtreg innovation2 innovationvolatility innovationvolatilitysubsidy human innovationsubsidy  growth age effort profitability debt size  i.year , r
outreg2 using 2.doc,append ctitle(innovation2)
// Substitution of Moderating Variables
xtreg innovation innovationvolatility human innovationsubsidy2 growth age effort profitability debt size i.year , r
outreg2 using 3.doc,append ctitle(innovation)
xtreg innovation innovationvolatility innovationvolatilitysubsidy2 human innovationsubsidy2 growth age effort profitability debt size  i.year , r
outreg2 using 3.doc,append ctitle(innovation)
//Delete the 2012 Sample
drop if year == 2012
xtreg innovation innovationvolatility human innovationsubsidy growth age effort profitability debt size i.year , r
outreg2 using 1.doc,append ctitle(innovation)
xtreg innovation innovationvolatility innovationvolatilitysubsidy human innovationsubsidy growth age effort profitability debt size  i.year , r
outreg2 using 1.doc,append ctitle(innovation)
