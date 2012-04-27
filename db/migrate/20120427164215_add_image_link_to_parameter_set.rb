class AddImageLinkToParameterSet < ActiveRecord::Migration
  def change
    add_column :parameter_sets, :image, :string
  end

end
