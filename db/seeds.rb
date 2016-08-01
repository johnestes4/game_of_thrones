require_relative './house_data.rb'
require_relative './character_data.rb'

House.destroy_all
Character.destroy_all

house_data = get_house_data()
character_data = get_character_data()

character_data.each_pair do |house_name, characters|
  info = house_data[house_name]
  current_house = House.create!({
    name:         info[:name],
    sigil_url:    info[:sigil_url]
  })

  characters.each do |character|
    Character.create!({
      name:        character[:name],
      photo_url:   character[:photo_url],
      status:      character[:status],
      house:       current_house
    })
  end
end
