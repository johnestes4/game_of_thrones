def get_house_data
  house_data = {
    "targaryen" => {
      name: "Targaryen",
      sigil_url: "http://vignette2.wikia.nocookie.net/gameofthrones/images/4/43/House-Targaryen-Main-Shield.PNG"
    },
    "lannister" => {
      name: "Lannister",
      sigil_url: "http://vignette3.wikia.nocookie.net/gameofthrones/images/8/8a/House-Lannister-Main-Shield.PNG"
    },
    "stark" => {
      name: "Stark",
      sigil_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/8/8a/House-Stark-Main-Shield.PNG"
    },
    "baratheon" => {
      name: "Baratheon",
      sigil_url: "http://vignette4.wikia.nocookie.net/gameofthrones/images/0/00/House-Baratheon-Main-Shield.PNG"
    }
  }
  return house_data
end
