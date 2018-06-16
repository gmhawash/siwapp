class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :tax_identifier
      t.string :currency
      t.string :address
      t.string :email
      t.string :url
      t.string :email_body
      t.string :email_subject
      t.string :phone

      t.timestamps
    end
  end
end
