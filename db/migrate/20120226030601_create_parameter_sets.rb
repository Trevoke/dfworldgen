class CreateParameterSets < ActiveRecord::Migration
  def change
    create_table :parameter_sets do |t|
      t.string :name
      t.text :description
      t.text :brackets
    end
  end
end
