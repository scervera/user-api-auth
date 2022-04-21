class CreateBirthdays < ActiveRecord::Migration[6.1]
  def change
    create_table :birthdays do |t|
      t.string :firstname
      t.string :lastname
      t.date :birthdate

      t.timestamps
    end
  end
end
