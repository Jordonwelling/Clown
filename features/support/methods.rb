def adopt_puppy_number(num)
  ##@browser.button(:value=>"View Details", :index => num - 1 ).click
  on_page(AdoptPage).view
  ##@browser.button(:value=>"Adopt Me!").click
  on_page(AdoptPage).adopt

end

def continue_adopting_puppies
  #@browser.button(:value => 'Adopt Another Puppy').click
  on_page(AdoptPage).keep
end

def row_for(line_item)
  (line_item - 1) * 6
end

def cart_line_item(line_item)
  @browser.table(:index => 0)[row_for(line_item)]
end