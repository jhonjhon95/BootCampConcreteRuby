class RastreamentoPage < SitePrism::Page
    include Helper
    element :obj_input, '#obj'
    set_url '/'

    def acessar_home
        visit('https://rastreamentocorreios.info/')
    end
  
    def pesquisa_valido
        # sleep 5
        wait('#obj', 10)
        obj_input.set('bk951958263br')
        # fill_in 'obj', with: 'bk951958263br' 
        click_button 'bto' 
    end

    def pesquisa_invalido
        # sleep 5
        wait('#obj', 10)
        fill_in 'obj', with: 'xx951958263xx' 
        click_button 'bto' 
    end

    def aguardando
        wait('#obj', 10)
    end

end

