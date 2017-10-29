Dado("que estou logado no OrangeHRM") do
  visit "http://opensource.demo.orangehrmlive.com/"
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
end

Quando("eu realizar o cadastro do funcionario") do
	binding.pry
  find(:xpath, '//*[@id="menu_pim_viewPimModule"]/b').click
  find(:xpath, '//*[@id="menu_pim_addEmployee"]').click
  fill_in('firstName', :with => 'VitorVitor')
  fill_in('middleName', :with => 'katayamakatayama')
  fill_in('lastName', :with => 'tanouetanoue')
  click_button('btnSave')
end

Entao("o funcionario será cadastrado") do
assert_text('Personal Details')
end