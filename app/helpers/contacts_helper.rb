module ContactsHelper 
  def contact_details 
    @contact_detail = Contact.first
  end
end