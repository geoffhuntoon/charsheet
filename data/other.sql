/*------Experience Table------*/
CREATE TABLE experience (
  level                   INT(11) PRIMARY KEY,
  exp                     INT(7),
  class_skill_ranks       INT(3),
  cross_class_skill_ranks DOUBLE,
  feat_increases          INT(3),
  ability_increases       INT(3),
  total_feats             INT(3),
  total_ability_increases INT(3)
);


/*------Experience levels------*/
INSERT INTO experience VALUES (1, 0, 4, 2, 1, 0, 1, 0);
INSERT INTO experience VALUES (2, 1000, 5, 2.5, 0, 0, 1, 0);
INSERT INTO experience VALUES (3, 3000, 6, 3, 1, 0, 2, 0);
INSERT INTO experience VALUES (4, 6000, 7, 3.5, 0, 1, 2, 1);
INSERT INTO experience VALUES (5, 10000, 8, 4, 0, 0, 2, 1);
INSERT INTO experience VALUES (6, 15000, 9, 4.5, 1, 0, 3, 1);
INSERT INTO experience VALUES (7, 21000, 10, 5, 0, 0, 3, 1);
INSERT INTO experience VALUES (8, 28000, 11, 5.5, 0, 1, 3, 2);
INSERT INTO experience VALUES (9, 36000, 12, 6, 1, 0, 4, 2);
INSERT INTO experience VALUES (10, 45000, 13, 6.5, 0, 0, 4, 2);
INSERT INTO experience VALUES (11, 55000, 14, 7, 0, 0, 4, 2);
INSERT INTO experience VALUES (12, 66000, 15, 7.5, 1, 1, 5, 3);
INSERT INTO experience VALUES (13, 78000, 16, 8, 0, 0, 5, 3);
INSERT INTO experience VALUES (14, 91000, 17, 8.5, 0, 0, 5, 3);
INSERT INTO experience VALUES (15, 105000, 18, 9, 1, 0, 6, 3);
INSERT INTO experience VALUES (16, 120000, 19, 9.5, 0, 1, 6, 4);
INSERT INTO experience VALUES (17, 136000, 20, 10, 0, 0, 6, 4);
INSERT INTO experience VALUES (18, 153000, 21, 10.5, 1, 0, 7, 4);
INSERT INTO experience VALUES (19, 171000, 22, 11, 0, 0, 7, 4);
INSERT INTO experience VALUES (20, 190000, 23, 11.5, 0, 1, 7, 5);



/*------Deities------*/
CREATE TABLE deities (
  id                 INT(3) PRIMARY KEY,
  name               VARCHAR(30),
  titles             VARCHAR(50),
  alignment          VARCHAR(30),
  domains            VARCHAR(50),
  typical_worshipers VARCHAR(50),
  favored_weapon     VARCHAR(30),
  description        TEXT,
  image_link         VARCHAR(50)
);


/*------Deity entries------*/
INSERT INTO deities
VALUES (1, 'Boccob', 'God of Magic', 'Neutral', 'Knowledge, Magic, Trickery', 'Wizards, Sorcerers, Sages',
        'Quarterstaff', 'The god of magic, Boccob, is neutral. His titles include the Uncaring, Lord of All Magics, and
        Archmage of the Deities. Boccob is a distant deity who promotes no special agenda in the world of mortals. As a
        god of magic and knowledge, he is worshiped by wizards, sorcerers, and sages. The domains he is associated with
        are Knowledge, Magic, and Trickery. The quarterstaff is his favored weapon.',
        '/public/img/deities/boccob.gif'),
  (2, 'Corellon Larethian', 'God of Elves', 'Chaotic Good', 'Chaos, Good, Protection, War', 'Elves, Half-Elves, Bards',
   'Longsword', 'The god of the elves, Corellon Larethian, is chaotic good. He is known as the Creator of the Elves, the
   Protector, Protector and Preserver of Life, and Ruler of All Elves. Corellon Larethian is the creator and protector
   of the elf race. He governs those things held in highest esteem among elves, such as magic, music, arts, crafts,
   poetry, and warfare. Elves, half-elves, and bards worship him. The domains he is associated with are Chaos, Good,
   Protection, and War. His favored weapon is the longsword. Gruumsh is his nemesis, and it is because of Corellon''s
   battle prowess that Gruumsh is called "One-Eye."',
   '/public/img/deities/corellon_larethian.gif'),
  (3, 'Ehlonna', 'Goddess of the Woodlands', 'Neutral Good', 'Animal, Good, Plant, Sun', 'Elves, Gnomes, Half-Elves,
   Halflings, Rangers, Druids', 'Longbow', 'Ehlonna, the goddess of the woodlands, is neutral good. Her most commonly
   encountered title is Ehlonna of the Forests. Ehlonna watches over all good people who live in the forest, love the
   woodlands, or make their livelihood there. She is pictures sometimes as an elf and sometimes as a human. She is
   especially close to elves, gnomes, half-elves, and halflings. She is also worshiped by rangers and some druids. The
   domains she is associated with are Animal, Good, Plant, and Sun. Her favored weapon is the longbow.',
   '/public/img/deities/ehlonna.gif'),
  (4, 'Erythnul', 'God of Slaughter', 'Chaotic Evil', 'Chaos, Evil, Trickery, War', 'Evil fighters, barbarians, rogues',
   'Morningstar', 'The god of slaughter, Erythnul, is chaotic evil. His title is the Many. Erythnul delights in panic
   and slaughter. In civilized lands, his followers (including evil fighters, barbarians, and rogues) form small,
   criminal cults. In savage lands, evil barbarians, gnolls, bugbears, ogres, and trolls commonly worship him. The
   domains he is associated with are Chaos, Evil, Trickery, and War. His favored weapon is a morningstar with a blunt
   stone head.',
   '/public/img/deities/erythnul.gif'),
  (5, 'Fharlanghn', 'God of Roads', 'Neutral', 'Luck, Protection, Travel', 'Bards, adventurers, merchants',
   'Quarterstaff', 'Fharlanghn, the god of roads, is neutral. His title is Dweller on the Horizon. Fharlanghn''s wayside
   shrines are common on well-used roads, for he is the deity of travel, roads, distance, and horizons. Bards, other
   wandering adventurers, and merchants favor Fharlanghn. The domains he is associated with are Luck, Protection, and
   Travel. The quarterstaff is his favored weapon.',
   '/public/img/deities/fharlanghn.gif'),
  (6, 'Garl Glittergold', 'God of Gnomes', 'Neutral Good', 'Good, Protection, Trickery', 'Gnomes', 'Battleaxe',
   'The god of the gnomes, Garl Glittergold, is neutral good. He is known as the Joker, the Watchful Protector, the
   Priceless Gem, and the Sparkling Wit. Garl Glittergold discovered the gnomes and led them into the world. Since then,
   he has been their protector. He governs humor, wit, gemcutting, and jewelrymaking. The domains he is associated with
   are Good, Protection, and Trickery. Garl''s favored weapon is the battleaxe. He is renowned for the jokes and pranks
   he pulls on other deities, though not all his victims laugh off his jests. Garl once collapsed the cavern of
   Kurtulmak, the god of the kobolds. Since then, the two deities have been sword enemies.',
   '/public/img/deities/garl_glittergold.gif'),
  (7, 'Gruumsh', 'God of Orcs', 'Chaotic Evil', 'Chaos, Evil, Strength, War', 'Half-orcs, Orcs', 'Spear',
   'Gruumsh, chief god of the orcs, is chaotic evil. His titles are One-Eye and He-Who-Never-Sleeps. Gruumsh calls on
   his followers to be strong, to cull the weak from their numbers, and to take all the territory that Gruumsh thinks
   is rightfully theirs (which is almost everything). The domains he is associated with are Chaos, Evil, Strength, and
   War. Gruumsh''s favored weapon is the spear. He harbors a special hatred for Corellon Larethian, Moradin, and their
   followers. In ages past, Corellon Larethian put out Gruumsh''s left eye in a fight.',
   '/public/img/deities/gruumsh.gif'),
  (8, 'Heironeous', 'God of Valor', 'Lawful Good', 'Good, Law, War', 'Paladins, Fighters, Monks', 'Longsword',
   'The god of valor, Heironeous, is lawful good. His title is the Invincible. Heironeous promotes justice, valor,
   chivalry, and honor. The domains he is associated with are Good, Law, and War. His favored weapon is the longsword,
   and he is worshiped by paladins, good fighters, and good monks. His archenemy is Hextor, his half-brother.',
   '/public/img/deities/heironeous.gif'),
  (9, 'Hextor', 'God of Tyranny', 'Lawful Evil', 'Destruction, Evil, Law, War', 'Evil fighters, monks', 'Flail',
   'The god of tyranny, Hextor, is lawful evil. His titles are Champion of Evil, Herald of Hell, and Scourge of Battle.
   Hextor is the six-armed god of war, conflict, and destruction. Hextor''s worshipers include evil fighters and monks.
   The domains he is associated with are Destruction, Evil, Law, and War. His favored weapon is the flail. He sends his
   followers to commit evil, and their special purpose is to overthrow the followers of his half-brother Heironeous
   wherever they are found.',
   '/public/img/deities/hextor.gif'),
  (10, 'Kord', 'God of Strength', 'Chaotic Good', 'Chaos, Good, Luck, Strength', 'Fighters, barbarians, rogues,
   athletes', 'Greatsword', 'Kord, the god of strength, is chaotic good. He is known as the Brawler. Kord is the patron
   of athletes, especially wrestlers. His worshipers include good fighters, barbarians, and rogues. The domains he is
   associated with are Chaos, Good, Luck, and Strength. Kord''s favored weapon is the greatsword.',
   '/public/img/deities/kord.gif'),
  (11, 'Moradin', 'God of Dwarves', 'Lawful Good', 'Earth, Good, Law, Protection', 'Dwarves', 'Warhammer',
   'The god of the dwarves, Moradin, is lawful good. His titles include the Soul Forger, Dwarffather, the All-Father,
   and the Creator. Moradin forged the first dwarves out of metal and gems and breathed life into them. He governs the
   arts and sciences of the dwarves: smithing, metalworking, engineering, and war. The domains he is associated with are
   Earth, GOod, Law, and Protection. His favored weapon is the warhammer.',
   '/public/img/deities/moradin.gif'),
  (12, 'Nerull', 'God of Death', 'Neutral Evil', 'Death, Evil, Trickery', 'Evil necromancers, rogues', 'Scythe',
   'The god of death, Nerull, is neutral evil. He is known as the Reaper, the Foe of All Good, Hater of Life, Bringer of
   Darkness, King of All Gloom, and Reaper of Flesh. Nerull is the patron of those who seek the greatest evil for their
   own enjoyment or gain. The domains he is associated with are Death, Evil, and Trickery. His worshipers, who include
   evil necromancers and rogues, depict him as an almost skeletal cloaked figure who bears a scythe, his favored
   weapon.',
   '/public/img/deities/nerull.gif'),
  (13, 'Obad-Hai', 'God of Nature', 'Neutral', 'Air, Animal, Earth, Fire, Plant, Water', 'Druids, barbarians, rangers',
   'Quarterstaff', 'Obad-Hai, the god of nature, is neutral. He is known as the Shalm. Obad-Hai rules nature and the
   wilderness, and he is a friend to all who live in harmony with the natural world. Barbarians, rangers, and druids
   sometimes worship him. The domains he is associated with are Air, Animal, Earth, Fire, Plant, and Water. Because
   Obad-Hai strictly adheres to neutrality, he is a rival of Ehlonna. Obad-Hai plays a shalm (a double-reed woodwind
   musical instrument, also spelled "shawm") and takes his title from this instrument. His favored weapon is the
   quarterstaff.',
   '/public/img/deities/obad_hai.gif'),
  (14, 'Olidammara', 'God of Thieves', 'Chaotic Neutral', 'Chaos, Luck, Trickery', 'Rogues, bards, thieves', 'Rapier',
   'Tge god of rogues, Olidammara, is chaotic neutral. His title is the Laughing Rogue. Olidammara delights in wine,
   women, and song. He is a vagabond, a prankster, and a master of disguise. His temples are few, but many people are
   willing to raise a glass in his honor. Rogues and bards are frequently among his worshipers. The domains he is
   associated with are Chaos, Luck, and Trickery. The rapier is his favored weapon.',
   '/public/img/deities/olidammara.gif'),
  (15, 'Pelor', 'God of the Sun', 'Neutral Good', 'Good, Healing, Strength, Sun', 'Rangers, bards', 'Mace',
   'Pelor, god of the sun, is neutral good. His title is the Shining One. Pelor is the creator of many good things, a
   supporter of those in need, and an adversary of all that is evil. He is the most commonly worshiped deity among
   ordinary humans, and his priests are well received wherever they go. Rangers and bards are found among his
   worshipers. The domains he is associated with are Good, Healing, Strength, and Sun. The mace is his favored weapon.',
   '/public/img/deities/pelor.gif'),
  (16, 'St. Cuthbert', 'God of Retribution', 'Lawful Neutral', 'Destruction, Law, Protection, Strength', 'Fighters,
   monks, soldiers', 'Mace', 'The god of retribution, St. Cuthbert, is lawful neutral. He is known as St. Cuthbert of
   the Cudgel. St. Cuthbert exacts revenge and just punishment on those who transgress the law. Because evil creatures
   more commonly and flagrantly violate laws than good creatures do, St. Cuthbert favors good over evil, though he is
   not good himself. (His clerics cannot be evil.) The domains he is associated with are Destruction, Law, Protection,
   and Strength. His favored weapon is the mace.',
   '/public/img/deities/st_cuthbert.gif'),
  (17, 'Vecna', 'God of Secrets', 'Neutral Evil', 'Evil, Knowledge, Magic', 'Evil wizards, sorcerers, rogues, spies',
   'Dagger', 'Vecna, the god of secrets, is neutral evil. He is known as the Maimed Lord, the Whispered One, and the
   Master of All That Is Secret and Hidden. Vecna rules that which is not meant to be known and that which people wish
   to keep secret. The domains he is associated with are Evil, Knowledge, and Magic. He usually appears as a lich who
   is missing his left hand and left eye. He lost his hand and eye in a fight with his traitorous lieutenant, Kas.
   Vecna''s favored weapon is the dagger.',
   '/public/img/deities/vecna.gif'),
  (18, 'Wee Jas', 'Goddess of Death and Magic', 'Lawful Neutral', 'Death, Law, Magic', 'Wizards, necromancers,
   sorcerers', 'Dagger', 'Wee Jas, the goddess of death and magic, is lawful neutral. Her titles are Witch Goddess, Ruby
   Sorceress, Stern Lady, and Death''s Guardian. Wee Jas is a demanding goddess who expects obedience from her
   followers. Her temples are few and far between, but she counts many powerful sorcerers and wizards (especially
   necromancers) among her worshipers. The domains she is associated with are Death, Law, and Magic. Her favored weapon
   is the dagger.',
   '/public/img/deities/wee_jas.gif'),
  (19, 'Yondalla', 'Goddess of Halflings', 'Lawful Good', 'Good, Law, Protection', 'Halflings', 'Short Sword',
   'The goddess of the halflings, Yondalla, is lawful good. Her titles include the Protector and Provider, the Nurturing
   Matriarch, and the Blessed One. Yondalla is the creator and protector of the halfling race. She espouses harmony
   among halflings and stalwart defense against their enemies. Her followers hope to lead safe, prosperous lives by
   following her guidance. The domains she is associated with are Good, Law, and Protection. The short sword is her
   favored weapon.',
   '/public/img/deities/yondalla.gif');
