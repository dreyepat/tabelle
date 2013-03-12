class SpielerlistesController < ApplicationController
  # GET /spielerlistes
  # GET /spielerlistes.json
  def index
    @spielerlistes = Spielerliste.order('name ASC')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spielerlistes }
    end
  end

  # GET /spielerlistes/1
  # GET /spielerlistes/1.json
  def show
    @spielerliste = Spielerliste.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spielerliste }
    end
  end

  # GET /spielerlistes/new
  # GET /spielerlistes/new.json
  def new
    @spielerliste = Spielerliste.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spielerliste }
    end
  end

  # GET /spielerlistes/1/edit
  def edit
    @spielerliste = Spielerliste.find(params[:id])
  end

  # POST /spielerlistes
  # POST /spielerlistes.json
  def create
    @spielerliste = Spielerliste.new(params[:spielerliste])

    respond_to do |format|
      if @spielerliste.save
        format.html { redirect_to @spielerliste, notice: 'Spielerliste was successfully created.' }
        format.json { render json: @spielerliste, status: :created, location: @spielerliste }
      else
        format.html { render action: "new" }
        format.json { render json: @spielerliste.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spielerlistes/1
  # PUT /spielerlistes/1.json
  def update
    @spielerliste = Spielerliste.find(params[:id])

    respond_to do |format|
      if @spielerliste.update_attributes(params[:spielerliste])
        format.html { redirect_to @spielerliste, notice: 'Spielerliste was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spielerliste.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spielerlistes/1
  # DELETE /spielerlistes/1.json
  def destroy
    @spielerliste = Spielerliste.find(params[:id])
    @spielerliste.destroy

    respond_to do |format|
      format.html { redirect_to spielerlistes_url }
      format.json { head :no_content }
    end
  end
end
