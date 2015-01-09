App.LeadsNewController = Ember.Controller.extend

	actions:

		createLead: ->
			fields = @get('fields')
			if App.Lead.valid(fields)
				lead = @store.createRecord 'lead', fields
				lead.save().then =>
					@transitionsToRoute 'lead', lead
			else
				@set 'showError', true