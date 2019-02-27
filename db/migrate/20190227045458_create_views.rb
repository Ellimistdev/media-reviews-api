class CreateViews < ActiveRecord::Migration[5.2]
  def change
    create_table :views do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :movie, foreign_key: true
    end
  end
end
