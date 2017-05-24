# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# SOURCE HTTP
# # http://www.telegraph.co.uk/travel/destinations/north-america/united-states/articles/Americas-20-best-national-parks/

natparks = Natpark.create ([
{name: 'Yosemite', state: 'California', description: 'In the heart of Yosemite Valley you’ll spy more natural wonders in a minute than you will anywhere else in an entire day. California’s Yosemite sparkles as a crown jewel of the national parks, showcasing not just glacier-carved beauty but a panoply of superlatives: North America’s highest waterfall (Yosemite Falls); the world’s tallest uninterrupted granite monolith (El Capitan) and mountains that Ralph Waldo Emerson dubbed “unmatched on the globe.” Tioga Pass Road takes you into Yosemite’s high country, including Tuolumne Meadows and its fabulous hiking trails (try the short climb to the top of Pothole Dome). Glacier Point Road leads to perhaps the most spectacular vista in any national park, looking down on Yosemite Valley from 3,200 ft. Wawona, near the southern entrance, provides a starter for the famous Mariposa Grove of sky-scraping sequoias.'},

{name: 'Acadia', state: 'Maine', description: 'Every morning, in the predawn darkness, a crowd gathers on Cadillac Mountain, part of Mount Desert Island along the Atlantic seaboard, peering expectantly to the east. As soon as the sun peeks over the horizon they cheer — the first in the country to see the sun’s rays. And thus begins a brand-new day at Maine’s Acadia National Park.
Indeed, from its ragged shoreline and sheltered coves, to offshore rocky isles, to the serrated mountains of Mount Desert lording over swaths of pines and marshy meadows, there is much to applaud at this nearly 50,000-acre park. Twenty-mile Park Loop Road is the best way to take it all in, teetering high above the sea with spacious coastal views before careening inland through mountainous forest and meadow-carpeted valleys.
Be sure to hike or bike along the park’s 57 miles of serene carriage roads — built by John D. Rockefeller, Jr, an early park proponent, to showcase the best Mount Desert vistas. Then back by the sea, take a boat cruise or, better yet, rent a kayak, to see seals sunning themselves on rocks and, if you’re lucky, whales.'},

{name: 'Channel Islands', state: 'California', description: 'Though Channel Islands lies just 11 miles off the southern California coast, less than an hour away by boat, few people actually venture to this undeveloped, eight-island chain (five comprise the national park). What they’re missing: a sublime throwback to California of yore, where craggy arches, spindly spires and grassy hills jut up from the Pacific, without a car or mobile phone in sight.

What makes Channel Islands even more special are its plants and animals – more than 150 endemic or unique species have earned it the nickname “North American Galapagos.” This is the only place in the world you’ll see, for example, island fox, island deer mouse and yellow-blooming coreopsis clinging to exposed cliffs. Just as amazing is the life in the surrounding waters: more than 30 species of sea animals – sea lions, elephant seals, whales – cavort about.

Of special note: The largest aggregation of blue whales in the world convenes here every summer. So you can imagine the silver platter of outdoorsy activities available – kayaking through sea caves, camping on lonely bluffs, hiking to a pinniped rookery, diving to explore giant kelp beds. The list goes on and on.'},

{name: 'Pinnacles', state: 'California', description: 'One second you’re driving along a two-lane road just two hours south of San Francisco, enjoying pretty, chaparral-carpeted hills. The next, out of nowhere, looms the sky-high castle of jagged, red-rock spikes and monoliths belonging to America’s newest national park.

Upgraded from national monument to national park in 2013 due in part to its important condor recovery program, Pinnacles is little trekked and little known – one of the best reasons to visit. Its postage-stamp size, just 26,606 acres preserving ancient volcanic remnants, makes it manageable in a day. Strike out on more than 30 miles of trails ranging from easy to arduous, through fairyland forests and green valleys, past serrated spires and precariously balanced boulders, and into pitch-black, bat-inhabited talus caves (take a headlamp).

Tackle its hundreds of crowd-free rock-climbing routes. And always keep an eye out for condors, those prehistoric-looking raptors with wingspans reaching up to 10 ft; their favorite haunts include High Peaks in the early morning or early evening, or along the ridge just southeast of the campground.'},

{name: 'Grand Canyon', state: 'Arizona', description: 'Nearly everyone has seen photographs of Arizona’s famous gorge, measuring a mile deep and up to 18 miles wide. But nothing prepares you for its vastness, or intense beauty, as you stand on its edge, peering far, far down to the Colorado River. That snake of a river is responsible for carving the canyon’s many layers, the different colors hinting at their age; the oldest, the pink-and-white-veined granite along the bottom, dates back 1.8 billion years.

Grand Canyon ranks as the second most visited national park, with some five million people every year, mostly along the South Rim. Avoid them by hiking down one of the park’s many trails on foot or by mule — even a mile or two will give you a new perspective. The flat, paved Rim Trail is the easiest, while the classic 9.3-mile Bright Angel Trail is more strenuous but worth every step (remember it’s all uphill on the way back).

 Or focus on the pine-forested North Rim, which receives 10 per cent of park visitors. You can also hop on a raft and admire the canyon from the bottom up; sleeping along the riverbank under the dark, starry sky will be an experience you never forget.'},

{name: 'Denali', state: 'Alaska', description: 'Only one road accesses six-million-acre Denali, a single, mostly unpaved, 92-mile strip that opens up dramatic views of the subarctic wilderness — and perhaps offers the best chance to experience wildlife of any national park. No cars are allowed beyond Mile 15; everyone must jump aboard a shuttle bus. This is a good thing, given the road’s precipitous, winding nature (and the temptation to keep peering at the ever-more-dramatic landscape).

A constant companion on the southern horizon are the massive, snowcapped peaks of the Alaska Range, topped by the surreal, 20,320-ft Denali (aka Mount McKinley), North America’s tallest mountain. Along the way, keep an eye out for sightings of the park’s “big five,” Alaska style: moose, caribou, sheep, wolf and cinnamon-color Toklat grizzlies. At the end of the road awaits loon-inhabited Wonder Lake, with stunning reflections of Denali on clear-sky days.

If an all-day road trip isn’t for you, there are other ways to explore the park: hoisting a backpack for some of the best backcountry hiking anywhere; white-water rafting on the Nenana River; flightseeing around Denali itself; and, for the truly ambitious, climbing Denali’s icy slopes.'},

{name: 'Kenai Fjords', state: 'Alaska', description: 'From the massive Harding Icefield, huge glaciers grind their way slowly but surely to the sea, leaving behind jagged headlands, rocky peninsulas and rough-hewn fjords. Hence is born the wild setting of Alaska’s smallest national park. The best way to explore this icy wonderland is aboard a boat (or kayak) on Resurrection Bay. From your front-row seat you’ll be dazzled by smoky fjords, remote outlying islands and the chance to view blue tidewater glaciers up-close.

At calving Aialik Glacier, watch huge chunks of ice plummeting into the sea. Perhaps even more bedazzling is the abundance of sealife: humpback whales, orcas, harbor seals, sea otters and Steller sea lions, to name a few local denizens. Bald eagles float along towering cliffs, and seabirds (including cute puffins) congregate by the thousands.

With more time, seek out Northwestern Lagoon, quiet and serene, ideal for camping in solitary splendor. For landlubbers, the Harding Icefield Trail is a sublime walk from the face of Exit Glacier to Harding Icefield, with the chance to spot black bear along the way. '},

{name:'Hawai’i Volcanoes' , state: 'Hawaii', description: 'Watch land being born before your very eyes at Hawai`i Volcanoes, one of the world’s most volcanically active spots. Comprising two active volcanoes, Kīlauea and Mauna Loa, the park stretches from the palm-fringed coastline south of Hilo to Mauna Loa’s steaming, 13,677-ft summit.

Get a volcanic primer along Crater Rim Drive, which circles the oft-billowing Kīlauea caldera, passing by sulphur banks, eerie lava tubes and the very active Halema’uma’u crater, the legendary home of Pele, not the footballer, but the Hawaiian goddess of fire. The famous surface lava flows about 12 miles east, at the end of Chain of Craters Road.

The park provides daily updates of where the lava is flowing — in this capricious landscape it may be a mile from the road, several miles over dicey terrain … or unreachable. At the very least, you can hear the scraping, dragging flow of the brittle, glassy lava as it makes its way to the sea; in this way, more than 500 acres of new land have been added to the Big Island since Kīlauea’s latest eruption began in 1983. '},

{name: 'Olympic', state: 'Washington', description: 'Triply blessed with spellbinding ecosystems, Olympic amazes with an abundance of pristine beauty. Much of the park’s landscape, whether it’s mountain, rainforest, or coastline, remains as it has for hundreds of years. Above all rises Mount Olympus, named by a British fur trader who, upon viewing the mountain at sunset in 1788, thought it could be nothing else but the dwelling place of the gods. In this innermost realm, snowcapped mountains tower more than 7,000 ft, punctuated with 11 major rivers, waterfalls, flower-laden meadows and trout-filled lakes.

Then you have the damp, dripping rain forests, both Hoh and Quinault – among the nation’s finest remaining examples of temperate rain forest, thriving with more than 12 feet of rainfall a year. This mossy, ferny realm, showcasing soaring old-growth trees more than 20 stories high (some 500 years old) is so dark and wet it appears under water.

Keep an eye out for the Gatton Goliath, a 295-ft Douglas-fir, as well as the resident Roosevelt elk. And then you have the Pacific coastline — 73 miles of wild, wave-battered, driftwood-strewn beaches, domain of sea lions and seals. Peek into tide pools, stroll past offshore sea stacks and watch for bald eagles and Western gulls. '},

{name: 'Saguaro', state: 'Arizona', description: 'Standing guard over the Sonoran Desert with uplifted arms, the saguaro cactus has been dubbed the desert monarch. With reason. Some may reach over 50 feet tall and last up to 200 years – the biggest may have 40 twisting arms. Beloved symbol of the Old West, this prickly giant is the linchpin of Saguaro National Park, which comprises two units straddling Tucson, Arizona. You’ll find the largest concentration in the park’s hotter, drier Tucson Mountain District unit, to the west of Tucson.

In the Rincon Mountain District, 30 miles east, the higher, slightly wetter “high desert” environment, you may also spot white-tailed deer, javelinas, Mexican spotted owl, black bears, and, if you’re lucky, the elusive kudamundi. While the saguaro get most of the limelight, you’ll see plenty of other cactus too, including staghorn, barrel, fishhook, prickly pear and teddy bear.

If you can, visit during the summer wildflower display – Mexican gold poppies kick off the show, followed by penstemons, lupines, desert marigolds and brittlebushes. The saguaros bloom late May through to June — beautiful white flowers that open at night and last for merely 24 hours. '},

{name: 'Arches', state: 'Utah', description: 'You may be familiar with Utah’s Arches already, without having been there, as this striking park, with its 2,000-plus sandstone arches, has served as a backdrop to countless Hollywood flicks, including Indiana Jones, and Thelma & Louise and many of those starring John Wayne.

Nowhere in the world will you find such a large array of natural arches, patiently whittled over the eons by water and wind. The pièce de résistance, proudly displayed on Utah license plates, is Delicate Arch — with iconic redrock that’s at its most sublime at sunset.

All that said, there are more than arches here: thin fins, towers, bridges, balanced rocks, and spindly needles add to the otherworldly, high-desert sculpture garden, all with whimsical names that somehow perfectly describe them: Courthouse Towers, Parade of Elephants, and Balanced Rock are some of the favorites. Hikers wander around this stone fantasyland on short and long trails, while rock climbers rejoice in the surrounds. '},
])

Traveller.create(name: "ME")


 Review.create( title: "this", comment: "how ya", natpark_id: 1, traveller_id: 1)
 Review.create( title: "that", comment: "Love it", natpark_id: 1, traveller_id: 2)
 Review.create( title: "other", comment: "Awesome", natpark_id: 2, traveller_id: 3)
 Review.create( title: "thing", comment: "It was oK", natpark_id: 5, traveller_id: 3)

 Account.create(username: "me", password_digest: "me", first_name: "me", last_name: "johnson", email: "me@yahoo.com")
