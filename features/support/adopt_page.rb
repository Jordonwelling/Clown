class AdoptPage
  include PageObject


  def adopt_puppy_number(num)
    @browser.button(:value=>"View Details", :index => num - 1 ).click

    @browser.button(:value=>"Adopt Me!").click

  end

  button(:keep, :value => 'Adopt Another Puppy')
  button(:done, :value=>"Complete the Adoption")
end