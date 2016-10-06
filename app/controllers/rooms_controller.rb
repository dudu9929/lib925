class RoomsController < ApplicationController

  def index
    @rooms = Room.all

    @rooms.each do |c|
      @room = Room.find(c)
      @room.update(status: "available")

      c.bookings.each do |check|

        if check.start_time<Time.now && check.end_time>Time.now
          @room = Room.find(c)
          @room.update(status: "booked")

          @room.update(user: check.user.name)


          break
        else
          @room = Room.find(c)
          @room.update(status: "available")

        end
      end
    end

    if ( params[:name] or params[:building] or params[:size] or params[:status])
      @rooms = Room.search(params[:name],params[:building],params[:size],params[:status])
    else
      @recipes = Room.all.order("created_at DESC")
    end


  end


  def memroom
    @rooms = Room.all
    if ( params[:name] or params[:building] or params[:size] or params[:status])
      @rooms = Room.search(params[:name],params[:building],params[:size],params[:status])
    else
      @recipes = Room.all.order("created_at DESC")
    end

  end

  def new
    @room = Room.new
  end





  def show
    @room = Room.find(params[:id])

  end

  def memshow
    @room = Room.find(params[:id])
  end




  def create
    @room = Room.create(room_params)
    if @room.save
      name = @room.name
      building=@room.building
      size=@room.size
      redirect_to rooms_path()
      flash[:notice] = "#{name} created"
    else
      render 'new'
      flash[:error] = "Unable to create room. Please try again"
    end
  end

  def destroy
    @room = Room.find(params[:id])
    @room.bookings.each do |a|
      a.destroy
      end

    @room.destroy
    redirect_to rooms_path()
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    @room.update room_params
    if @room.save
      flash[:notice] = "Your room was updated succesfully"
      redirect_to rooms_path()
    else
      render 'edit'
    end
  end

  private
  def set_room
    @user = User.find(params[:id])
  end
    def room_params
      params.require(:room).permit(:name,:building,:size,:status, :delete)
    end

end
