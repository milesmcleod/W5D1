class CreateGoalComments < ActiveRecord::Migration[5.1]
  def change
    create_table :goal_comments do |t|
      t.string :body
      t.integer :goal_id
      t.integer :author_id
      t.timestamps
    end
  end
end
