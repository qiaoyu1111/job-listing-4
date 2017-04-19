class AddMoreDetailToTask < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :project_need, :text
    add_column :tasks, :wage_upper_bound, :integer
    add_column :tasks, :wage_lower_bound, :integer
    add_column :tasks, :contact_email, :string
  end
end
