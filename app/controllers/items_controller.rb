class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :set_diagram

  # GET /items
  # GET /items.json
  def index
    @items = Item.rank(:position).all
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
    la_cuenta = @diagram.items.count
  end

  # GET /items/1/edit
  def edit
  end

  def update_row_order
    @item = Item.find(item_params[:id])
    @item.position_position = item_params[:position]
    @item.save

    render nothing: true # this is a POST action, updates sent via AJAX, no view rendered
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    @item.diagram = @diagram

    respond_to do |format|
      if @item.save
        format.html { redirect_to [@diagram, @item], notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: [@diagram, @item] }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to [@diagram, @item], notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to diagram_item_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    def set_diagram
      @diagram = Diagram.find(params[:diagram_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:instruction, :description, :printer, :allocator, :assigned_to, :diagram, :position, :id)
    end
end
