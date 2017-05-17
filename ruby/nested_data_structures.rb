conference = {
	room1: {
		topic: 'environment',
		host: 'EPA',
		number_of_guests: 14,
		special_requests: [
			'organic locally sourced fruit'
		]
	},

	room2: {
		topic: 'profit margins',
		host: 'NRF',
		number_of_guests: 25,
		special_requests: [	
			'sparkling water', 
			'fresh pastries'
		]
	},

	room3: {
		topic: 'team building',
		host: 'police precinct 114',
		number_of_guests: 17,
		special_requests: [	
			'donuts', 
			'coffee'
		]
	},

	staff: [ 
		'jenna', 
		'sean', 
		'stacy'
	]
}

p conference

conference[:room1][:special_requests]<<'organic tea'

p conference[:room1][:special_requests]

p conference[:staff][2]

conference[:room3][:host] = 'sheriffs department'

p conference[:room3][:host]

total_number_of_guests = conference[:room1][:number_of_guests] + conference[:room2][:number_of_guests] + conference[:room3][:number_of_guests]

total_ppl_in_building = total_number_of_guests + conference[:staff].length

p total_number_of_guests
p total_ppl_in_building

p conference




