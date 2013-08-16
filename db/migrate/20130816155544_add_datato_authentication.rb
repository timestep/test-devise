class AddDatatoAuthentication < ActiveRecord::Migration
  def change
  	add_column :authentication, :data, :text
  end
end
