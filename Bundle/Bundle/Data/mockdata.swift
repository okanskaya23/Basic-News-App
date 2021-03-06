//
//  mockdata.swift
//  Bundle
//
//  Created by Okan Sarp Kaya on 29.04.2021.
//

import Foundation
class mockdata {
    func getArticles(for urlString: String, with page: Int, completion: @escaping ([New]?, Int) -> ()) {
   
        let jsonString =
            """
            
            {
            "status": "ok",
            "totalResults": 38,
            -"articles": [
            -{
            -"source": {
            "id": null,
            "name": "Billboard"
            },
            "author": "Billboard Staff",
            "title": "'The Masked Singer' Pulls Out Another Big Surprise With 'The Maskys' - Billboard",
            "description": "If you were expecting to see another celebrity unmasked, you were in for a shock.",
            "url": "https://www.billboard.com/articles/news/9564199/the-masked-singer-maskys",
            "urlToImage": "https://static.billboard.com/files/2021/04/Crab-masked-singer-2021-press-billboard-1548-1619020706-compressed.jpg",
            "publishedAt": "2021-04-29T02:56:35Z",
            "content": "The Masked Singer is always big on surprises, though Wednesday night's episode came from out of leftfield.\r\nIf you were expecting to see another celebrity unmasked, you were in for a shock.\r\nAll the … [+196 chars]"
            },
            -{
            -"source": {
            "id": null,
            "name": "BBC News"
            },
            "author": "https://www.facebook.com/bbcnews",
            "title": "Arlene Foster: Removal of DUP leader is total mess, says party source - BBC News",
            "description": "There are concerns in the party it could lead to an early election for the Northern Ireland Assembly.",
            "url": "https://www.bbc.com/news/uk-northern-ireland-56921825",
            "urlToImage": "https://ichef.bbci.co.uk/news/1024/branded_news/8677/production/_118232443_arlene_pa.jpg",
            "publishedAt": "2021-04-29T02:51:12Z",
            "content": "By Gareth GordonBBC News NI political correspondent\r\nimage captionArlene Foster was the first female leader of the Democratic Unionist Party\r\nRemoving Arlene Foster is a \"total mess\" that could lead … [+6879 chars]"
            },
            -{
            -"source": {
            "id": "cnn",
            "name": "CNN"
            },
            "author": null,
            "title": "Read Republican Sen. Tim Scott's response to Biden's address to Congress - CNN ",
            "description": "South Carolina Sen. Tim Scott delivered the Republican response to President Joe Biden's address to Congress Wednesday night. Read his remarks as prepared for delivery:",
            "url": "https://www.cnn.com/2021/04/28/politics/tim-scott-response-transcript/index.html",
            "urlToImage": "https://cdn.cnn.com/cnnnext/dam/assets/210428223039-gop-response-tim-scott-0428-super-tease.jpg",
            "publishedAt": "2021-04-29T02:51:00Z",
            "content": null
            },
            -{
            -"source": {
            "id": null,
            "name": "NPR"
            },
            "author": "Rachel Treisman",
            "title": "Biden Delivers Address Flanked By Pelosi And Harris, In Historic First - NPR",
            "description": "In a historic first, President Biden delivered his joint address to Congress flanked by two women: Vice President Harris and House Speaker Nancy Pelosi.",
            "url": "https://www.npr.org/2021/04/28/991794469/madam-speaker-madam-vice-president-women-make-history-at-bidens-joint-address",
            "urlToImage": "https://media.npr.org/assets/img/2021/04/28/gettyimages-1232583485_wide-032617e20b93949e74ec275a65fb08b382f56775.jpg?s=1400",
            "publishedAt": "2021-04-29T01:46:01Z",
            "content": "In a historic first, President Biden was flanked by two women House Speaker Nancy Pelosi and Vice President Harris as he addressed a joint session of Congress at the U.S. Capitol on Wednesday.\r\nChip … [+3354 chars]"
            },
            -{
            -"source": {
            "id": null,
            "name": "CBS Sports"
            },
            "author": "",
            "title": "NFL Draft: Ranking the biggest bust for each team with Ryan Leaf leading the way - CBS Sports",
            "description": "The worst player drafted for each team who set their respective franchise back",
            "url": "https://www.cbssports.com/nfl/news/nfl-draft-ranking-the-biggest-bust-for-each-team-with-ryan-leaf-leading-the-way/",
            "urlToImage": "https://sportshub.cbsistatic.com/i/r/2019/10/16/ef362d0e-091a-41eb-86be-cc9a5fbcd4c7/thumbnail/1200x675/72ea4ee45f3cf09fff613f4f1597bcfd/leaf.png",
            "publishedAt": "2021-04-29T01:37:00Z",
            "content": "The NFL Draft has provided plenty of misses over the years, especially in the common-draft era -- which was instituted in 1967. While many observers remember the Pro Football Hall of Famers that emer… [+20557 chars]"
            },
            -{
            -"source": {
            "id": null,
            "name": "ESPN"
            },
            "author": "David Schoenfield",
            "title": "Jacob deGrom ties Nolan Ryan for most strikeouts in first five starts; Mets fall to Red Sox 1-0 - ESPN",
            "description": "Jacob deGrom struck out nine in six innings Wednesday night, running his five-game total to 59 to tie Nolan Ryan's record, but the Mets lost 1-0 to the Red Sox.",
            "url": "https://www.espn.com/mlb/story/_/id/31354277/new-york-mets-jacob-degrom-ties-nolan-ryan-most-strikeouts-first-five-starts",
            "urlToImage": "https://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2021%2F0429%2Fr847083_1296x729_16%2D9.jpg",
            "publishedAt": "2021-04-29T01:34:04Z",
            "content": "Mets right-hander Jacob deGrom tied Nolan Ryan's record for most strikeouts through a pitcher's first five starts of a season, finishing Wednesday night's start with nine strikeouts over six innings … [+4143 chars]"
            },
            -{
            -"source": {
            "id": "google-news",
            "name": "Google News"
            },
            "author": null,
            "title": "CDC: COVID-19 vaccine drastically cuts hospitalizations - CBS News",
            "description": null,
            "url": "https://news.google.com/__i/rss/rd/articles/CBMiK2h0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9em1VZ1ZzTWhxR1nSAQA?oc=5",
            "urlToImage": null,
            "publishedAt": "2021-04-29T00:10:34Z",
            "content": null
            },
            -{
            -"source": {
            "id": null,
            "name": "KTLA Los Angeles"
            },
            "author": "KTLA Digital Staff",
            "title": "North Fire: Evacuation orders issued in 650-acre brush fire at 0% containment in Castaic - KTLA Los Angeles",
            "description": "Evacuations were ordered as crews battled a 650-acre brush fire with 0% containment in Castaic on Wednesday. The blaze, dubbed North Fire, sparked just after 1:30 p.m. in the 2900 block of The Old Road, according to the Los Angeles County Fire Department. A m…",
            "url": "https://ktla.com/news/local-news/crews-battle-150-acre-brush-fire-with-0-containment-in-castaic/",
            "urlToImage": "https://ktla.com/wp-content/uploads/sites/4/2021/04/snapshot-1-16.jpg?w=1280",
            "publishedAt": "2021-04-29T00:09:34Z",
            "content": "Evacuations were ordered as crews battled a 650-acre brush fire with 0% containment in Castaic on Wednesday.\r\nThe blaze, dubbed North Fire, sparked just after 1:30 p.m. in the 2900 block of The Old R… [+1630 chars]"
            },
            -{
            -"source": {
            "id": "google-news",
            "name": "Google News"
            },
            "author": null,
            "title": "Jim Cramer on what's bothering him this earnings season - CNBC Television",
            "description": null,
            "url": "https://news.google.com/__i/rss/rd/articles/CBMiK2h0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9dWczc3VoVW1KY2_SAQA?oc=5",
            "urlToImage": null,
            "publishedAt": "2021-04-28T23:58:04Z",
            "content": null
            },
            -{
            -"source": {
            "id": "cnn",
            "name": "CNN"
            },
            "author": "Holly Yan, CNN",
            "title": "Covid-19 vaccine myths: These reasons for not getting a shot don't hold up. In fact, they'll set the US back - CNN ",
            "description": "Americans have an easy way to crush Covid-19 -- one that would let businesses fully reopen safely, ditch the need for social distancing and restore a mask-free return to normalcy. But too many refuse to get vaccinated, citing myths that don't make sense.",
            "url": "https://www.cnn.com/2021/04/28/health/covid-vaccine-myths-debunked/index.html",
            "urlToImage": "https://cdn.cnn.com/cnnnext/dam/assets/210420141937-01-needles-pfizer-vaccine-0415-super-tease.jpg",
            "publishedAt": "2021-04-28T23:48:00Z",
            "content": "(CNN)Americans have an easy way to crush Covid-19 -- one that would let businesses fully reopen safely, ditch the need for social distancing and restore a mask-free return to normalcy. \r\nBut many Ame… [+14119 chars]"
            },
            -{
            -"source": {
            "id": null,
            "name": "KCRA Sacramento"
            },
            "author": "Jonathan Ayestas",
            "title": "A 2020 Solano County fire that killed 2 was cover-up for murder, officials say - KCRA Sacramento",
            "description": "A 2020 wildfire in Solano County that killed two people was deemed as arson and a cover-up for murder, investigators said Wednesday during a briefing. That suspect is now in custody.",
            "url": "https://www.kcra.com/article/2020-solano-county-fire-killed-2-cover-up-murder/36282184",
            "urlToImage": "https://kubrick.htvapps.com/htv-prod-media.s3.amazonaws.com/images/lnu-fire-2-1598509589.png?crop=1.00xw:1.00xh;0,0&resize=1200:*",
            "publishedAt": "2021-04-28T23:40:00Z",
            "content": "SOLANO COUNTY, Calif. —A 2020 wildfire in Solano County where two people were found dead was deemed as arson and a cover-up for murder, investigators said Wednesday during a briefing. That suspect is… [+1182 chars]"
            },
            -{
            -"source": {
            "id": "cbs-news",
            "name": "CBS News"
            },
            "author": "Erin Donaghue",
            "title": "Andrew Brown Jr. shooting: Judge blocks immediate public release of bodycam video, allows family access - CBS News",
            "description": "The judge, however, allowed the video to be released to the family of the Black man shot by North Carolina deputies.",
            "url": "https://www.cbsnews.com/news/andrew-brown-jr-shooting-north-carolina-bodycam-video-judge-blocks-release/",
            "urlToImage": "https://cbsnews3.cbsistatic.com/hub/i/r/2021/04/26/81cadf25-c9cf-49c2-a14e-c0d6fe4d9e76/thumbnail/1200x630/9c5904ca7a7622c8d1c6456a8ef3fddb/cbsn-fusion-family-of-andrew-brown-jr-could-see-deputy-body-camera-video-today-thumbnail-701219-640x360.jpg",
            "publishedAt": "2021-04-28T23:15:00Z",
            "content": "A judge has ruled to allow full body camera footage to be disclosed to the family of Andrew Brown Jr., a Black man who was fatally shot by North Carolina sheriff's deputies last week as they attempte… [+6059 chars]"
            },
            -{
            -"source": {
            "id": null,
            "name": "NBCSports.com"
            },
            "author": "Charean Williams",
            "title": "Seahawks tried to trade up to select George Kittle in 2017 draft - NBC Sports",
            "description": "The Seahawks thought they had a trade to draft George Kittle in 2017, and the tight end was convinced he was headed to Seattle. Instead, the 49ers beat the Seahawks to the punch. Seahawks General Manager John Schneider has said publicly said Seattle “missed […",
            "url": "https://profootballtalk.nbcsports.com/2021/04/28/seahawks-tried-to-trade-up-to-select-george-kittle-in-2017-draft/",
            "urlToImage": "https://profootballtalk.nbcsports.com/wp-content/uploads/sites/25/2021/04/GettyImages-1295377383-e1619651275665.jpg",
            "publishedAt": "2021-04-28T23:08:00Z",
            "content": "The Seahawks thought they had a trade to draft George Kittle in 2017, and the tight end was convinced he was headed to Seattle.\r\nInstead, the 49ers beat the Seahawks to the punch.\r\nSeahawks General M… [+1299 chars]"
            },
            -{
            -"source": {
            "id": "associated-press",
            "name": "Associated Press"
            },
            "author": "Matthew Lee",
            "title": "US eyes major rollback in Iran sanctions to revive nuke deal - The Associated Press",
            "description": "WASHINGTON (AP) — The Biden administration is considering a near wholesale rollback of some of the most stringent Trump-era sanctions imposed on Iran in a bid to get the Islamic Republic to return to compliance with a landmark 2015 nuclear accord, according t…",
            "url": "https://apnews.com/article/iran-middle-east-business-iran-nuclear-government-and-politics-dc498f981c0746cd7c837b969702de28",
            "urlToImage": "https://storage.googleapis.com/afs-prod/media/18fad28313204389bd635fdb158cbf5f/3000.jpeg",
            "publishedAt": "2021-04-28T23:03:59Z",
            "content": "WASHINGTON (AP) The Biden administration is considering a near wholesale rollback of some of the most stringent Trump-era sanctions imposed on Iran in a bid to get the Islamic Republic to return to c… [+7105 chars]"
            },
            -{
            -"source": {
            "id": null,
            "name": "DenverBroncos.com"
            },
            "author": null,
            "title": "Ask Aric: How does the Broncos' trade for Teddy Bridgewater impact their plans for Round 1? - DenverBroncos.com",
            "description": "If the day before the draft is any indication, we could be in for fireworks when the 2021 NFL Draft officially kicks off on Thursday.",
            "url": "https://www.denverbroncos.com/news/mailbag/ask-aric-how-does-the-broncos-trade-for-teddy-bridgewater-impact-their-plans-for",
            "urlToImage": "https://static.clubs.nfl.com/image/private/t_editorial_landscape_12_desktop/broncos/ngogwfkloptb3qkk8es6",
            "publishedAt": "2021-04-28T22:38:51Z",
            "content": "What three positions are your Top 3 for Round 1? - Gary F.\r\nQB, LB, CB in that order.\r\nIn this league and particularly in this division you need an elite quarterback to win consistently. Perhaps Drew… [+4440 chars]"
            },
            -{
            -"source": {
            "id": null,
            "name": "Eonline.com"
            },
            "author": "Corinne Heller",
            "title": "Elliot Page Tearfully Recalls to Oprah Winfrey His Most Joyful Moment Since Coming Out as Transgender - E! NEWS",
            "description": "In December 2020, Elliot Page came out as a transgender man. In an interview with Oprah Winfrey, set to stream on Apple TV+ on April 30, the Juno star opens up about his transition.",
            "url": "https://www.eonline.com/news/1263777/elliot-page-tearfully-recalls-to-oprah-winfrey-his-most-joyful-moment-since-coming-out-as-transgender",
            "urlToImage": "https://akns-images.eonline.com/eol_images/Entire_Site/2021328/rs_600x600-210428121805-600-elliot-page-oprah-winfrey-apple-cjh-042721.jpg?fit=around%7C1080:1080&output-quality=90&crop=1080:1080;center,top",
            "publishedAt": "2021-04-28T22:38:49Z",
            "content": "In an emotional interview withOprah Winfrey, Elliot Page recalls the happiest moment of his life since the start of his transition to become a transgender man.\r\nThe 34-year-old actor, known for roles… [+859 chars]"
            },
            -{
            -"source": {
            "id": null,
            "name": "Investopedia"
            },
            "author": "https://www.facebook.com/About-Finance-269275536437642",
            "title": "Apple Earnings: What Happened with AAPL - Investopedia",
            "description": "Apple's (AAPL) Q2 fiscal year 2021 earnings report delivered strong beats on earnings and revenue. Apple also announced $90 billion in buybacks.",
            "url": "https://www.investopedia.com/apple-q2-2021-earnings-report-recap-5180817",
            "urlToImage": "https://www.investopedia.com/thmb/Xq0JhbWvCT187SCvF4TodsTM5dc=/1920x1080/filters:fill(auto,1)/Say-14-To-Siri-iPhone-5181148-a942a1c4d4474a699e211564d1d61c13.jpg",
            "publishedAt": "2021-04-28T22:30:06Z",
            "content": "<table>\r\n<tr><th>Apple Earnings Results</th></tr>\r\n<tr><td>Metric</td><td>Beat/Miss/Match</td><td>Reported Value</td><td>Analysts' Prediction</td></tr><tr><td>EPS</td><td>Beat</td><td>$1.40</td><td>$… [+3038 chars]"
            },
            -{
            -"source": {
            "id": null,
            "name": "HuffPost"
            },
            "author": "Carly Ledbetter",
            "title": "Kate Middleton, Prince William Mark 10th Anniversary With New Portraits - HuffPost",
            "description": "The Duke and Duchess of Cambridge appear to recreate their engagement photo in one of the new wedding anniversary pictures.",
            "url": "https://www.huffpost.com/entry/kate-middleton-prince-william-new-wedding-photos_n_6089b12de4b0ccb91c2d4370",
            "urlToImage": "https://img.huffingtonpost.com/asset/6089d4da2600002e3eb41d25.jpg?cache=thcb0xelrg&ops=1778_1000",
            "publishedAt": "2021-04-28T21:30:00Z",
            "content": "Kate Middleton and Prince William are celebrating their 10th wedding anniversary with brand-new photos. \r\nKensington Palace released two portraits on behalf of the couple on Wednesday, one day before… [+1668 chars]"
            },
            -{
            -"source": {
            "id": "ign",
            "name": "IGN"
            },
            "author": "Seth Macy",
            "title": "How to Print Your Own Pokémon Snap Photos With The Fujifilm Instax Mini Link - IGN",
            "description": "The special edition version of the smartphone printer hasn't come out yet, but you can still snag one of the regular versions, if you're quick about it.",
            "url": "https://www.ign.com/articles/how-to-print-your-own-pokemon-snap-photos-with-the-fujifilm-instax-mini-link",
            "urlToImage": "https://assets1.ignimgs.com/2021/01/14/snapbr-1610631531660.png?width=1280",
            "publishedAt": "2021-04-28T21:22:38Z",
            "content": "With the upcoming release of New Pokémon Snap, and the loss of Blockbuster Video's dedicated Pokémon Snap Stations to print your grainy captures, it seemed like there was no way to get the Pokémon fr… [+2619 chars]"
            },
            -{
            -"source": {
            "id": "the-hill",
            "name": "The Hill"
            },
            "author": "Rachel Frazin",
            "title": "Senate votes to nix Trump rule limiting methane regulation | TheHill - The Hill",
            "description": "The Senate voted Wednesday to undo a Trump administration rule that rescinded methane e...",
            "url": "https://thehill.com/policy/energy-environment/550671-senate-nixes-trump-rule-limiting-methane-regulation",
            "urlToImage": "https://thehill.com/sites/default/files/methaneemissions_istock.jpg",
            "publishedAt": "2021-04-28T21:22:01Z",
            "content": "The Senate voted Wednesday to undo a Trump administration rule that rescinded methane emissions limits and made it harder to regulate releases of the greenhouse gas from the oil and gas sector.\r\nIn t… [+6468 chars]"
            }
            ]
            }
            """
        let jsonData = jsonString.data(using: .utf8)!
        let user = try! JSONDecoder().decode(NewsArr.self, from: jsonData)
        print(user.articles.description)


        }
    }

