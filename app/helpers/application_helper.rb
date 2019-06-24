module ApplicationHelper
	def select_state
		[

			["Pendiente", "Pendiente"],
			["Importante", "Importante"]

		]
	end


	def get_color_state(state)
		if state == "Pendiente"
			"border-warning"
		elsif state == "Importante"
			"border-danger"
		elsif state == "Realizada"
			"border-success"
		elsif state == "No realizada"
			"border-info"
		end
	end

	def get_state(state)
		if state == "Pendiente"
			'<span class="badge badge-pill badge-warning">Pendiente</span>'
		elsif state == "Importante"
			'<span class="badge badge-pill badge-danger">Importante</span>'
		elsif state == "Realizada"
			'<span class="badge badge-pill badge-success">Realizada</span>'
		elsif state == "No realizada"
			'<span class="badge badge-pill badge-info">No realizada</span>'
		end
	end
end
