class AlterTitle < ActiveRecord::Migration[7.0]
  def change
    rename_column :marticles, :title, :mtitle
  end
end
