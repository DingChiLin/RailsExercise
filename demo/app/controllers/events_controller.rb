class EventsController < ApplicationController

  before_filter :set_event, :only => [:show, :edit, :update, :destroy]

  def index
    @events = Event.page(params[:page]).per(5)

    respond_to do |format|
      format.html # index.html.erb
      format.xml {render :xml => @events.to_xml}
      format.json {render :json => @events.to_json}
      format.atom {@feed_title = "My event list"} #index.atom.builder
    end
  end

  def create
    flash[:notice] = "event was successfully created"
    logger.debug "Event_params: #{event_params}".green
    @event = Event.new(event_params)
    logger.debug "@Event: #{@event.inspect}".green

    if @event.save
      redirect_to event_path(@event)
    else
      render :action => :new
    end

  end

  def new
    @event = Event.new
  end

  def edit
  end

  def show
    respond_to do |format|
      format.html { @page_title = @event.name } # show.html.erb
      format.xml # show.xml.builder
      format.json { render :json => { id: @event.id, name: @event.name }.to_json }
    end
  end

  def update
    flash[:notice] = "event was successfully updated"
    if @event.update_attributes(event_params)
      redirect_to event_path(@event)
    else
      render :action => :edit
    end
  end

  def destroy
    flash[:alert] = "event was successfully deleted"
    @event.destroy

    redirect_to events_path
  end

  private

  def event_params
    logger.debug "Event_Params! #{params.inspect}".green
    params.require(:event).permit(:name, :description, :category_id, :location_attributes => [:id, :name, :_destroy])
  end

  def set_event
    @event = Event.find(params[:id])
  end

end
