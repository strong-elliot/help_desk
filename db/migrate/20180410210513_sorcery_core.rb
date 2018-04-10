class SorceryCore < ActiveRecord::Migration[5.1]
    def change
        create_table :profiles do |t|
          t.string :username,         :null => false
          t.string :email,            :null => false
          t.string :crypted_password, :null => false
          t.string :salt,             :null => false

          t.timestamps
        end

        add_index :profiles, :email, unique: true
      end
end
