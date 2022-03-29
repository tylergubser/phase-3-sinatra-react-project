class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
        t.string :first_name
        t.string :last_name
        t.string :phone
        t.string :id_number
        t.string :email
        t.string :username
        t.string :password
    end
  end
end
