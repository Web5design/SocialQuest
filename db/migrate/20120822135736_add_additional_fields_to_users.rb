class AddAdditionalFieldsToUsers < ActiveRecord::Migration
  def change
    ## Devise Confirmable
    add_column :users, :confirmation_token, :string
    add_column :users, :confirmed_at, :datetime
    add_column :users, :confirmation_sent_at, :datetime
    add_column :users, :unconfirmed_email, :string
    
    ## Token authenticatable
    add_column :users, :authentication_token, :string
  end
end
