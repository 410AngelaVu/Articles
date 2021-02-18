# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 User.create(email:"katja@gmail.com",name:"Katja", username:'Katja', password:"123456", password_confirmation:'123456')

Category.create(name:"Airbus A340-600", priority:1)
Category.create(name:"Airbus A380-800", priority:2)
Category.create(name:"Boeing 777-300", priority:3)
Category.create(name:"Rotorcraft", priority:4)

  article_one = Article.create(author_id: 1, title: '1-Boeing’s Advanced Manufacturing Improves 777 Assembly', text:'Mechanic Mike Jennings has 
	two new words in his job title – robot operator. He helps oversee one of the robots used in the new Fuselage Automated Upright Build, 
	or FAUB, process that helps manufacture 777s -- more than 40 to date -- in Everett, Wash. 
	Stationed at a computer that shows robot diagnostics and images from a small camera built into the 
	multi-function tool at the end of the robot arm, Jennings monitors its movements and makes notes. 
	He and fellow team members maintain the system and make tweaks if needed. 
	“I’m learning a new aspect of manufacturing, and that’s really cool,” Jennings said. 
	I like being part of this cutting-edge technology that’s helping improve how we build airplanes.
	” FAUB is a partnership of automation and manual work that assembles the forward and aft sections of the 777 fuselage. 
	After teams load and set the panels, robot pairs move in unison along the barrel “drilling and filling” thousands of 
	fasteners that connect the sections. It’s a job Jennings used to do by hand – repetitive work that he said was 
	“really tough and stressful” on his back, neck, shoulders and arms. FAUB eliminates that stress on the mechanics. 
	It also improves quality and will speed up the build process in a very flexible way, according to Samantha Jarema, 
	of FAUB Production & Integration. “Most everything in here is on wheels,” said Jarema, 
	referring to the machinery in the new FAUB factory built at the east end of the Everett site. 
	“We can build any portion of the forward or aft section in any of our six main production positions.
	” Mechanics are able to move the robots and massive parts around on automated guided vehicles or AGVs. 
	That mobility and flexibility will allow FAUB to manufacture all 777 models including the upcoming 777X, said Ben Nimmergut, 
	777 production engineering chief engineer.')
  article_one.image.attach(io: File.open("#{Rails.root}/app/assets/images/A340-600_Airbus.jpeg"), filename:'A340-600_Airbus.jpeg')
# Article.create(author_id: 1, title:'Singapore Airlines Commitment to purchase 20 777-3', text:'Singapore Airlines has announced its 
# 	commitment to purchase 20 777-9s and 19 787-10 Dreamliners. The national carrier and 787-10 launch customer also announced its 
# 	recommitment for its previous order for 30 787-10 airplanes. When finalized, the order will be posted on the Boeing Orders and 
# 	Deliveries website. "Singapore Airlines has been a valued Boeing customer for more than 50 years and we are honored they have 
# 	selected the 777X and additional 787-10s to expand its future widebody fleet. They are the most efficient, capable and passenger 
# 	preferred airplanes in their class," said Boeing Commercial Airplanes President & CEO Kevin McAllister. "We appreciate the trust, 
# 	commitment and endorsement of Singapore Airlines, and look forward to delivering market-leading capability to one of the worlds 
# 	most widely respected industry leaders." Advanced technology including a new composite wing, all-new engines and superior 
# 	aerodynamics will result in the incredible fuel efficiency promised by the 777X family. The 777-9 will be the largest and most 
# 	efficient twin-engine commercial jet in the world with the lowest operating cost per seat of any commercial airplane and no 
# 	competitor in its market segment. The 787-10 is the third member of the super-efficient, passenger-pleasing 787 Dreamliner family. 
# 	With its greater passenger and cargo capacity, high degree of commonality and passenger-pleasing features, the 787-10 will complement 
# 	the family while setting a new benchmark for fuel efficiency and operating economics – 25 percent better fuel per seat and emissions 
# 	than the airplanes it will replace. Since its introduction, the 787 Dreamliner has opened more than 130 new city pairs, 
# 	connecting the world as never before.').image.attach(io: File.open('storage/8d/6m/8d6moq1htxvnqzwz9uvxclhjzt85'), filename:'8d6moq1htxvnqzwz9uvxclhjzt85')
# Article.create(author_id: 1, title:'Longest fuselage', text:'The super-stretch A340-600 is Airbus’ longest jetliner operating today, 
# 	with an overall fuselage length of 75.36 metres. The aircraft’s capacity is between 320 and 370 seats in a typical layout, with 
# 	up to 475 passengers accommodated in a high-density configuration – providing an ideal mix of capacity and efficiency for 
# 	operators across the globe. The A340-600 is the largest-capacity member of the A340 Family. With an overall length of 75.36 metres, 
# 	and a seating capacity between 320 and 370 passengers in a typical three-class layout or 475 in high-density seating – while keeping 
# 	the Airbus standard 18-inch wide seat comfort in economy class. Its versatility and flexibility allow it to be effectively utilised 
# 	as both a commercial aircraft or as a business or government jet. With more space in the cabin, passengers can expect to enjoy more 
# 	room for themselves. The A340-600 can also incorporate recently innovated modern technology; meaning that everyone on board can relax 
# 	and unwind with some of the latest entertainment options. This super-stretch aircraft provides operators with unrivalled standards of 
# 	space, comfort and amenities in each class of service, along with twice the underfloor cargo capacity of comparable airliners. 
# 	Airbus’ A340-600 is an ultra-long-haul leader, with a range of 7,900 nautical miles. The jetliner’s four Rolls-Royce 
# 	Trent 500 engines use only 56,000 lbs. of their certified 60,000 lbs. of thrust, resulting in longer on-wing lives. 
# 	Furthermore, the use of four engines – as opposed to two larger ones – allows for a 13 per cent reduction in maintenance 
# 	costs for operators. In terms of range, the A340-600 offers unmatched operational flexibility on non-stop flights over 
# 	remote areas such as oceans and mountain ranges, allowing for operations that are not subject to ETOPS 
# 	(Extended-range Twin-engine Operational Performance Standards) regulations. This enables airlines to fly more direct routes – even 
# 	long distances over water or on segments far from airports – saving travel time and cutting fuel consumption.').image.attach(io: File.open('storage/pk/yg/pkygmhga8jcp8pa4qo3r3csr3cxx'), filename:'pkygmhga8jcp8pa4qo3r3csr3cxx')
# Article.create(author_id: 1, title:'Aircraft commonality', text:'The A340-600 also includes state-of-the-art technologies 
# 	such as weight-saving composite structures; a fuel-saving aerodynamic design; along with pilot-friendly cockpits, 
# 	flight controls and systems – all of which significantly enhance the A340-600’s long-range capabilities and overall 
# 	cost-efficiency. In the secondary market, the A340-600 is ideal for replacing competing aircraft, with 20 per cent 
# 	lower fuel per trip and a more modern cabin with the latest technology. True to Airbus’ unique family concept, 
# 	it also offers an exceptional degree of operational commonality with all of the company’s fly-by-wire aircraft – allowing 
# 	pilots to transition from one type to another with minimum training time. The A340 Family’s enduring quality is further 
# 	proof of the cutting-edge design, innovation and manufacture at the heart of Airbus’ business. This aircraft continues 
# 	to fly and delight passengers that used to the highest standards of comfort while offering significant advantages 
# 	to airlines and operators.').image.attach(io: File.open('storage/7i/eg/7ieguot5llw5iymvimmklle264hw'), filename:'7ieguot5llw5iymvimmklle264hw')
# Article.create(author_id: 1, title:'An experience to remember', text:'The A380 is a modern icon that has flown over 500,000 
# 	revenue flights carrying over 190 million passengers. This includes more than 300 commercial flights per day, which take 
# 	off or land around the world every two minutes. Flying with the A380 is a unique experience that introduces passengers to 
# 	new standards of in-flight comfort, from first class to economy. As the world’s largest and most spacious passenger aircraft, 
# 	its cabin allows travellers to stretch out in the widest seats in a calm and relaxing environment. With the unparalleled 
# 	freedom it gives passengers to move about the aircraft, it’s no surprise that the A380 is a favourite in all cabin classes. 
# 	The double-deck A380 makes excellent use of its space to offer passengers attainable luxury. With enough room to install 
# 	stylish first-class suites, an eye-catching bar or business areas, beautifully inviting cabin lighting and the quietest 
# 	cabin in the sky, passengers can enjoy every aspect of the flight and, thanks to innovative cabin air supply technology, 
# 	will arrive at the destination feeling inspired and ready to go. The A380 Forward and aft lower-deck cargo compartments 
# 	are equipped with semi-automatic Cargo Loading Systems, which operate independently. With air traffic continuing to 
# 	double every 15 years, the A380 was designed to meet the needs of the passengers and airports, while also delivering 
# 	the level of efficiency necessary to protect the environment for future generations. It has two full-length decks with 
# 	wide-body dimensions, meaning its two passenger levels offer an entire deck’s worth of additional space compared to the 
# 	next largest twin-engine jetliner. With more seats than any other aircraft, the A380 offers solutions to overcrowding; 
# 	needing fewer journeys to carry 60 more passengers, making it the perfect solution to airport congestion, 
# 	fleet planning optimization and traffic growth.').image.attach(io: File.open('storage/mg/zl/mgzlychpvfojh5y4upzz5tepo0oi'), filename:'mgzlychpvfojh5y4upzz5tepo0oi')
# Article.create(author_id: 1, title:'ACH', text:'Marignane, Airbus Corporate Helicopters (ACH) has won a new order for its latest 
# 	ACH160 helicopter, announced just days after the H160 achieved certification. This new order, placed by an experienced Italian 
# 	operator for use on private and corporate flights mainly inside Italy, means the ACH160 has been ordered by customers in eight 
# 	countries across North America, Latin America, Europe, China and South-East Asia. The client, an existing ACH twin-engined 
# 	helicopter operator, has specified a customised interior configured for six passengers. The ACH160 is the premium version of 
# 	the new H160 helicopter which was certified by EASA on 1 July ready for deliveries to private and business customers commencing 
# 	later this year. It is the latest member of the ACH family and the most technologically advanced helicopter in its class. 
# 	As well as its range of stylish interiors including bespoke solutions, the ACH160 offers a smooth and quiet ride allied to 
# 	the Helionix advanced digital avionics system ensuring carefree handling and the highest level of safety. Frederic Lemos, 
# 	Head of ACH, said: “This new order from a highly knowledgeable ACH customer is yet more evidence of the strong welcome being 
# 	received by the ACH160 in this demanding sector even at a notably challenging time for the helicopter market.” The full ACH 
# 	helicopter range consists of the ACH125, ACH130, ACH135, ACH145, ACH160 and ACH175 variants of Airbus Helicopters’ comprehensive 
# 	and market leading family of light and medium models. A range of premium-design aircraft completions, including bespoke designs, 
# 	is available for all models. About Airbus Airbus is a global leader in aeronautics, space and related services. In 2019, it 
# 	generated revenues of €70 billion and employed a workforce of around 135,000. Airbus offers the most comprehensive range of 
# 	passenger airliners. Airbus is also a European leader providing tanker, combat, transport and mission aircraft, as well as one of 
# 	the world’s leading space companies. In helicopters, Airbus provides the most efficient civil and military rotorcraft solutions 
# 	worldwide.').image.attach(io: File.open('storage/0p/ca/0pcapxv8ea4tvcky6gq4goch7umn'), filename:'0pcapxv8ea4tvcky6gq4goch7umn')
# Article.create(author_id: 1, title:'A380: White elephant', text:'The decision to halt production of the A380 superjumbo is 
# 	the final act in one of Europe’s greatest industrial adventures and reflects a dearth of orders by airline bosses unwilling 
# 	to back Airbus’s vision of huge jets to combat airport congestion. Air traffic is growing at a near-record pace but this has 
# 	mainly generated demand for twin-engined jets nimble enough to fly directly to where people want to travel, rather than bulky 
# 	four-engined jets forcing passengers to change at hub airports. And while loyal supporters like top customer Emirates say the 
# 	popular 544-seat jet makes money when full, each unsold seat potentially burns a hole in airline finances because of the fuel 
# 	needed to keep the huge double-decker structure aloft. “It’s an aircraft that frightens airline CFOs; the risk of failing to 
# 	sell so many seats is just too high,” said a senior aerospace industry source familiar with the program. Once hailed as the 
# 	industrial counterpart to Europe’s single currency, the demise of a globally recognized European symbol coincides with growing 
# 	political strains between Britain, France, Germany and Spain where the plane is built. That’s in stark contrast to the display 
# 	of European unity and optimism when the engineering behemoth was unveiled in front of European leaders under a spectacular light 
# 	show in 2005.').image.attach(io: File.open('storage/pk/yg/pkygmhga8jcp8pa4qo3r3csr3cxx'), filename:'pkygmhga8jcp8pa4qo3r3csr3cxx')
# Article.create(author_id: 1, title:'From Boeing 777 to A:380', text:"Emirates was conceived in March 1985 with backing from Dubai's 
# 	royal family, whose Dubai Air Wing provided two of the airline's first aircraft, used Boeing 727-200/Advs. It also leased a new 
# 	Boeing 737-300 as well as an Airbus A300B4-200, both from Pakistan International Airlines,[18][19] Emirates then launched 
# 	daily nonstop service to London Gatwick on 6 July 1987 with two new Airbus A310s. By 1994 the airline had a fleet of 18 Airbus 
# 	aircraft. Seven new Boeing 777s worth over US$1 billion were ordered in 1992, which began to arrive in summer 1996. Emirates' Airbus 
# 	A300B4-200 fleet was retired from service by the end of 1987. Emirates' Airbus A300-600Rs were retired in 2002 and replaced by 
# 	Airbus A330-200s. The Boeing 727-200/Advs remained in service with the airline for nine years, and were sold in 1995. 
# 	The Boeing 737-300 remained in service for two years from 1985 to 1987. The last pax Airbus A310-300 was retired after 
# 	operating its final flight on 29 July 2007 from Alexandria, Egypt to Dubai, UAE and was sold to Qatar Amiri Flight in 2008. 
# 	Emirates SkyCargo Airbus A310s were retired in 2009. The planned phaseout of Emirates' older large Airbus widebodies started in 
# 	February 2011, starting with the retirement of two Airbus A330-200s from its fleet. The last Airbus A340-500 was withdrawn from 
# 	service on 31 March 2016 after operating a final flight from Kabul to Dubai.[20] The first Boeing 777-300ER was withdrawn from use on 
# 	27 March 2017 after performing its final flight for Emirates as Flight 724 from Addis Ababa.[21][better source needed][22]
# 	[better source needed] In December 2017, Emirates retired the last of the Emirates SkyCargo Boeing 747-400 Freighters.[23] 
# 	Emirates started retiring 777-300 from their fleet in 2016 and their last 777-300 was retired on 26 September 2019.[24][25][26] 
# 	On 29 and 30 October 2016, Emirates retired three aircraft types from its operating fleet, namely the Airbus A330-200, A340-300 
# 	and Boeing 777-200ER. This simplification of aircraft reduced the airline's current fleet to just two aircraft families for 
# 	passenger service until the addition of the Airbus A350-900 in 2023: the Airbus A380-800 and three models from the Boeing 777 family. 
# 	Emirates has operated the following aircraft since 1985:[27]").image.attach(io: File.open('storage/z1/5d/z15d60hggnbo7dejsskz2oehq5bg'), filename:'z15d60hggnbo7dejsskz2oehq5bg')
# Article.create(author_id: 1, title:'H125', text:"Today the renamed H125, capable of lifting its own weight in payload, is used across 
# 	all environments for private and business, utility and aerial missions. Its high performance, reliability (offering 90 availability) 
# 	and affordability makes it a natural choice for operating in extreme conditions and locations including offshore, high plateau and 
# 	mountainous regions, remote wilderness and tough, arid habitats. But its sports car-inspired lightweight design, offering a versatile 
# 	and responsive performance make it the single-engine turbine helicopter of choice with private owner aviation enthusiasts who 
# 	represent a major proportion of the approximately 5,000 aircraft flying today.").image.attach(io: File.open('storage/94/o1/94o19osvznxkoc3usxb7aszkf8jn'), filename:'94o19osvznxkoc3usxb7aszkf8jn')

 ArticlesCategory.create(article_id: article_one.id, category_id: 3)
# ArticlesCategory.create(article_id: 2, category_id: 3)
# ArticlesCategory.create(article_id: 3, category_id: 1)
# ArticlesCategory.create(article_id: 4, category_id: 1)
# ArticlesCategory.create(article_id: 5, category_id: 2)
# ArticlesCategory.create(article_id: 6, category_id: 4)
# ArticlesCategory.create(article_id: 7, category_id: 2)
# ArticlesCategory.create(article_id: 8, category_id: 3)
# ArticlesCategory.create(article_id: 9, category_id: 4)



