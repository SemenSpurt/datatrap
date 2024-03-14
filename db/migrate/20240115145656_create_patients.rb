class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      
      t.date :reg_date
      t.date :orit_date
      t.string :fio
      t.integer :height
      t.integer :weight
      t.string :sex
      t.datetime :dob
      t.float :imt
      t.float :apache
      t.boolean :hobl
      t.boolean :astma
      t.boolean :diabeth
      t.boolean :ssz
      t.boolean :hypertony
      t.boolean :hbp
      t.boolean :smoking
      t.boolean :obesity
      t.boolean :revma
      t.boolean :liver_illness
      t.boolean :hep_b
      t.boolean :hep_c
      t.boolean :id1
      t.boolean :id2
      t.boolean :aids

      t.timestamps
    end
  end
end
