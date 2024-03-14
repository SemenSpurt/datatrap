class CreateObservations < ActiveRecord::Migration[7.1]
  def change
    create_table :observations do |t|
      t.references :patient, foreign_key: { to_table: :patients }

      t.string :observe_date
      t.integer :sofa
      t.integer :gsc
      t.integer :sistola
      t.integer :diastola
      t.integer :meanbp
      t.integer :heartrate
      t.float :temp
      t.integer :ifusionvolume
      t.integer :nutritionvolume
      t.integer :diuresis
      t.integer :hydrobalance
      t.integer :vasopressor

      t.boolean :na

      t.float :lactat

      t.boolean :ivl
      t.boolean :ecmo

      t.integer :fio2
      t.integer :spo2
      t.integer :pao2

      t.integer :pfindex
      t.integer :sfindex

      t.boolean :anuria
      t.boolean :kdigo

      t.float :protinpee

      t.float :kreatinin
      t.float :mochevina
      t.float :bilirubin
      t.float :kalius
      t.float :natrius
      t.float :ph
      t.float :hemoglob
      t.float :gematocrit

      t.boolean :bleeding
      t.boolean :transfusion

      t.integer :eritrocells
      t.integer :szp
      t.integer :tka

      t.boolean :trombs
      t.integer :trc

      t.float :mho
      t.float :anticoagul
      t.float :lc
      t.float :crp
      t.float :rct

      t.integer :moblood
      t.integer :mopee
      t.integer :mobal
      t.integer :amtcorrection

      t.text :amtcomment

      t.boolean :sergery
      t.boolean :zpt

      t.boolean :serbtion
      t.boolean :tpe
      t.boolean :hdf

      t.integer :expertmark
      t.text :comment

      t.timestamps

    end
  end
end
