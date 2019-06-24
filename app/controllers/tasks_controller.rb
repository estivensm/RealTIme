class TasksController < ApplicationController
	def show
		@tasks = Task.all
	end

	def create
		@create_task = Task.create(title: params[:title], body: params[:body], state: params[:state])
	end
end
