import 'package:flutter_font_icons/flutter_font_icons.dart';

class Data {
  static List comingNextList = [
    // coming soon list
    {
      "img": "assets/images/banner1.webp",
      "title_img": "assets/images/banner_title.webp",
      "title": "Aang - The Last Airbender",
      "description":
          "Aang was an Air Nomad born in 12 BG and the Avatar during the Hundred Year War, succeeding Avatar Roku and preceding Avatar Korra. As the Avatar of his time, he was the only person capable of using all four bending arts: airbending, waterbending, earthbending, and firebending.",
      "type": "Gritty - Action Thriller - Action & Adventure - Drama",
      "date": "Coming March 5th",
    },
    {
      "img": "assets/images/banner2.webp",
      "title_img": "assets/images/banner_title.webp",
      "title": "The Gladiator",
      "description":
          "Gladiator takes place in ad 180 and is loosely based on historical figures. Roman forces, led by the general Maximus (Crowe), defeat Germanic tribes, bringing temporary peace to the Roman Empire.",
      "type": "Action Thriller - Action & Adventure - Drama",
      "date": "A new episode every Saturday and Sunday",
    },
    {
      "img": "assets/images/banner3.webp",
      "title_img": "assets/images/banner_title.webp",
      "title": "The Amazing Spider-Man",
      "description":
          "Spider-Man centers on student Peter Parker (Tobey Maguire) who, after being bitten by a genetically-altered spider, gains superhuman strength and the spider-like ability to cling to any surface. He vows to use his abilities to fight crime, coming to understand the words of his beloved Uncle Ben: With great power comes great responsibility.",
      "type": "Violence, Nudity, Language, action, and drama",
      "date": "Will arrive on March 1st",
    }
  ];

// home data
  static List mylist = [
    {"id": 1, "img": "assets/images/powerpuf.webp"},
    {"id": 2, "img": "assets/images/suits.webp"},
    {"id": 3, "img": "assets/images/fight_club.webp"},
    {"id": 4, "img": "assets/images/z.webp"},
  ];

  static List popularList = [
    {"id": 5, "img": "assets/images/ben10.webp"},
    {"id": 6, "img": "assets/images/batman.webp"},
    {"id": 7, "img": "assets/images/money_heist.jpg"},
    {"id": 8, "img": "assets/images/john_wick.webp"},
  ];

  static List top10Romania = [
    {"id": 9, "img": "assets/images/spenser.jpg"},
    {"id": 10, "img": "assets/images/venom.webp"},
    {"id": 11, "img": "assets/images/inception.webp"},
    {"id": 9, "img": "assets/images/spenser.jpg"},
    {"id": 9, "img": "assets/images/spenser.jpg"},
    {"id": 9, "img": "assets/images/spenser.jpg"},
    {"id": 9, "img": "assets/images/spenser.jpg"},
    {"id": 9, "img": "assets/images/spenser.jpg"},
    {"id": 9, "img": "assets/images/spenser.jpg"},
    {"id": 9, "img": "assets/images/spenser.jpg"},
  ];

    static List digits = [
    { "img": "assets/digits/1.png"},
    { "img": "assets/digits/2.png"},
    { "img": "assets/digits/3.png"},
    { "img": "assets/digits/4.png"},
    { "img": "assets/digits/5.png"},
    { "img": "assets/digits/6.png"},
    { "img": "assets/digits/7.png"},
    { "img": "assets/digits/8.png"},
    { "img": "assets/digits/9.png"},
    { "img": "assets/digits/10.png"},
  ];

  static List originalList = [
    {"id": 13, "img": "assets/images/original1.png"},
    {"id": 14, "img": "assets/images/original2.png"},
    {"id": 15, "img": "assets/images/original3.png"},
  ];

  // navbar items
  static List navs = [
    { "icon": AntDesign.home, "text": "Home"},
    { "icon": AntDesign.playcircleo, "text": "Coming Next"},
    { "icon": AntDesign.search1, "text": "Search"},
  ];

  // search data
  static List allResults = [
    {
      "id": 1,
      "img": "assets/images/powerpuf.webp",
      "title": "Powerpuff",
      "description":
          "The series features a trio of female superheroes, who are sisters to each other. They consist of de facto leader and strategist Blossom (a redhead with pink eyes), the tough tomboy Buttercup (a brunette with green eyes), and the artistic and kind-hearted Bubbles (a blonde with blue eyes).",
      "category": "kids",
      "ismovie": false
    },
    {
      "id": 2,
      "img": "assets/images/suits.webp",
      "title": "Suits",
      "description":
          "Suits is an American television drama series created by Aaron Korsh, which premiered on June 23, 2011, on the USA Network. It revolves around Mike Ross (Patrick J. Adams), who begins working as a law associate for Harvey Specter (Gabriel Macht), despite never attending law school.",
      "category": "drama",
      "ismovie": false
    },
    {
      "id": 3,
      "img": "assets/images/fight_club.webp",
      "title": "Fight Club",
      "description":
          "CIt is based on the 1996 novel by Chuck Palahniuk. Norton plays the unnamed narrator, who is discontented with his white-collar job. He forms a fight club with soap salesman Tyler Durden (Pitt), and becomes embroiled in a relationship with an impoverished but beguilingly attractive woman, Marla Singer (Bonham Carter).",
      "category": "drama",
      "ismovie": true
    },
    {
      "id": 4,
      "img": "assets/images/z.webp",
      "title": "World War Z",
      "description":
          "he very existence of the book, which is a collection of interviews with survivors published 12 years after the Zombie War, demonstrates that humans as a species are highly resilient and adaptable, even if large numbers of people are wiped out.",
      "category": "action",
      "ismovie": true
    },
    {
      "id": 5,
      "img": "assets/images/ben10.webp",
      "title": "Ben 10",
      "description":
          "Ben Tennyson, a 10-year-old boy, discovers a magical device that can turn him into 10 different alien heroes, each with its own unique abilities.",
      "category": "kids",
      "ismovie": false
    },
    {
      "id": 6,
      "img": "assets/images/batman.webp",
      "title": "Batman",
      "description":
          "Batman was originally introduced as a ruthless vigilante who frequently killed or maimed criminals, but evolved into a character with a stringent moral code and strong sense of justice.",
      "category": "kids",
      "ismovie": false
    },
    {
      "id": 7,
      "img": "assets/images/money_heist.jpg",
      "title": "Money Heist",
      "description":
          "A criminal mastermind who goes by The Professor has a plan to pull off the biggest heist in recorded history -- to print billions of euros in the Royal Mint of Spain. To help him carry out the ambitious plan, he recruits eight people with certain abilities and who have nothing to lose.",
      "category": "action",
      "ismovie": false
    },
    {
      "id": 8,
      "img": "assets/images/john_wick.webp",
      "title": "John Wick",
      "description":
          "In this original John Wick (2014) , an ex-hit-man comes out of retirement to track down the gangsters that killed his dog and took everything from him . With the untimely death of his beloved wife still bitter in his mouth he seeks for vengeance .",
      "category": "action",
      "ismovie": true
    },
    {
      "id": 9,
      "img": "assets/images/spenser.jpg",
      "title": "Spenser Confidential",
      "description":
          "Spenser, an ex-cop and ex-con, teams up with aspiring fighter Hawk to uncover a sinister conspiracy tied to the deaths of two Boston police officers.",
      "category": "drama",
      "ismovie": true
    },
    {
      "id": 10,
      "img": "assets/images/venom.webp",
      "title": "Venom",
      "description":
          "venom, the poisonous secretion of an animal, produced by specialized glands that are often associated with spines, teeth, stings, or other piercing devices. The venom apparatus may be primarily for killing or paralyzing prey or may be a purely defensive adaptation. Some venoms also function as digestive fluids.",
      "category": "action",
      "ismovie": true
    },
    {
      "id": 11,
      "img": "assets/images/inception.webp",
      "title": "Inception",
      "description":
          "ummaries. A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.",
      "category": "drama",
      "ismovie": true
    },
    {
      "id": 12,
      "img": "assets/images/regular_show.webp",
      "title": "A Regular Show",
      "description":
          "REGULAR SHOW is an animated series about a six-foot-tall blue jay named Mordecai (voiced by J.G. Quintel) and a hyperactive raccoon named Rigby (William Salyers). The two friends are groundskeepers at a local park owned by Pops (Sam Marin), who's an eccentric, life-sized lollipop.",
      "category": "kids",
      "ismovie": false
    },
    {
      "id": 13,
      "img": "assets/images/original1.png",
      "title": "SpongeBob SquarePants",
      "description":
          " square yellow sponge named SpongeBob SquarePants lives in a pineapple with his pet snail, Gary, in the city of Bikini Bottom on the floor of the Pacific Ocean. He works as a fry cook at the Krusty Krab. During his time off, SpongeBob has a knack for attracting trouble with his starfish best friend, Patrick.",
      "category": "kids",
      "ismovie": false
    },
    {
      "id": 14,
      "img": "assets/images/original2.png",
      "title": "The Flash",
      "description":
          "The most famous of these is the Flash, also known as the Fastest Man Alive. Ever since the days of World War II, there has been a man clad in red who can run at impossible speeds, using his power to save lives and defend those who cannot defend themselves. All between the ticks of a second.",
      "category": "action",
      "ismovie": false
    },
    {
      "id": 15,
      "img": "assets/images/original3.png",
      "title": "The Equalizer",
      "description":
          "A man who believes he has put his mysterious past behind him cannot stand idly by when he meets a young girl under the control of ultra-violent Russian gangsters.",
      "category": "action",
      "ismovie": true
    }
  ];
}
