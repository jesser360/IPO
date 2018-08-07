class AddLabelToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :label, :string
  end
end
