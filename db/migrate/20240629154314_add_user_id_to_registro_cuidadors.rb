class AddUserIdToRegistroCuidadors < ActiveRecord::Migration[7.1]
  def change
    add_column :registro_cuidadors, :user_id, :integer
  end
end
