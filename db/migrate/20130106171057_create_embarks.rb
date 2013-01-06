class CreateEmbarks < ActiveRecord::Migration
  def change
    create_table :embarks do |t|
      t.string :description
      t.string :screenshot
      t.references :parameter_set
      t.timestamps
    end
  end
end
