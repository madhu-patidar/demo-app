class CreateArticals < ActiveRecord::Migration[5.0]
  def change
    create_table :articals do |t|
    	t.string :user_name
    	t.string :title
    	t.text :body

      t.timestamps
    end
  end
end
