require 'csv'


count_jira = Hash.new 0

CSV.foreach('assignee_currentUser.csv', :headers => true) do |row|
  project = row[1].split('-')[0]
  count_jira[project] += 1
end
puts count_jira