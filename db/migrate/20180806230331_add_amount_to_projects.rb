class AddAmountToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :amount, :integer
  end
end
