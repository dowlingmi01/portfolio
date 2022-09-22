class FoliosController < ApplicationController
  def index
    @folio_items = Folio.all
  end

  def new
    @folio_item = Folio.new
  end

  def create
    @folio_item = Folio.new(params.require(:folio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @folio_item.save
        format.html { redirect_to folios_path, notice: "Folio was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @folio_item = Folio.find(params[:id])
  end

  def update
    @folio_item = Folio.find(params[:id])

    respond_to do |format|
      if @folio_item.update(params.required(:folio).permit(:title, :subtitle, :body,))
        format.html { redirect_to folios_path, notice: "Portfolio was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def show
    @folio_item = Folio.find(params[:id])
  end

end
