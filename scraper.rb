require 'wikidata/fetcher'

names = WikiData::Category.new( 'श्रेणी:संविधान सभा सदस्य', 'ne').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { ne: names }, output: false)

