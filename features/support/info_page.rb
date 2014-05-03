class InfoPage
  include PageObject

  text_field(:oname, :id=>"order_name")
  text_field(:odress, :id=>"order_address")
  text_field(:omail, :id=>"order_email")
  select_list(:otype, :id=>"order_pay_type")
  button(:submit, :value=>"Place Order")
end