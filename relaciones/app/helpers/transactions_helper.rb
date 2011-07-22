module TransactionsHelper

  def display_image_error(field, field_error)
     if  field_error.errors[field].any?
      "<div class=\"error-left\"></div><div class=\"error-inner\">Campo requerido</div>".html_safe
     end
  end

 

   def numero_valido(field, field_error)
     if  !field_error.errors[field].any?
           validates_numericality_of :field, :message => "Numero Invalido"
     end
   end

   
 

end
