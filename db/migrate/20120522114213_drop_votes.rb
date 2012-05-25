class DropVotes < ActiveRecord::Migration
  def up
    drop_table :votes
  end

  def down
    raise IrreversibleMigration, "Cannot regenerate 'votes' table"
  end
end
