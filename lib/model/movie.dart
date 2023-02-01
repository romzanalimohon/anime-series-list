class animeMovie{

  //static List<Phone> getPhones() =>

  static List<animeMovie> getanimeMovie() =>[
    animeMovie(
      "One Piece",
      " 2019",
      "9.5",
      "2018",
      "adventure",
      "Luffy, Zoro, Chopper, Franky, Robin",
      "Toei Animation",
      "After five years of harboring unspoken feelings, high-schooler Taiju Ooki is finally reaer, a bing every single human into stone.",
      [
        "https://cdn.myanimelist.net/images/anime/5/19082.jpg",
        "https://cdn.myanimelist.net/images/anime/5/20871.jpg",
        "https://cdn.myanimelist.net/images/anime/1386/100624.jpg",
        "https://cdn.myanimelist.net/images/anime/1860/123979.jpg",
        "https://cdn.myanimelist.net/images/anime/1706/114807.jpg"
      ],
    ),
    animeMovie(
      "Samurai X",
      " 2019",
      "9.0",
      "2018",
      "action",
      "Kenshin, Kaori",
      "Gallop, Studio Deen",
      "After five years of harboring unspoke, a blinding green light strikes the Earth and petrifies mankind around the world—turning every single human into stone.",
      [
        "https://cdn.myanimelist.net/images/anime/8/11397.jpg",
        "https://cdn.myanimelist.net/images/anime/3/15736.jpg",
        "https://cdn.myanimelist.net/images/anime/4/32301.jpg",
        "https://cdn.myanimelist.net/images/anime/1768/114209.jpg",
        "https://cdn.myanimelist.net/images/anime/1516/119368.jpg"
      ],
    ),
    animeMovie(
      "Sword Art Online",
      " 2019",
      "8.00",
      "2018",
      "game",
      "Kirito, Asuna, Silika, Kayaba, Shion",
      "A-one picture",
      "After five years of harboring unspoken er, a blinding green light strikes the Earth and petrifies mankind around the world—turning every single human into stone.",
      [
        "https://cdn.myanimelist.net/images/anime/11/39717.jpg",
        "https://cdn.myanimelist.net/images/anime/8/36343.jpg",
        "https://cdn.myanimelist.net/images/anime/12/40861.jpg",
        "https://cdn.myanimelist.net/images/anime/2/44768.jpg"
      ],
    ),
    animeMovie(
      "Boku no Hero Academia",
      " 2019",
      "8.5",
      "2018",
      "action",
      "Deku, Uraraka, Shoto, Mineta, Asui",
      "Bones",
      "After five years of harborito sion however, a blinding green light strikes the Earth and petrifies mankind around the world—turning every single human into stone.",
      [
        "https://cdn-us.anidb.net/images/main/257562.jpg",
        "https://cdn.myanimelist.net/images/anime/1262/92569.jpg",
        "https://cdn.myanimelist.net/images/anime/1136/114625.jpg",
        "https://cdn.myanimelist.net/images/anime/1647/114626.jpg",
        "https://cdn.myanimelist.net/images/anime/9/76970.jpg"
      ],
    ),
    animeMovie(
      "Bleach",
      " 2019",
      "8.8",
      "2018",
      "shounen",
      "Ichigo, Orihime, Rukia, Renji, Chad",
      "Pierrot",
      "After five years of han however, a blinding green light strikes the Earth and petrifies mankind around the world—turning every single human into stone.",
      [
        "https://cdn.myanimelist.net/images/anime/9/21683.jpg",
        "https://cdn.myanimelist.net/images/anime/3/20349.jpg",
        "https://wallpaperaccess.com/full/10670.jpg",
        "https://cdn.myanimelist.net/images/anime/2/78197.jpg"
      ],
    )
  ];

  String title, year, rated, released, genre, plot, cast, studio;
  List<String> Images;


  animeMovie(this.title, this.year, this.rated, this.released, this.genre,
      this.cast, this.studio, this.plot, this.Images);


}