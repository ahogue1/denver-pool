class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  # GET /contacts
  # GET /contacts.json



  def index
    @contacts = Contact.all
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    @contact = Contact.find(params[:id])
  end

  # GET /contacts/new
  def new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      ContactMailer.request2(@contact).deliver_now
    end

    respond_to do |format|
      if @contact.save
        format.html { redirect_to root_path, notice: "Your message has been sent, We'll be in contact soon" }
      else
        format.html { render "pages/contact" }
      end
    end

    # if @contact.deliver
    #   flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    # else
    #   flash.now[:error] = 'Cannot send message.'
    #   render :new
    # end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:first_name, :last_name, :phone, :email, :message, :preference)
    end

end
