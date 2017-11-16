class Event < ActiveRecord::Base
  attr_accessible :acked, :active, :alarmclass, :changemask, :conditionname, :disabled, :effdisabled, :effsuppressed, :eventassociationid, :eventcategory, :eventid, :eventtimestamp, :inputvalue, :limitvalue, :message, :personid, :priority, :quality, :servername, :severity, :sourceid, :sourcename, :sourcepath, :subconditionname, :suppressed, :tag1value, :tag2value, :tag3value, :tag4value, :tickstimestamp, :usercomment, :usercomputerid
    
  scope :override, where(message: "Control Module Fault")
  scope :last24, where('eventtimestamp >= ?', 24.hours.from_now)
  
end
