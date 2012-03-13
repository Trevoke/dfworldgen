class AddUserReferenceToParameterSet < ActiveRecord::Migration
  def change
    change_table :parameter_sets do |t|
      t.references :user
    end
  end
end
