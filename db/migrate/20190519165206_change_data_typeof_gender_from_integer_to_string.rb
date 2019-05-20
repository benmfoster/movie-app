class ChangeDataTypeofGenderFromIntegerToString < ActiveRecord::Migration[5.2]
  def change
    change_column :actors, :gender, :string
  end
end
