

Given(/^on home page$/) do




  @browser.goto 'http://puppies.herokuapp.com/'

end

When(/^view details$/) do
  #@browser.button(:value=>"View Details", :index => num - 1 ).click
  on_page(AdoptPage).adopt_puppy_number 1


end


Then(/^add another$/) do
  continue_adopting_puppies
end
Then(/^view details number two$/) do
  on_page(AdoptPage).adopt_puppy_number 2
end

Then(/^add third$/) do
  continue_adopting_puppies
  on_page(AdoptPage).adopt_puppy_number 3
end

Then(/^complete process$/) do
  #@browser.button(:value=>"Complete the Adoption").click
  on_page(AdoptPage).done

end

Then(/^fill out the information$/) do
  #@browser.text_field(:id=>"order_name").set('Jordon Welling')
  on_page(InfoPage).oname = "Jordon Welling"
  #@browser.text_field(:id=>"order_address").set('3900 Ivorton road east')
  on_page(InfoPage).odress = "3900 Ivorton Road East"
  #@browser.text_field(:id=>"order_email").set('jrdnwelling@gmail.com')
  on_page(InfoPage).omail = "jrdnwelling@yahoo.com"
  #@browser.select_list(:id=>"order_pay_type").select('Check')
  on_page(InfoPage).otype = "Check"
  #@browser.button(:value=>"Place Order").click
  on_page(InfoPage).submit

end


Then(/^verify "([^"]*)" on line item (\d+)$/) do |name, line_item|
  cart_line_item(line_item.to_i)[1].text == name
end

And(/^amounts "([^"]*)" on line item (\d+)$/) do |subtotal, line_item|
  cart_line_item(line_item.to_i)[1].text == subtotal
end

Then(/^the total "([^"]*)"$/) do |total|
  @browser.td(:class => 'total_cell').text == total
end

When(/^i see the logo$/) do
  pending
end

And(/^the side menu$/) do
  pending
end

Then(/^it is complete$/) do
  @browser.close
end