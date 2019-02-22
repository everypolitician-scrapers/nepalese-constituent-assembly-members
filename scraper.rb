require 'wikidata/fetcher'

names = WikiData::Category.new( 'श्रेणी:संविधान सभा सदस्य', 'ne').member_titles

query = 'SELECT DISTINCT ?item { ?item wdt:P39 wd:Q18056060 }'
ids = EveryPolitician::Wikidata.sparql(query)

EveryPolitician::Wikidata.scrape_wikidata(ids: ids, names: { ne: names })
