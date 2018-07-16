class ContactsController < InheritedResources::Base

  def new
    if Contact.first.nil?
      @contact = Contact.new
    else
      redirect_to @contact
    end
  end

  private  
  
  def set_sermon
    @sermon = Contact.find(id: 1)
  end

  def contact_params
    params.require(:contact).permit(:phone, :telephone, :company_email, :website, :location)
  end
end

