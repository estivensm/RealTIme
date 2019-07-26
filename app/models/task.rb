# == Schema Information
#
# Table name: tasks
#
#  id           :bigint           not null, primary key
#  title        :string
#  body         :text
#  user_id      :integer
#  user_task_id :integer
#  date_create  :date
#  date_finish  :date
#  comment_id   :integer
#  state        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Task < ApplicationRecord
	after_create_commit {MessageBroadcastJob.perform_later self}
end
