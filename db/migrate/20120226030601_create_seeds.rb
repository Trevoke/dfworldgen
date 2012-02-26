class CreateSeeds < ActiveRecord::Migration
  def change
    create_table :seeds do |t|
      t.string :name
      t.text :description
      t.text :brackets
    end
  end
end
