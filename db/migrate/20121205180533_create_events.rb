class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :eventid
      t.string :sourcename
      t.string :sourcepath
      t.string :sourceid
      t.string :servername
      t.string :tickstimestamp
      t.datetime :eventtimestamp
      t.string :eventcategory
      t.integer :severity
      t.integer :priority
      t.string :message
      t.string :conditionname
      t.string :subconditionname
      t.string :alarmclass
      t.boolean :active
      t.boolean :acked
      t.boolean :effdisabled
      t.boolean :disabled
      t.boolean :effsuppressed
      t.boolean :suppressed
      t.string :personid
      t.integer :changemask
      t.float :inputvalue
      t.float :limitvalue
      t.integer :quality
      t.string :eventassociationid
      t.string :usercomment
      t.string :usercomputerid
      t.string :tag1value
      t.string :tag2value
      t.string :tag3value
      t.string :tag4value

      t.timestamps
    end
  end
end
