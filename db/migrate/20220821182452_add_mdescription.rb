class AddMdescription < ActiveRecord::Migration[7.0]
  def change
    add_column :marticles, "mdescription", :text
  end
end
