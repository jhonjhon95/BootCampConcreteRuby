Dado('que eu esteja na home do site correios') do
  @page_rastreamento = RastreamentoPage.new 
  # @page_rastreamento.acessar_home 
  @page_rastreamento.load
end

Quando('pesquiso por um objeto válido') do
  # @page_rastreamento = RastreamentoPage.new
  @page_rastreamento.pesquisa_valido
end

Então('Vejo o resultado da busca') do
  expect(page).to have_content('Objeto postado') 
end

Quando('pesquiso por um objeto inválido no campo indicado') do
  # @page_rastreamento = RastreamentoPage.new
  @page_rastreamento.pesquisa_invalido
end

Então('Vejo a mensagem de que O\(s) código\(s) ou CPF\/CNPJ estão inválidos') do
  # sleep 1
  @page_rastreamento.aguardando
  expect(page).to have_content('O sistema dos Correios não possui dados sobre o objeto informado.') 
end