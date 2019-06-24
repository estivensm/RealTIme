class TasksController < ApplicationController
	  before_action :set_task_function, only: [:destroy, :edit, :update]

	def show
		@tasks = Task.all
	end

	def create
	  	@tasks = Task.create(task_params)
	end

	  def new
	    @profile = Profile.find(params[:profile])
	  end

	  def edit
	    
	  end

	  def update
	  	if @task.update(task_params)
	  		MessageBroadcastJob.perform_later @task
	  	end
	  end

	  def destroy
	    respond_to do |format|
	  	  if @profile_functions.destroy
	        format.js
	      else 
	        redirect_to admin_contact_path
	      end
	    end 
	  end

	  private 

	  def set_task_function
	  	@task = Task.find(params[:id])
	  end

	  def task_params
	    params.permit(:title, :user_id, :body, :state)
	  end


end
