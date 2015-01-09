App.LeadsRoute = Ember.Route.extend

	model: (params) -> @store.find 'lead', params.id