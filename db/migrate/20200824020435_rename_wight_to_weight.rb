class RenameWightToWeight < ActiveRecord::Migration[5.2]
  def change
    rename_column :pet_histories, :wight, :weight
  end
end
