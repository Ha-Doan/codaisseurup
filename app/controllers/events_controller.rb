class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

  def index
  @events = current_user.events
  # @events = Event.all
  end

  def show
  @photos = @event.photos
 end

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(event_params)

    if @event.save
      image_params.each do |image|
      @event.photos.create(image: image)
      end
      redirect_to edit_event_path(@event), notice: "Event created"
    else
      render :new
    end
  end

  def edit; end

  def update
    if @event.update(event_params)
      redirect_to @event, notice: "Event updated"
    else
      render :edit
    end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params
      .require(:event)
      .permit(
        :name, :description, :location, :price,
        :capacity, :includes_food, :includes_drink, :starts_at, :ends_at,:active
      )
  end
  def image_params
  params[:images].present? ? params.require(:images) : []
end
end
