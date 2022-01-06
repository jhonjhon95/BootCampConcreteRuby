# language: pt

Funcionalidade: Rastrear Objeto 
  Eu como um usuario do correios cadastrado ou não, posso consultar o status de um objeto
  através de um código de rastreio ou cpf válido. 

    Contexto:
        Dado que eu esteja na home do site correios

  Cenário: Rastrear Objeto válido
    Quando pesquiso por um objeto válido
    Então Vejo o resultado da busca

  Cenário: Rastrear Objeto inválido
    Quando pesquiso por um objeto inválido no campo indicado
    Então Vejo a mensagem de que O(s) código(s) ou CPF/CNPJ estão inválidos