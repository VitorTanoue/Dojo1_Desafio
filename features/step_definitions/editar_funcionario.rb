Dado("que estou no OrangeHRM") do
  visit "http://opensource.demo.orangehrmlive.com/"
  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
end

Quando("eu realizar a edicao de um funcionario") do
	binding.pry
  find(:xpath, '//*[@id="menu_pim_viewPimModule"]/b').click
  find(:xpath, '//*[@id="menu_pim_viewEmployeeList"]').click
  fill_in('empsearch_id', :with => '0027')
  click_button('searchBtn')
  find(:xpath, '//*[@id="resultTable"]/tbody/tr/td[2]/a').click
  click_button('btnSave')
  fill_in('personal_txtEmpMiddleName', :with => 'outronome')
  click_button('btnSave')
end

Entao("os dados serao atualizados") do
  assert_text('Successfully Saved')
end