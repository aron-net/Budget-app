class AddUserRefToPayments < ActiveRecord::Migration[7.0]
  def change
    add_reference :payments, :user, null: false, foreign_key: true
  end
end
