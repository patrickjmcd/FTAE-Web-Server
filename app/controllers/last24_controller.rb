class Last24Controller < ApplicationController

def index
    @overrides = Event.override
    @last24s = Event.last24
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @last24s }
    end

end

end
