# == Schema Information
#
# Table name: tasks
#
#  id           :integer          not null, primary key
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

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
