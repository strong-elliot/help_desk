class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :user
      t.string :tech
      t.text :description
      t.text :resolution
      t.string :catagory
      t.timestamps
    end
  end
end
