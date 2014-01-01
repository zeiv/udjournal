FactoryGirl.define do
	factory :article do
		title 'An allelic exchange vector for in-frame deletion of the gene PA3410 in Pseudomonas aeruginosa'
		body '<p>Pseudomonas aeruginosa is an opportunistic pathogen that can chronically infection patients with Cystic Fibrosis. Pseudomonas displays multiple virulence factors, one of which is the development of biofilms. In this study, we wished to examine the effect of an inframe deletion of gene 3410 in PAO1 on biofilm formation of P. aeruginosa. If PA3410 contributes to the regulation of biofilm formation, then the deletion of PA3410 would have a negative impact on the growing biofilm. If PA3410 does not regulate biofilm growth, then we should see a fully mature biofilm. Before we could make the knockout however, one of the Splice Overlap Extension Polymerase Chain Reactions (SOE PCR) failed to work. We began troubleshooting and found that GoTaq Buffer, 50 mM MgSO4, an annealing temperature of 52.0⁰C, and a cycle extension time of 2:00 minutes achieved the desired result. This allowed us to continue to make the knockout and we were able to create two plasmids, CMF101 and CMF 103 to be transformed into PAO1.</p>'
		department Department.find_by_code('chem')
		user_id 5
	end
end