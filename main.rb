require 'csv'


issue_type_items = []
count_hash = Hash.new(0)

CSV.foreach('assignee_currentUser.csv', :headers => true) do |row|
  issue_type_items.append row[0]
end

issue_type_items.each do |i|
  count_hash[i] += 1
end
puts count_hash



