class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]
  before_filter :skip_password_attribute, only: :update

  # GET /members
  # GET /members.json
  def index
    @members = Member.all
  end

  # GET /members/1
  # GET /members/1.json
  def show
    @member = Member.find(params[:id])
  end

  # GET /members/new
  def new
    @member = Member.new
  end

  # GET /members/1/edit
  def edit
  end

  def booklist
    @member = Member.find(params[:id])
    if @member.booklist
      @list = @member.booklist.split(',')
    end
  end

  def loan
    @book = Book.find(params[:id])
    @members = Member.all
  end
  
  def choose
    @book = Book.find(params[:id])
    @member = Member.find(params[:memid])
    @book.isAvailable = 1
    @book.save
    if @member.booklist
      @member.booklist = @member.booklist + "," + @book.id.to_s
      @member.save
    else
      @member.booklist = @book.id.to_s
      @member.save
    end
    respond_to do |format|
      format.html { redirect_to list_path, notice: 'Book has been loan' }
      format.json { head :no_content }
    end

  end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)

    respond_to do |format|
      if @member.save
        format.html { redirect_to list_path, notice: 'Member was successfully created.' }
        format.json { render :show, status: :created, location: @member }
        log_in @member
      else
        format.html { render :new }
        format.json { render json: list_paht.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to @member, notice: 'Member was successfully updated.' }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:userName, :password, :password_confirmation, :name, :surrName, :email, :addr1, :addr2, :tel, :isActive)
    end
    
    def skip_password_attribute
      if params[:password].blank? && params[:password_validation].blank?
        params.except!(:password, :password_validation)
      end
    end
end
