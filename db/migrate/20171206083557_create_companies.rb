class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :api_key
      t.string :api_secret
      t.string :name

      t.timestamps
    end
  end
end
