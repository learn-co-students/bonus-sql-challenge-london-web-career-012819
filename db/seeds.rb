# Parse the CSV and seed the database here! Run 'ruby db/seed' to execute this code.
Show.delete_all
Group.delete_all
Guest.delete_all

CSV.foreach('daily_show_guests.csv', headers: true) do |row|
  temp = row.to_h
  group = Group.create(name: temp["Group"])
  show = Show.create(year: temp["YEAR"], date: temp["Show"])
  guest = Guest.create(name: temp["Raw_Guest_List"], occupation: temp["GoogleKnowlege_Occupation"], show_id: show.id, group_id: group.id)
end
