class RemoveActsAsVotable < ActiveRecord::Migration
  def self.up
    drop_table :votes
  end

  def self.down
    raise IrreversibleMigration
  end

end