class AddMyIdToPeople < ActiveRecord::Migration
  def change
    add_column :people, :my_id, :integer
  end
end
