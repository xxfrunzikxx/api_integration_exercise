require "../../spec/models/user_spec"
class AddMyIdToPeople < ActiveRecord::Migration
  def change
    add_column :people, :my_id, :integer
  end
end
