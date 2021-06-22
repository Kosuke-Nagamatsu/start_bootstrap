class CreateContacs < ActiveRecord::Migration[5.2]
  def change
    create_table :contacs do |t|
      t.string :name
      t.string :email
      t.text :content

      t.timestamps
    end
  end
end
