`ps aux`.split(/$/)[1 ... -1].map do |row|
   row = row.split(' ', 11)
  `kill #{row[1]}` if row[10].include? 'slack'
end