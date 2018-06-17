class AddCompanyIdToCommons < ActiveRecord::Migration[5.2]
  def up
    add_reference :commons, :company, foreign_key: true
    Invoice.all.update(company_id: Company.first.id)
    change_column_null :commons, :company_id, false
  end

  def down
    remove_reference :commons, :company
  end
end
