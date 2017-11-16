require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { acked: @event.acked, active: @event.active, alarmclass: @event.alarmclass, changemask: @event.changemask, conditionname: @event.conditionname, disabled: @event.disabled, effdisabled: @event.effdisabled, effsuppressed: @event.effsuppressed, eventassociationid: @event.eventassociationid, eventcategory: @event.eventcategory, eventid: @event.eventid, eventtimestamp: @event.eventtimestamp, inputvalue: @event.inputvalue, limitvalue: @event.limitvalue, message: @event.message, personid: @event.personid, priority: @event.priority, quality: @event.quality, servername: @event.servername, severity: @event.severity, sourceid: @event.sourceid, sourcename: @event.sourcename, sourcepath: @event.sourcepath, subconditionname: @event.subconditionname, suppressed: @event.suppressed, tag1value: @event.tag1value, tag2value: @event.tag2value, tag3value: @event.tag3value, tag4value: @event.tag4value, tickstimestamp: @event.tickstimestamp, usercomment: @event.usercomment, usercomputerid: @event.usercomputerid }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    put :update, id: @event, event: { acked: @event.acked, active: @event.active, alarmclass: @event.alarmclass, changemask: @event.changemask, conditionname: @event.conditionname, disabled: @event.disabled, effdisabled: @event.effdisabled, effsuppressed: @event.effsuppressed, eventassociationid: @event.eventassociationid, eventcategory: @event.eventcategory, eventid: @event.eventid, eventtimestamp: @event.eventtimestamp, inputvalue: @event.inputvalue, limitvalue: @event.limitvalue, message: @event.message, personid: @event.personid, priority: @event.priority, quality: @event.quality, servername: @event.servername, severity: @event.severity, sourceid: @event.sourceid, sourcename: @event.sourcename, sourcepath: @event.sourcepath, subconditionname: @event.subconditionname, suppressed: @event.suppressed, tag1value: @event.tag1value, tag2value: @event.tag2value, tag3value: @event.tag3value, tag4value: @event.tag4value, tickstimestamp: @event.tickstimestamp, usercomment: @event.usercomment, usercomputerid: @event.usercomputerid }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
