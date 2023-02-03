Quando('eu uso um script') do
    visit '/outros/scroll'
    sleep(2)
    page.execute_script("window.scrollBy(0,1500)")
    sleep(2)
  end