class AddStatusAndDeliveredToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :status, :boolean
    add_column :projects, :delivered, :boolean
  end
end
