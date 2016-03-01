class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t| # would add , {:id => false} if id column wasn't wanted
      t.column "first_name", :string, :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :default => "", :null => false
      t.string "password", :limit => 40

      #t.timestamps "created_at"
      #t.timestamps "updated_at"
      t.timestamps null: false
    end
  end

  def down
  	drop_table :users
  end
end
