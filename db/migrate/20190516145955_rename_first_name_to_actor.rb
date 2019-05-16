class RenameFirstNameToActor < ActiveRecord::Migration[5.2]
  def change
    def self.up
      rename_table :first_name, :actor
    end
  
    def self.down
      rename_table :actor, :first_name
    end
  end
end
