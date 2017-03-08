class AddSubsidyInCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :subsidy, :float
  end
end
