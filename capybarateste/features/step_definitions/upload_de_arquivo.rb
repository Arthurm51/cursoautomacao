Quando('eu faco um upload de arquivo') do
    visit '/outros/uploaddearquivos'

    #attach_file('upload', 'C:\Users\arthur.machado\Desktop\codes\curso automação\capybarateste/features/download.png', make_visible: true)
    @foto = File.join(Dir.pwd, 'features/download.png')
    attach_file('upload', @foto, make_visible: true)

    sleep(2)
end