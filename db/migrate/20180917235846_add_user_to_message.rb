class AddUserToMessage < ActiveRecord::Migration[5.2]
  def change
    add_reference :messages, :user, foreign_key: true, :default => 1
  end
end
