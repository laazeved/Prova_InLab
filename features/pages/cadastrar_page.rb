class Cadastro < SitePrism::Page

    element :continue, :css, "#checkout_page_container > div.slide1 > a > span"
    element :email, "#wpsc_checkout_form_9"
    element :first_name, "#wpsc_checkout_form_2"
    element :last_name , "#wpsc_checkout_form_3"
    element :address, "#wpsc_checkout_form_4"
    element :city, "#wpsc_checkout_form_5"
    element :state, "#wpsc_checkout_form_6"
    element :country , "#uniform-wpsc_checkout_form_7"
    element :phone , "#wpsc_checkout_form_18"
    
    def cadastrar(email1,nome1, sobrenome1, endereco1, cidade1, estado1, pais1, telefone1)
    
        continue.click
        email.set(email1)
        first_name.set(nome1)
        last_name.set(sobrenome1)
        address.set(endereco1)
        city.set(cidade1)
        state.set(estado1)
        country.select pais1
        phone.set(telefone1)
    
    
    end
    end