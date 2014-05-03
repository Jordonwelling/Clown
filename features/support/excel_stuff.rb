require 'spreadsheet'

@spread = Spreadsheet:: Workbook.new 'new1.xls'
sheet1 = @spread.create_worksheet
sheet1[0, 0] = "Japan"
sheet1[0, 1] = "Ballons"
sheet1[0, 3] = "Manga"
sheet1[0, 4] = "Stuff"

@spread.write 'new1.xls'
puts sheet1