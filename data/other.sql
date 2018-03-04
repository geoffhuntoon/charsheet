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


/*------Religion------*/
CREATE TABLE religion (
  id          INT(3) PRIMARY KEY,
  description TEXT
);


/*------Religion Description------*/
INSERT INTO religion
VALUES (1, 'The gods are many. A few, such as Pelor (god of the sun), have grand temples that sponsor mighty processions
  through the streets on high holy days. Others, such as Erythnul (god of slaughter), have temples only in hidden places
  or evil lands. While the gods most strongly make their presence felt through their clerics, they also have lay
  followers who more or less attempt to live up to their deities\' standards. The typical person has a deity whom he
  considers to be his patron. Still, it is only prudent to be respectful toward and even pray to other deities when the
  time is right. Before setting out on a journey, a follower of Pelor might leave a small sacrifice at a wayside shrine
  to Fharlanghn (god of roads) to improve his chances of having a safe journey. As long as one\'s own deity is not at
  odds with the others in such an act of piety, such simple practices are common. In times of tribulation, however, some
  people recite dark prayers to evil deities. Such prayers are best muttered under one\'s breath, lest others
  overhear.<br/><br/>
  Deities rule the various aspects of human existence: good and evil, law and chaos, life and death, knowledge and
  nature. In addition, various nonhuman races have racial deities of their own. A character may not be a cleric of a
  racial deity unless he is of the right race, but he may worship such a deity and live according to that deity\'s
  guidance. For a deity who is not tied to a particular race (such as Pelor), a cleric\'s race is not an
  issue.<br/><br/>
  Deities of certain kinds of monsters are identified in the <i>Monster Manual</i>. Many more deities than those
  described here or mentioned in the <i>Monster Manual</i> also exist.<br/><br/>
  Your character may or may not have a patron deity. If you want him or her to have one, consider first the deities most
  appropriate to the character\'s race, class, and alignment. If a cleric chooses a deity, which one he selects
  influences his capabilities.');


/*------Deities------*/
CREATE TABLE deities (
  id                 INT(3) PRIMARY KEY,
  name               VARCHAR(30),
  titles             VARCHAR(50),
  alignment          VARCHAR(30),
  domains            VARCHAR(50),
  typical_worshipers VARCHAR(100),
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


/*------Deities By Race------*/
CREATE TABLE deities_by_race (
  id      INT(3) PRIMARY KEY,
  race    VARCHAR(20),
  deities VARCHAR(100)
);


/*------Deities By Race Entries------*/
INSERT INTO deities_by_race
VALUES (1, 'Human', 'By class and alignment'),
  (2, 'Dwarf', 'Moradin, or by class and alignment'),
  (3, 'Elf', 'Corellon Larethian, Ehlonna, or by class and alignment'),
  (4, 'Gnome', 'Garl Glittergold, Ehlonna, or by class and alignment'),
  (5, 'Half-Elf', 'Corellon Larethian, Ehlonna, or by class and alignment'),
  (6, 'Half-Orc', 'Gruumsh, or by class and alignment'),
  (7, 'Halfling', 'Yondalla, Ehlonna, or by class and alignment');


/*------Deities By Class------*/
CREATE TABLE deities_by_class (
  id      INT(3) PRIMARY KEY,
  class   VARCHAR(20),
  deities VARCHAR(100)
);


/*------Deities By Class Entries------*/
INSERT INTO deities_by_class
VALUES (1, 'Barbarian', 'Kord (CG), Obad-Hai (TN), Erythnul (CE)'),
  (2, 'Bard', 'Pelor (NG), Fharlanghn (TN), Olidammara (CN)'),
  (3, 'Cleric', 'Any'),
  (4, 'Druid', 'Obad-Hai (TN)'),
  (5, 'Fighter', 'Heironeous (LG), Kord (CG), St. Cuthbert (LN), Hextor (LE), Erythnul (CE)'),
  (6, 'Illusionist', 'Boccob (TN)'),
  (7, 'Necromancer', 'Wee Jas (LN), Nerull (NE)'),
  (8, 'Monk', 'Heironeous (LG), St. Cuthbert (LN), Hextor (LE)'),
  (9, 'Paladin', 'Heironeous (LG)'),
  (10, 'Ranger', 'Ehlonna (NG), Obad-Hai (TN)'),
  (11, 'Rogue', 'Olidammara (CN), Nerull (NE), Vecna (NE), Erythnul (CE)'),
  (12, 'Sorcerer', 'Wee Jas (LN), Boccob (TN), Vecna (NE)'),
  (13, 'Wizard', 'Wee Jas (LN), Boccob (TN), Vecna (NE)');


/*------Alignment------*/
CREATE TABLE alignment (
  id          INT(3) PRIMARY KEY,
  section     VARCHAR(30),
  description TEXT
);


/*------Alignment Entries------*/
INSERT INTO alignment
VALUES (1, 'General',
        'In the temple of Pelor is an ancient tome. When the temple recruits adventurers for its most sensitive and
        important quests, each one who wants to participate must kiss the book. Those who are evil in their hearts are
        blasted by holy power, and even those who are neither good nor evil are stunned. Only those who are good can
        kiss the tome without hard and are trusted with the temple\'s most important work. Good and evil are not
        philosophical concepts in the D&D game. They are the forces that define the cosmos.<br/><br/>
        Devils in human guise stalk the land, tempting people toward evil. Holy clerics use the power of good to protect
        worshipers. Devotees of evil gods bring ruin on innocents to win the favor of their deities, while trusting that
        rewards await them in the afterlife. Crusading paladins fearlessly confront evildoers, knowing that this short
        life is nothing worth clinging to. Warlords turn to whichever supernatural power will help them conquer, and
        proxies for good and evil gods promise rewards in return for the warlords\' oaths of obedience.<br/><br/>
        A creature\'s general moral and personal attitudes are represented by its alignment: lawful good, neutral good,
        chaotic good, lawful neutral, true neutral, chaotic neutral, lawful evil, neutral evil, or chaotic
        evil.<br/><br/>
        Choose an alignment for your character, using his or her race and class as a guide. Most player characters are
        good or neutral rather than evil. In general, evil alignments are for villains and monsters.<br/><br/>
        Alignment is a tool for developing your character\'s identity. It is not a straitjacket for restricting your
        character. Each alignment represents a broad range of personality types or personal philosophies, so two lawful
        good characters can still be quite different from each other. In addition, few people are completely consistent.
        A lawful good character may have a greedy streak that occasionally tempts him to take something or hoard
        something he has, even if that\'s not lawful or good behavior. People are also not consistent from day to day.
        A good character can lose his temper, a neutral character can be inspired to perform a noble act, and so
        on.<br/><br/>
        Choosing an alignment for your character means stating your intent to play that character a certain way. If your
        character acts in a way more appropriate to another alignment, the DM may decide that his alignment has changed
        to match his actions.'),
  (2, 'Typical Alignments',
   'Creatures and members of classes shown in <i>italic type</i> in the Creature, Race, and Class Alignments table are
   always of the indicated alignment. Except for paladins, they are born into that alignment. It is inherent, part of
   their nature. Usually, a creature with an inherent alignment has some connection (through ancestry, history, or
   magic) to the Outer Planes or is a magical beast.<br/><br/>
   For other creatures, races, and classes, the indicated alignment in the table is the typical or most common one.
   Normal sentient creatures can be of any alignment. They may have inherent tendencies toward a particular alignment,
   but individuals can vary from this norm. Depending on the type of creature, these tendencies may be stronger or
   weaker. For example, kobolds and beholders are usually lawful evil, but kobolds display more variation in alignment
   than beholders because their inborn alignment tendency isn\'t as strong. Also, sentient creatures have cultural
   tendencies that usually reinforce alignment tendencies. For example, orcs tend to be chaotic evil, and their culture
   tends to produce chaotic evil members. A human raised among orcs is more likely than normal to be chaotic evil, while
   an orc raised among humans is less likely to be so.'),
  (3, 'Good vs. Evil',
   'Good characters and creatures protect innocent life. Evil characters and creatures debase or destroy innocent life,
   whether for fun or for profit.<br/><br/>
   "Good" implies altruism, respect for life, and a concern for the dignity of sentient beings. Good characters make
   personal sacrifices to help others.<br/><br/>
   "Evil" implies hurting, oppressing, and killing others. Some evil creatures simply have no compassion for others and
   kill without qualms if doing so is convenient. Others actively pursue evil, killing for sport or out of duty to some
   evil deity or master.<br/><br/>
   People who are neutral with respect to good and evil have compunctions against killing the innocent but lack the
   commitment to make sacrifices to protect or help others. Neutral people are committed to others by personal
   relationships. A neutral person may sacrifice himself to protect his family or even his homeland, but he would not do
   so for strangers who are not related to him.<br/><br/>
   Being good or evil can be a conscious choice, as with the paladin who attempts to live up to her ideals or the evil
   cleric who causes pain and terror to emulate his god. For most people, though, being good or evil is an attitude that
   one recognizes but does not choose. Being neutral on the good-evil axis usually represents a lack of commitment one
   way or the other, but for some it represents a positive commitment to a balanced view. While acknowledging that good
   and evil are objective states, not just opinions, these folk maintain that a balance between the two is the proper
   place for people, or at least for them.<br/><br/>
   Animals and other creatures incapable of moral action are neutral rather than good or evil. Even deadly vipers and
   tigers that eat people are neutral because they lack the capacity for morally right or wrong behavior.'),
  (4, 'Law vs. Chaos',
   'Lawful characters tell the truth, keep their word, respect authority, honor tradition, and judge those who fall
   short of their duties. Chaotic characters follow their consciences, resent being told what to do, favor new ideas
   over tradition, and do what they promise if they feel like it.<br/><br/>
   "Law" implies honor, trustworthiness, obedience to authority, and reliability. On the downside, lawfulness can
   include close-mindedness, reactionary adherence to tradition, judgmentalness, and a lack of adaptability. Those who
   consciously promote lawfulness say that only lawful behavior creates a society in which people can depend on each
   other and make the right decisions in full confidence that others will act as they should.<br/><br/>
   "Chaos" implies freedom, adaptability, and flexibility. On the downside, chaos can include recklessness, resentment
   toward legitimate authority, arbitrary actions, and irresponsibility. Those who promote chaotic behavior say that
   only unfettered personal freedom allows people to express themselves fully and lets society benefit from the
   potential that its individuals have within them.<br/><br/>
   Someone who is neutral with respect to law and chaos has a normal respect for authority and feels neither a
   compulsion to obey nor a compulsion to rebel. She is honest but can be tempted into lying or deceiving
   others.<br/><br/>
   Devotion to law or chaos may be a conscious choice, but more often it is a personality trait that is recognized
   rather than being chosen. Neutrality on the lawful-chaotic axis is usually simply a middle state, a state of not
   feeling compelled toward one side or the other. Some few such neutrals, however, espouse neutrality as superior to
   law or chaos, regarding each as an extreme with its own blind spots and drawbacks.<br/><br/>
   Animals and other creatures incapable of moral action are neutral. Dogs may be obedient and cats free-spirited, but
   they do not have the moral capacity to be truly lawful or chaotic.'),
  (5, 'Lawful Good, "Crusader"',
   'A lawful good character acts as a good person is expected or required to act. She combines a commitment to oppose
   evil with the discipline to fight relentlessly. She tells the truth, keeps her word, helps those in need, and speaks
   out against injustice. A lawful good character hates to see the guilty go unpunished. Alhandra, a paladin who fights
   evil without mercy and protects the innocent without hesitation, is lawful good.<br/>
   Lawful good is the best alignment you can be because it combines honor and compassion.'),
  (6, 'Neutral Good, "Benefactor"',
   'A neutral good character does the best that a good person can do. He is devoted to helping others. He works with
   kings and magistrates but does not feel beholden to them. Jozan, a cleric who helps others according to their needs,
   is neutral good.<br/>
   Neutral good is the best alignment you can be because it means doing what is good without bias for or against
   order.'),
  (7, 'Chaotic Good, "Rebel"',
   'A chaotic good character acts as his conscience directs him with little regard for what others expect of him. He
   makes his own way, but he\'s kind and benevolent. He believes in goodness and right but has little use for laws and
   regulations. He hates it when people try to intimidate others and tell them what to do. He follows his own moral
   compass, which, although good, may not agree with that of society. Soveliss, a ranger who waylays the evil baron\'s
   tax collectors, is chaotic good.<br/>
   Chaotic good is the best alignment you can be because it combines a good heart with a free spirit.'),
  (8, 'Lawful Neutral, "Judge"',
   'A lawful neutral character acts as law, tradition, or a personal code directs her. Order and organization are
   paramount to her. She may believe in personal order and live by a code or standard, or she may believe in order for
   all and favor a strong, organized government. Ember, a monk who follows her discipline without being swayed either by
   the demands of those in need or by the temptations of evil, is lawful neutral.<br/>
   Lawful neutral is the best alignment you can be because it means you are reliable and honorable without being a
   zealot.'),
  (9, 'True Neutral, "Undecided"',
   'A neutral character does what seems to be a good idea. She doesn\'t feel strongly one way or the other when it comes
   to good vs. evil or law vs. chaos. Most neutral characters exhibit a lack of conviction or bias rather than a
   commitment to neutrality. Such a character thinks of good as better than evil - after all, she would rather have good
   neighbors and rulers than evil ones. Still, she\'s not personally committed to upholding good in any abstract or
   universal way. Mialee, a wizard who devotes herself to her art and is bored by the semantics of moral debate, is
   neutral.<br/>
   Some neutral characters, on the other hand, commit themselves philosophically to neutrality. They see good, evil,
   law, and chaos as prejudices and dangerous extremes. They advocate the middle way of neutrality as the best, most
   balance road in the long run.<br/>
   Neutral is the best alignment you can be because it means you act naturally, without prejudice or compulsion.'),
  (10, 'Chaotic Neutral, "Free Spirit"',
   'A chaotic neutral character follows his whims. He is an individualist first and last. He values his own liberty but
   doesn\'t strive to protect others\' freedom. He avoids authority, resents restrictions, and challenges traditions. A
   chaotic neutral character does not intentionally disrupt organizations as part of a campaign of anarchy. To do so, he
   would have to be motivated either by good (and a desire to liberate others) or evil (and a desire to make those
   different from himself suffer). A chaotic neutral character may be unpredictable, but his behavior is not totally
   random. He is not as likely to jump off a bridge as to cross it. Gimble, a bard who wanders the land living by his
   wits, is chaotic neutral.<br/>
   Chaotic neutral is the best alignment you can be because it represents true freedom from both society\'s restrictions
   and a do-gooder\'s zeal.'),
  (11, 'Lawful Evil "Dominator"',
   'A lawful evil villain methodically takes what he wants within the limits of his code of conduct without regard for
   whom it hurts. He cares about tradition, loyalty, and order but not about freedom, dignity, or life. He plays by the
   rules but without mercy or compassion. He is comfortable in a hierarchy and would like to rule, but is willing to
   serve. He condemns others not according to their actions but according to race, religion, homeland, or social rank.
   He is loath to break laws or promises. This reluctance comes party from his nature and partly because he depends on
   order to protect himself from those who oppose him on moral grounds. Some lawful evil villains have particular
   taboos, such as not killing in cold blood (but having underlings do it) or not letting children come to harm (if it
   can be helped). They imagine that these compulsions put them above unprincipled villains. The scheming baron who
   expands his power and exploits his people is lawful evil.<br/>
   Some lawful evil people and creatures commit themselves to evil with a zeal like that of a crusader committed to
   good. Beyond being willing to hurt others for their own ends, they take pleasure in spreading evil as an end unto
   itself. They may also see doing evil as part of a duty to an evil deity or master.<br/>
   Lawful evil is sometimes called "diabolical," because devils are the epitome of lawful evil.<br/>
   Lawful evil is the most dangerous alignment because it represents methodical, intentional, and frequently successful
   evil.'),
  (12, 'Neutral Evil, "Malefactor"',
   'A neutral evil villain does whatever she can get away with. SHe is out for herself, pure and simple. She sheds no
   tears for those she kills, whether for profit, sport, or convenience. She has no love of order and holds no illusion
   that following laws, traditions, or codes would make her any better or more noble. On the other hand, she doesn\'t
   have the restless nature or love of conflict that a chaotic evil villain has. The criminal who robs and murders to
   get what she wants is neutral evil.<br/>
   Some neutral evil villains hold up evil as an ideal, committing evil for its own sake. Most often, such villains are
   devoted to evil deities or secret societies.<br/>
   Neutral evil is the most dangerous alignment because it represents pure evil without honor and without variation.'),
  (13, 'Chaotic Evil, "Destroyer"',
   'A chaotic evil character does whatever his greed, hatred, and lust for destruction drive him to do. He is
   hot-tempered, vicious, arbitrarily violent, and unpredictable. If he is simply out for whatever he can get, he is
   ruthless and brutal. If he is committed to the spread of evil and chaos, he is even worse. Thankfully, his plans are
   haphazard, and any groups he joins or forms are poorly organized. Typically, chaotic evil people can be made to work
   together only by force, and their leader lasts only as long as he can thwart attempts to topple or assassinate him.
   The demented sorcerer pursuing mad schemes of vengeance and havoc is chaotic evil.<br/>
   Chaotic evil is sometimes called "demonic" because demons are the epitome of chaotic evil.<br/>
   Chaotic evil is the most dangerous alignment because it represents the destruction not only of beauty and life but
   also of the order and which beauty and life depend.');


/*------Creature, Race, and Class Alignments------*/
CREATE TABLE alignment_examples (
  id        INT(3) PRIMARY KEY,
  alignment VARCHAR(20),
  example   VARCHAR(20)
);


/*------CRC Alignment Entries------*/
INSERT INTO alignment_examples
VALUES (1, 'Lawful Good', '<i>Archons</i>'),
  (2, 'Lawful Good', 'Gold Dragons'),
  (3, 'Lawful Good', '<i>Lammasus</i>'),
  (4, 'Lawful Good', 'Dwarves'),
  (5, 'Lawful Good', '<i>Paladins</i>'),
  (6, 'Neutral Good', '<i>Guardinals</i>'),
  (7, 'Neutral Good', 'Gnomes'),
  (8, 'Neutral Good', 'Centaurs'),
  (9, 'Neutral Good', 'Giant Eagles'),
  (10, 'Neutral Good', '<i>Pseudodragons</i>'),
  (11, 'Chaotic Good', '<i>Eladrins</i>'),
  (12, 'Chaotic Good', 'Copper Dragons'),
  (13, 'Chaotic Good', '<i>Unicorns</i>'),
  (14, 'Chaotic Good', 'Elves'),
  (15, 'Chaotic Good', 'Rangers'),
  (16, 'Lawful Neutral', 'Monks'),
  (17, 'Lawful Neutral', 'Wizards'),
  (18, 'Lawful Neutral', '<i>Formians</i>'),
  (19, 'Lawful Neutral', '<i>Azers</i>'),
  (20, 'Neutral', '<i>Animals</i>'),
  (21, 'Neutral', 'Halflings'),
  (22, 'Neutral', 'Humans'),
  (23, 'Neutral', 'Lizardfolk'),
  (24, 'Neutral', 'Druids'),
  (25, 'Chaotic Neutral', 'Half-Elves'),
  (26, 'Chaotic Neutral', 'Half-Orcs'),
  (27, 'Chaotic Neutral', 'Barbarians'),
  (28, 'Chaotic Neutral', 'Bards'),
  (29, 'Chaotic Neutral', 'Rogues'),
  (30, 'Lawful Evil', '<i>Devils</i>'),
  (31, 'Lawful Evil', 'Blue Dragons'),
  (32, 'Lawful Evil', 'Beholders'),
  (33, 'Lawful Evil', 'Ogre Mages'),
  (34, 'Lawful Evil', 'Hobgoblins'),
  (35, 'Lawful Evil', 'Kobolds'),
  (36, 'Neutral Evil', 'Drow'),
  (37, 'Neutral Evil', 'Goblins'),
  (38, 'Neutral Evil', '<i>Allips</i>'),
  (39, 'Neutral Evil', 'Ettercaps'),
  (40, 'Neutral Evil', '<i>Devourers</i>'),
  (41, 'Chaotic Evil', '<i>Demons</i>'),
  (42, 'Chaotic Evil', 'Red Dragons'),
  (43, 'Chaotic Evil', '<i>Nightshades</i>'),
  (44, 'Chaotic Evil', 'Troglodytes'),
  (45, 'Chaotic Evil', 'Gnolls'),
  (46, 'Chaotic Evil', 'Ogres'),
  (47, 'Chaotic Evil', 'Orcs');


