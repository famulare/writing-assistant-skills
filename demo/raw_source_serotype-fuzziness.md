<!--
DEMO RAW MATERIAL — provenance + redaction note (metadata, not authorial text)

Source: verbatim body of a single email authored by Mike Famulare (Feb 28, 2022,
5:07 PM), extracted from an internal email thread. Used here
as the raw substrate for the writing-assistant pipeline demo (read → outline →
frankendraft → transport into two registers).

Light redaction applied — inappropriate-to-share names and orgs only:
  • living colleague credited for the podcast/lit pointer → "a virologist colleague" / "she/her" (name + affiliation removed)
  • the named virologist whose view is called "dogma" → "the received dogma" (name removed)
  • the named reference-lab scientist ("...have never seen one in their lives") → "the people who run the typing assays" (name removed)
  • the email routing header (internal recipient list) dropped
Kept as legitimate published/historical citation: Bodian (1949), Morgan (1949),
Albert Sabin, all strain names, place names, and public journal links.
PDF-extraction ligature artifacts (ti/tt/ft) cleaned; wording otherwise verbatim.
-->

# Raw source — serotype "fuzziness" (author email, 2022-02-28)

Hey all,

So I had some fun with Volume 49 Issue 2 of the American Journal of Epidemiology (https://academic.oup.com/aje/issue/49/2) from 1949. Turns out, way back in the day, they knew serotypes were fuzzy. And we're only surprised because developments since the 1950s had largely defined away the evidence for fuzzy serotypes.

Here's a snapshot. First, all credit to a virologist colleague. I'd been meaning to listen to a TWiV episode on cross-immunity in enteroviruses, where they discuss a paper on cross-reactive antibody responses against non-poliovirus enteroviruses, and so I gave it a listen yesterday. She talked about arguing that the received dogma on serotypes was wrong, based on what she knew about cross-reactive antibodies, and how that led to going back to the old literature, and then to her project. She said in the old literature you could see them figuring out what serotypes were by measuring cross-immunity with lots of monkeys. The existence of significant cross-immunity is of course counter to the dogma, as represented by everything we've been taught. All the virology head honchos we know in the eradication program inherited the dogma in the early 1980s or after. Which is to say, two to four generations after people like Bodian who figured out what polio is, and one generation after the assays and reagents were fully standardized. You can see where this is going….

This is a part of the literature I have spent zero time with prior to yesterday, so that is really fun. (I figured I didn't need to know how we figured out what polio was in the first place.)

So anyway, Bodian 1949 is the first paper that made clear that there are three serotypes of poliovirus. Back then, when they were figuring this out, strains had names associated with their origin. Like MEF1 was named after the Middle East Forces of the British Army, where an outbreak among the servicemen took place in 1942. (Serology by age shows Cairo had ~10x higher R0 than the UK did back then). Table 1 of Bodian 1949 is a hoot if you're interested in this part of the history. (Table 2 is super interesting too. Monkey neurovirulence 50% paralytic dose varies by almost 4 orders of magnitude. Lord knows what these viral stocks went through over the years, but it's representative of a bunch of literature from that era that naturally occurring strains have measurably different virulence. 1 in 200 heh?) Everything is less black and white than the dogma today.

Anyway, the archetypes back then were Brunhilde (type 1), Lansing (type 2), and Leon (type 3). Here's a key table from Bodian 1949. This shows neurovirulence in monkeys who were first repeatedly vaccinated* and confirmed immune by either Brunhilde (type 1) or Lansing (type 2) before being intracerebrally challenged by one of the 14 strains on the left. (* I'm 99.5% sure that "vaccinated" means "we shot them with live virus in the leg three times, and we rely on that polio in monkeys is different than polio in people, such that monkeys only mount an immune response but do not get disease if you inject them in the muscle, as long as the dose isn't too high". (In Morgan 1949, they show what happens when the dose is too high.))

In the table, the normal pattern that defines serotypes is "monkeys immunized with Lansing (type 2) do not get paralyzed when challenged with other Lansing-type (type 2) viruses, but they get paralyzed at similar rates to unimmunized controls when challenged with Brunhilde-type (type 1) viruses." And vice versa for type 1 immunization and type 2 challenge.

BUT, there are exceptions. In particular, the "Per" strain (which found its way from a 3 year old girl who died in West Virginia in 1940 (I'm legit tearing up at this, emotional these days) and autopsied by Albert Sabin) is completely protected by type 1 vaccination but also shows significant cross protection from type 2 vaccination. They group it as a type 1 but it's in the middle.

I also flagged the Kover strain in that table, because it comes up again in the Morgan 1949 paper. With just the table above, you could call that appearance of partial cross-protection "noise", but in the Morgan paper, we can see that Kover is symmetrically in the middle of type 1 and type 2. (And as an aside, while I certainly can't rule out sampling variation or lab error or whatever, across many years of looking at tables like this, assays with the same strain are usually reproducible to within one monkey across papers. 2/6 when the expectation is 6/6 is weird.) Here's the table from Morgan 1949. I think the dark-red boxed data is the same monkeys as in the previous table from the Bodian paper. But the green shows the opposite – vaccinated with Kover (type 1) looks somewhat cross-protective against Lansing (type 2), just as vaccinating with Lansing appears to be somewhat protective against Kover.

I realize this is old data and small N, but it's from an era when genetic diversity was high, population immunity across serotypes was not synchronized by trivalent vaccines, and before all the assays and algorithms were defined to remove the ambiguity among serotypes. In the early 1950s, cell culture plus this understanding of serotypes were standardized for vaccine development. Labs stopped looking at old strains isolated in monkeys and standardized around referencing all tests to Mahoney or Brunhilde (type 1), Lansing (type 2), and Leon (type 3)*. Most of these other isolates with names we've never heard of disappear from the literature in that era. Of the 14 in Bodian's list, only 4 survived to be sequenced in the 1980s and 90s (Brunhilde, Lansing, MEF1, and Leon). If you're vaccinating against three types, none of this nuance matters. But in the canonizing of stylized facts, we lost the common knowledge that the story is fuzzy.

(* You can see this already starting to happen in Bodian on page 237 when they discuss "exceptional animals" challenged with Per.)

I look at this, plus our experience with cross-protection from bOPV against type 2, plus my colleague's brief review of similar data from other early lit, and her modern work on cross-reactivity in the enterovirus family, and conclude the idea that a poliovirus can be "mostly type 1 with a little bit of type 2" should not be surprising at all.

_________

It's really interesting to speculate about the evolutionary dynamics of these viruses. Let's assume the viruses in between type tend to be less intrinsically fit, but they are more likely to persist at least transiently when there is a lot of population immunity heterogeneity across serotypes. What does history look like?

Pre-vaccine, because outbreaks tended to come in seasonal waves of a given serotype (at least in richer communities, where paralysis was more common since the age of infection was older – poorer communities like Houston in the mid-50s definitely had every serotype every year) any given town would have fairly heterogeneous immunity in children. Say last year's outbreak was a type 1 in a place that's had no type 2 for a few years, then this year's type 1 outbreak would do better if it was a little more type 2 like. Per could be a virus like that, that then immunizes against type 1 and a bit against type 2. All the permutations are possible in principle, but the key thing is as long as there are towns where serotypes don't hit every year, the population can select for viruses drifting off-type among the ones that persist through the endemic low periods.

But then trivalent vaccines show up. Very quickly, most people get immunized with all three strains at the same time early in life. The heterogeneity at the population level is much lower now. Enter the modern era, where we find WPVs are under very strong purifying selection and never drift very far antigenically for very long, although we do see variations in titer around the reference strains (Mahoney, Lansing, Leon) by factors of 4-8 all the time when we look. But, between only sequencing and basing ITD on VP1, and the between-serotype viruses assumed less fit, the people who run the typing assays have never seen one in their lives. And then, we drop the type 2 vaccine, and population immunity across serotypes becomes much more heterogeneous than ever before. But the genetic diversity of WPV is incredibly small. So we wait a few years and start to notice viruses that are between serotype….

--Mike
