require "active_record"
require "sqlite3"
require 'spreadsheet'


@cucumber_db = SQLite3::Database.new("cucumber")

@cucumber_db.execute("create table paylist (IdNum, Gender, Jobcode, Salary, Birth, Hired)")

@cucumber_db.execute("insert into paylist values ('1639','F','TA1',42260,'26JUN70','28JAN91')")
@cucumber_db.execute("insert into paylist values ('1065','M','ME3',40090,'26MAR54','16OCT90')")
@cucumber_db.execute("insert into paylist values ('1066','M','ME4',58560,'16JAN55','07JAN92')")
@cucumber_db.execute("insert into paylist values ('1067','F','ME7',98050,'18DEC55','07FEB82')")
@cucumber_db.execute("insert into paylist values ('1068','F','ME3',18987,'28JUN58','07OCT87')")
@cucumber_db.execute("insert into paylist values ('1069','F','ME1',69890,'11JUL74','04OCT94')")

@response = @cucumber_db.execute("select IdNum from paylist;")
@response_two = @cucumber_db.execute("select Gender from paylist;")
puts @response
puts @response_two

@spread = Spreadsheet:: Workbook.new
sheet1 = @spread.create_worksheet
sheet1[0, 0] = @response[0][0]
sheet1[0, 1] = @response_two[0][0]
sheet1[1, 0] = @response[1][0]
sheet1[1, 1] = @response_two[1][0]
sheet1[2, 0] = @response[2][0]
sheet1[2, 1] = @response_two[2][0]
sheet1[3, 0] = @response[3][0]
sheet1[3, 1] = @response_two[3][0]
sheet1[4, 0] = @response[4][0]
sheet1[4, 1] = @response_two[4][0]
sheet1[5, 0] = @response[5][0]
sheet1[5, 1] = @response_two[5][0]


@spread.write 'new2.xls'

@cucumber_db.execute("drop table paylist")