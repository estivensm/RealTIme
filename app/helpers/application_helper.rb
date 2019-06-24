module ApplicationHelper
	def select_state
		[

			["Pendiente", "Pendiente"],
			["Importante", "Importante"],
			["Realizada", "Realizada"],
			["No realizada", "No realizada"]


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

	def get_button_state(state)
		if state == "Pendiente"
			'<button type="button" class="btn btn-outline-warning">Pendiente</button>'
		elsif state == "Importante"
			'<button type="button" class="btn btn-outline-danger">Importante</button>'
		elsif state == "Realizada"
			'<button type="button" class="btn btn-outline-success">Realizada</button>'
		elsif state == "No realizada"
			'<button type="button" class="btn btn-outline-info">No realizada</button>'
		end
	end
end
