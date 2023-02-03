Dado('que eu estou na tela de dragdrop') do
    visit '/iteracoes/draganddrop'
  end
  
  Quando('eu movo o drag drop') do
    @primeiro = find('#winston')
    @segundo = find('#dropzone')

    @primeiro.drag_to(@segundo)
    sleep(2)
  end