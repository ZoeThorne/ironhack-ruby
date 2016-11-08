class ContactsController < ApplicationController

	attr_accessor :contacts

  def index
  	@contacts = Contact.order("name ASC")
  	render 'index'
  end

  def new
  	render 'new'
  end

  def create
  	 # Create new Contact from params[:contact]
    contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone_number => params[:contact][:phone_number],
      :email => params[:contact][:email],
      :favourite => false)
 

    contact.save

    # Render contact's attributes
    redirect_to("/contacts")
  end

  def show
  	@contacts = Contact.order("name ASC")
  	@id = (params[:id_num]).to_i
  	@name = Contact.find_by(id:@id).name
  	@address = Contact.find_by(id:@id).address
  	@phone_number = Contact.find_by(id:@id).phone_number
  	@email = Contact.find_by(id:@id).email
  	render 'show'
  end

  def show_favourites
  	@faves = Contact.where(favourite:true)
  	render 'favourites'
  end

  def make_favourite
  	id = (params[:id]).to_i
  	contact = Contact.find_by(id:id)  
  	contact.update_attributes(:favourite => true)
  	

  	redirect_to("/contacts")
  end

end
