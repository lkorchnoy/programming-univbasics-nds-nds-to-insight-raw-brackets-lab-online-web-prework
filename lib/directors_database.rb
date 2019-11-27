require 'yaml'

def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
  
  total_gross = 0
  row_index = 0
  while row_index < directors_database.length do
    column_index = 0
    while column_index < directors_database[row_index].length do
      inner_len = directors_database[row_index]
      [column_index].length
      inner_index = 0
      while inner_index < inner_len do
        total_gross += directors_database[row_index]
        [column_index][inner_index][]
        inner_index += 1
      end
      column_index += 1
    end
    row_index += 1
end
total_gross
