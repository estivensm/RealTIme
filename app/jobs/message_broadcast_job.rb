class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message)
  	ActionCable.server.broadcast "demo", message: render_message(message)
  end

  private 

  def render_message(message)
  	ApplicationController.renderer.render(partial: "tasks/task", locals: {tarea: message })
  end
end
