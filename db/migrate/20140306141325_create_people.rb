class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :status
      t.string :severity

      t.timestamps
    end
  end
end
