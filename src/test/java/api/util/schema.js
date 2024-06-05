function fun() {
	return {
		'getUserSchema':
		{
			'data': {
				'id': '#number',
				'email': '#string',
				'first_name': '#string',
				'last_name': '#string',
				'avatar': '#string'
			},
			'support': {
				'url': '#string',
				'text': '#string'
			}
		},
		'postUserSchema':
		{
			'name': '#string',
			'job': '#string',
			'id': '#string',
			'createdAt': '#string'
		}
	}
}