class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :username
      t.text :description
      t.string :country
      t.timestamps
    end
  end
end
