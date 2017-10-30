class AddColumsnToGoals < ActiveRecord::Migration[5.1]
  def change

    add_column :goals, :body, :string
    add_column :goals, :user_id, :integer
    add_column :goals, :private, :boolean, default: false
    add_index :goals, :user_id

  end
end
