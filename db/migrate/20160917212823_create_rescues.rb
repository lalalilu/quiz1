class CreateRescues < ActiveRecord::Migration
  def change
    create_table :rescues do |t|
      t.string :title
      t.text :description
      t.string :when

      t.timestamps
    end
  end
end
