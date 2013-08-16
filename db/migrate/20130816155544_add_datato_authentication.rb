class AddDatatoAuthentication < ActiveRecord::Migration
  def change
  	add_column :authentications, :data, :text
  end
end
