/*------Classes------*/
CREATE TABLE classes (
  id              INT(2) PRIMARY KEY,
  name            VARCHAR(15),
  spells_per_day  BOOLEAN,
  spells_known    BOOLEAN,
  general         TEXT,
  adventures      TEXT,
  characteristics TEXT,
  alignment       TEXT,
  religion        TEXT,
  background      TEXT,
  races           TEXT,
  other_classes   TEXT,
  role            TEXT,
  rule_info       TEXT,
  class_skills    TEXT,
  ex_class        TEXT
);


/*------Class Statistic Tables------*/
CREATE TABLE class_stats (
  id                  INT(3) PRIMARY KEY,
  class_id            INT(3),
  class_name          VARCHAR(15),
  level               INT(3),
  base_attack_bonus_1 INT(3),
  base_attack_bonus_2 INT(3),
  base_attack_bonus_3 INT(3),
  base_attack_bonus_4 INT(3),
  fortitude_save      INT(3),
  reflex_save         INT(3),
  will_save           INT(3),
  special             VARCHAR(50),
  FOREIGN KEY (class_id) REFERENCES classes (id)
);


/*------Class Features------*/
CREATE TABLE class_features (
  id          INT(3) PRIMARY KEY,
  class_id    INT(3),
  class_name  VARCHAR(15),
  name        VARCHAR(30),
  description TEXT
);


/*------Class Spells Per Day------*/
CREATE TABLE class_spells_per_day (
  id         INT(3) PRIMARY KEY,
  class_id   INT(3),
  class_name VARCHAR(15),
  level      INT(3),
  per_day_0  INT(2),
  per_day_1  INT(2),
  per_day_2  INT(2),
  per_day_3  INT(2),
  per_day_4  INT(2),
  per_day_5  INT(2),
  per_day_6  INT(2),
  per_day_7  INT(2),
  per_day_8  INT(2),
  per_day_9  INT(2),
  FOREIGN KEY (class_id) REFERENCES classes (id)
);


/*------Class Spells Known------*/
CREATE TABLE class_spells_known (
  id         INT(3) PRIMARY KEY,
  class_id   INT(3),
  class_name VARCHAR(15),
  level      INT(3),
  known_0    INT(2),
  known_1    INT(2),
  known_2    INT(2),
  known_3    INT(2),
  known_4    INT(2),
  known_5    INT(2),
  known_6    INT(2),
  known_7    INT(2),
  known_8    INT(2),
  known_9    INT(2),
  FOREIGN KEY (class_id) REFERENCES classes (id)
);


/*------Barbarian------*/
INSERT INTO classes
VALUES (1, 'Barbarian', FALSE, FALSE,
           'From the frozen wastes of the north and the hellish jungles of the south come brave, even reckless,
           warriors. Civilized people call them barbarians or berserkers and suspect them of mayhem, impiety, and
           atrocities. These "barbarians," however, have proven their mettle and their value to those who would be their
           allies. To enemies who underestimated them, they have proved their cunning resourcefulness, persistence, and
           mercilessness.',
           'Adventuring is the best chance barbarians have of finding a place in a civilized society. They''re not well
           suited to the monotony of guard duty or other mundane tasks. Barbarians also have no trouble with the
           dangers, the uncertainties, and the wandering that adventuring involves. They may adventure to defeat hated
           enemies. They also have a noted distaste for that which they consider unnatural, including undead, demons,
           and devils.',
           'The barbarian is an excellent warrior. Where the fighter''s skill in combat comes from training and
           discipline, however, the barbarian has a powerful rage. While in this berserk fury, he becomes stronger and
           tougher, better able to defeat his foes and withstand their attacks. These rages leave him winded, and he has
           the energy for only a few such spectacular displays per day, but those few rages are usually sufficient. He
           is at home in the wild, and he runs at great speed.',
           'Barbarians are never lawful. They may be honorable, but at heart they are wild. This wildness is their
           strength, and it could not live in a lawful soul. At best, barbarians of chaotic alignment are free and
           expressive. At worst, they are thoughtlessly destructive.',
           'Some barbarians distrust established religions and prefer an intuitive, natural relationship to the cosmos
           over formal worship. Others devote themselves to powerful deities, such as Kord (god of strength), Obad-Hai
           (god of nature), or Erythnul (god of slaughter). A barbarian is capable of fierce devotion to his god.',
           'Barbarians come from uncivilized lands or or from barbaric tribes on the outskirts of civilization. A
           barbarian adventurer may have been lured to the settled lands by the promise of riches, may have escaped
           after being captured in his homeland and sold into "civilized" slavery, may have been recruited as a soldier,
           or may have been driven out of his homeland by invaders. Barbarians share no bond with each other unless they
           come from the same tribe or land. In fact, they think of themselves not as barbarians but as warriors.',
           'Human barbarians come from the distant wild lands on the edge of civilization. Most half-orc barbarians
           lived among orcs before abandoning them for human lands. Dwarf barbarians are rare, usually hailing from
           dwarven kingdoms that have fallen into barbarism as a result of recurrent war with goblinoids, orc, and
           giants. Barbarians of other races are very rare.<br/>
           Among the brutal humanoids, barbarians are more common than fighters. Orcs and ogres are especially likely
           to be barbarians.',
        'As people of the wild, barbarians are most comfortable in the company of rangers, druids, and clerics of
        nature deities, such as Obad-Hai or Ehlonna. Many barbarians admire the talents and spontaneity of bards, and
        some are enthusiastic lovers of music. Barbarians don''t trust that which they don''t understand, and that
        includes wizardry, which they call "book magic." They find sorcerers more understandable than wizards, but
        maybe that''s just because sorcerers tend to be more charismatic. Monks, with their studied, practiced,
        deliberate approach to combat, sometimes have a hard time seeing eye to eye with barbarians, but members of
        these classes aren''t necessarily hostile to each other. Barbarians have no special attitude toward fighters,
        paladins, clerics, or rogues.',
        'A barbarian''s typical primary role in a group of adventurers is as a front-line combat specialist. No other
        character can match his sheer toughness. He can also serve as a good scout, thanks to his speed, skill
        selection, and trap sense.',
        'Abilities: Strength is important for barbarians because of its role in combat, and several barbarian class
        skills are based on Strength. Dexterity is also useful to barbarians, especially those who wear light armor.
        Wisdom is also important for several of the barbarian''s class skills. A high Constitution score lets a
        barbarian rage longer (and live longer, because it gives him more hit points).<br/><br/>
        Alignment: Any nonlawful.<br/><br/>
        Hit Die: d12.',
        'Climb, Craft, Handle Animal, Intimidate, Jump, Listen, Ride, Survival, Swim',
        'A barbarian who becomes lawful loses the ability to rage and cannot gain more levels as a barbarian. He
        retains all the other benefits of the class (damage reduction, fast movement, trap sense, and uncanny dodge).');


/*------Barbarian Class Statistics------*/
INSERT INTO class_stats
VALUES (1, 1, 'Barbarian', 1, 1, 0, 0, 0, 2, 0, 0,
        'Weapon and Armor Proficiency, Fast Movement, Illiteracy, Rage 1/day'),
  (2, 1, 'Barbarian', 2, 2, 0, 0, 0, 3, 0, 0, 'Uncanny Dodge'),
  (3, 1, 'Barbarian', 3, 3, 0, 0, 0, 3, 1, 1, 'Trap Sense +1'),
  (4, 1, 'Barbarian', 4, 4, 0, 0, 0, 4, 1, 1, 'Rage 2/day'),
  (5, 1, 'Barbarian', 5, 5, 0, 0, 0, 4, 1, 1, 'Improved Uncanny Dodge'),
  (6, 1, 'Barbarian', 6, 6, 1, 0, 0, 5, 2, 2, 'Trap Sense +2'),
  (7, 1, 'Barbarian', 7, 7, 2, 0, 0, 5, 2, 2, 'Damage Reduction 1'),
  (8, 1, 'Barbarian', 8, 8, 3, 0, 0, 6, 2, 2, 'Rage 3/day'),
  (9, 1, 'Barbarian', 9, 9, 4, 0, 0, 6, 3, 3, 'Trap Sense +3'),
  (10, 1, 'Barbarian', 10, 10, 5, 0, 0, 7, 3, 3, 'Damage Reduction 2'),
  (11, 1, 'Barbarian', 11, 11, 6, 1, 0, 7, 3, 3, 'Greater Rage'),
  (12, 1, 'Barbarian', 12, 12, 7, 2, 0, 8, 4, 4, 'Rage 4/day, Trap Sense +4'),
  (13, 1, 'Barbarian', 13, 13, 8, 3, 0, 8, 4, 4, 'Damage Reduction 3'),
  (14, 1, 'Barbarian', 14, 14, 9, 4, 0, 9, 4, 4, 'Indomitable Will'),
  (15, 1, 'Barbarian', 15, 15, 10, 5, 0, 9, 5, 5, 'Trap Sense +5'),
  (16, 1, 'Barbarian', 16, 16, 11, 6, 1, 10, 5, 5, 'Damage Reduction 4, Rage 5/day'),
  (17, 1, 'Barbarian', 17, 17, 12, 7, 2, 10, 5, 5, 'Tireless Rage'),
  (18, 1, 'Barbarian', 18, 18, 13, 8, 3, 11, 6, 6, 'Trap Sense +6'),
  (19, 1, 'Barbarian', 19, 19, 14, 9, 4, 11, 6, 6, 'Damage Reduction 5'),
  (20, 1, 'Barbarian', 20, 20, 15, 10, 5, 12, 6, 6, 'Mighty Rage, Rage 6/day');


/*------Barbarian Class Features------*/
INSERT INTO class_features
VALUES (1, 1, 'Barbarian', 'Weapon and Armor Proficiency',
        'A barbarian is proficient with all simple and martial weapons, light armor, medium armor, and shields (except
        tower shields).'),
  (2, 1, 'Barbarian', 'Fast Movement (Ex)',
   'A barbarian''s land speed is faster than the norm for his race by +10 feet. This benefit applies only when he is
   wearing no armor, light armor, or medium armor and not carrying a heavy load. Apply this bonus before modifying the
   barbarian''s speed because of any load carried or armor worn. For example, a human barbarian has a speed of 40 feet,
   rather than 30 feet, when wearing light or no armor. When wearing medium armor or carrying a medium load, his speed
   drops to 30 feet. A halfling barbarian has a speed of 30 feet, rather than 20 feet, in light or no armor. When
   wearing medium armor or carrying a medium load, his speed drops to 20 feet.'),
  (3, 1, 'Barbarian', 'Illiteracy',
   'Barbarians are the only characters who do not automatically know how to read and write. A barbarian may spend 2
   skill points to gain the ability to read and write all languages he is able to speak.<br/>
   A barbarian who gains a level in any other class automatically gains literacy. Any other character who gains a
   barbarian level does not lose the literacy he or she already had.'),
  (4, 1, 'Barbarian', 'Rage (Ex)',
   'A barbarian can fly into a screaming blood frenzy a certain number of times per day. In a rage, a barbarian gains
   phenomenal strength and durability but becomes reckless and less able to defend himself. He temporarily gains a +4
   bonus to Strength, a +4 bonus to Constitution, and a +2 morale bonus on Will saves, but he takes a -2 penalty to
   Armor Class.<br/>
   The increase in Constitution increases the barbarian''s hit points by 2 points per level, but these hit points go
   away at the end of the rage when his Constitution score drops back to normal. (These extra hit points are not lost
   first the way temporary hit points are.) While raging, a barbarian cannot use any Charisma-, Dexterity-, or
   Intelligence-based skills (except for Balance, Escape Artist, Intimidate, and Ride), the Concentration skill, or any
   abilities that require patience or concentration, nor can he cast spells or activate magic items that require a
   command word, a spell trigger (such as a wand), or spell completion (such as a scroll) to function. He can use any
   feat he has except Combat Expertise, item creation feats, and metamagic feats. A fit of rage lasts for a number of
   rounds equal to 3 + the character''s (newly improved) Constitution modifier. A barbarian may prematurely end his
   rage. At the end of the rage, the barbarian loses the rage modifiers and restrictions and becomes fatigued (-2
   penalty to Strength, -2 penalty to Dexterity, can''t charge or run) for the duration of the current encounter (unless
   he is a 17th-level barbarian, at which point this limitation no longer applies).<br/>
   A barbarian can fly into a rage only once per encounter. At 1st level he can use his rage ability once per day. At
   4th level and every four levels thereafter, he can use it one additional time per day (to a maximum of six times per
   day at 20th level). Entering a rage takes no time itself, but a barbarian can do it only during his action, not in
   response to someone else''s action. A barbarian can''t, for example, fly into a rage when struck down by an arrow in
   order to get the extra hit points from the increased Constitution, although the extra hit points would be of benefit
   if he had gone into a rage earlier in the round, <i>before</i> the arrow struck.'),
  (5, 1, 'Barbarian', 'Uncanny Dodge (Ex)',
   'At 2nd level, a barbarian gains the ability to react to danger before his senses would normally allow him to do so.
   He retains his Dexterity bonus to AC (if any) even if he is caught flat-footed or struck by an invisible attacker.
   However, he still loses his Dexterity bonus to AC if immobilized.<br/>
   If a barbarian already has uncanny dodge from a different class (a barbarian with at least four levels of rogue, for
   example), he automatically gains improved uncanny dodge instead.'),
  (6, 1, 'Barbarian', 'Trap Sense (Ex)',
   'Starting at 3rd level, a barbarian has an intuitive sense that alerts him to danger from traps, giving him a +1
   bonus on Reflex saves made to avoid traps and a +1 dodge bonus to AC against attacks made by traps. These bonuses
   rise by +1 every three barbarian levels thereafter (6th, 9th, 12th, 15th, and 18th level). Trap sense bonuses gained
   from multiple classes stack.'),
  (7, 1, 'Barbarian', 'Improved Uncanny Dodge (Ex)',
   'At 5th level and higher, a barbarian can no longer be flanked; he can react to opponents on opposite sides of him as
   easily as he can react to a single attacker. This defense denies a rogue the ability to sneak attack the barbarian by
   flanking him, unless the attacker has at least four more rogue levels than the target has barbarian levels.<br/>
   If a character already has uncanny dodge from a second class, the character automatically gains improved
   uncanny dodge instead, and the levels from the classes that grant uncanny dodge stack to determine the minimum level
   a rogue must be to flank the character.'),
  (8, 1, 'Barbarian', 'Damage Reduction (Ex)',
   'At 7th level, a barbarian gains the ability to shrug off some amount of injury from each blow or attack. Subtract 1
   from the damage the barbarian takes each time he is dealt damage from a weapon or natural attack. At 10th level, and
   every three barbarian levels thereafter (13th, 16th, and 19th level), this damage reduction rises by 1 point. Damage
   reduction can reduce damage to 0 but not below 0.'),
  (9, 1, 'Barbarian', 'Greater Rage (Ex)',
   'At 11th level, a barbarian''s bonuses to Strength and Constitution during his rage each increase to +6, and his
   morale bonus on Will saves increases to +3. The penalty to AC remains at -2.'),
  (10, 1, 'Barbarian', 'Indomitable Will (Ex)',
   'While in a rage, a barbarian of 14th level or higher gains a +4 bonus on Will saves to resist enchantment spells.
   This bonus stacks with all other modifiers, including the morale bonus on Will saves he also receives during his
   rage.'),
  (11, 1, 'Barbarian', 'Tireless Rage (Ex)',
   'At 17th level and higher, a barbarian no longer becomes fatigued at the end of his rage.'),
  (12, 1, 'Barbarian', 'Mighty Rage (Ex)',
   'At 20th level, a barbarian''s bonuses to Strength and Constitution during his rage each increase to +8, and his
   morale bonus on Will saves increases to +4. The penalty to AC remains at -2.');


/*------Bard------*/
INSERT INTO classes
VALUES (2, 'Bard', TRUE, TRUE,
           'It is said that music has a special magic, and the bard proves that saying true. Wandering across the land,
           gathering lore, telling stories, working magic with his music, and living on the gratitude of his audience -
           such is the life of a bard. When chance or opportunity draws them into a conflict, bards serve as diplomats,
           negotiators, messengers, scouts, and spies.<br/><br/>
           A bard''s magic comes from the heart. If his heart is good, a bard brings hope and courage to the downtrodden
           and uses his tricks, music, and magic to thwart the schemes of evildoers. If the nobles of the land are
           corrupt, the good bard is an enemy of the state, cunningly evading capture and raising the spirits of the
           oppressed. But music can spring from an evil heart as well. Evil bards forego blatant violence in favor of
           manipulation, holding sway over the hearts and minds of others and taking what enraptured audiences
           "willingly" give.',
           'Bards see adventures as opportunities to learn. They practice their many skills and abilities, and they
           especially relish the opportunity to enter a long-forgotten tomb, to discover ancient works of magic, to
           decipher old tomes, to travel to strange places, to encounter exotic creatures, and to learn new songs and
           stories. Bards love to accompany heroes (and villains), joining their entourage to witness their deeds
           firsthand - a bard who can tell a marvelous story from personal experience earns renown among his fellows.
           Indeed, after telling so many stories about heroes doing mighty deeds, many bards take these themes to heart
           and assume heroic roles themselves.',
           'A bard brings forth magic from his soul, not from a book. He can cast only a small number of spells, but he
           can do so without selecting or preparing them in advance. His magic emphasizes charms and illusions over the
           more dramatic evocation spells that wizards and sorcerers often use.<br/><br/>
           In addition to spells, a bard works magic with his music and poetry. He can encourage allies, hold his
           audiences rapt, and counter magical effects that rely on speech or sound.<br/><br/>
           Bards have some of the skills that rogues have, although bards are not as focused on skill mastery as rogues
           are. A bard listens to stories as well as telling them, of course, so he has a vast knowledge of local events
           and noteworthy items.',
           'Bards are wanderers, guided by whim and intuition rather than by tradition or law. The spontaneous talent,
           magic, and lifestyle of the bard are incompatible with a lawful alignment.',
           'Bards revere Fharlanghn (god of roads). They sometimes camp near his wayside shrines, hoping to earn some
           coin from the travelers who stop to leave offerings for the god. Many bards, even those who are not elves,
           worship Corellon Larethian, god of the elves and patron of poetry and music. Many good bards are partial to
           Pelor (god of the sun), believing that he watches over them in their travels. Bards given to chaos and
           occasional larceny favor Olidammara (god of thieves). Those who have turned to evil ways are known to worship
           Erythnul (god of slaughter), though few admit to it. In any event, bards spend so much time on the road that,
           while they may be devoted to a deity, they are rarely devoted to any particular temple.',
           'An apprentice bard learns his skills from a single experienced bard, whom he follows and serves until he is
           ready to strike out on his own. Many bards were once young runaways or orphans, befriended by wandering bards
           who became their mentors. Since bards occasionally congregate in informal "colleges," the apprentice bard may
           meet many of the more prominent bards in the area. Still, a bard has no strong allegiance to bards as a
           whole. In fact, some are highly competitive with other bards, jealous of their reputations and defensive
           about their territories.',
           'Bards are commonly human, gnome, elf, or half-elf. Humans take well to the wandering life and adapt easily
           to new lands and customs. Gnomes have a sense of humor and trickery that lends itself to a bardic career.
           Elves are talented in music and magic, so the career of the bard comes naturally to them. A bard''s wandering
           ways suit many half-elves, who often feel like strangers even when at home. Half-orcs, even those raised
           among humans, find themselves ill suited to the demands of a bard''s career. There are no bardic traditions
           among dwarves or halflings, though occasional individuals of these races find teachers to train them in the
           ways of the bard.<br/><br/>
           Bards are exceedingly rare among the savage humanoids, except among centaurs. Centaur bards sometimes train
           the children of humans or other humanoids.',
        'A bard works well with companions of other classes. He often serves as the spokesman of the party, using his
        social skills for teh party''s benefit. In a party without a wizard or sorcerer, the bard contributes his magic.
        In a party without a rogue, he uses his skills. A bard is curious about the ways of more focused or dedicated
        adventurers, so he often tries to pick up pointers from fighters, sorcerers, and rogues.',
        'The bard is perhaps the ultimate generalist. In most adventuring groups, he works best in a supporting role. He
        can''t usually match the stealth of the ranger or the rogue, the spellcasting power of the cleric or the wizard,
        or the combat prowess of the barbarian or the fighter. However, he makes all the other characters better at what
        they do, and he can often fill in for another character when needed. For a typical group of four characters, the
        bard is perhaps the most useful fifth character to consider adding, and he can make a great team leader.',
        'Abilities: Charisma determines how powerful a spell a bard can cast, how many spells he can cast per day, and
        how hard those spells are to resist. Charisma, Dexterity, and Intelligence are important for many of the bard''s
        class skills.<br/><br/>
        Alignment: Any nonlawful.<br/><br/>
        Hit Die: d6.',
        'Appraise, Balance, Bluff, Climb, Concentration, Craft, Decipher Script, Diplomacy, Disguise, Escape Artist,
        Gather Information, Hide, Jump, Knowledge (all skills, taken individually), Listen, Move Silently, Perform,
        Profession, Sense Motive, Sleight of Hand, Speak Language, Spellcraft, Swim, Tumble, Use Magic Device',
        'A bard who becomes lawful in alignment cannot progress in levels as a bard, though he retains all his bard
        abilities.');


/*------Bard Class Statistics------*/
INSERT INTO class_stats
VALUES (21, 2, 'Bard', 1, 0, 0, 0, 0, 0, 2, 2,
        'Weapon and Armor Proficiency, Bardic Music, Bardic Knowledge, Countersong, <i>Fascinate</i>, Inspire Courage +1,
        Bard Spells'),
  (22, 2, 'Bard', 2, 1, 0, 0, 0, 0, 3, 3, ''),
  (23, 2, 'Bard', 3, 2, 0, 0, 0, 1, 3, 3, 'Inspire Competence'),
  (24, 2, 'Bard', 4, 3, 0, 0, 0, 1, 4, 4, ''),
  (25, 2, 'Bard', 5, 3, 0, 0, 0, 1, 4, 4, ''),
  (26, 2, 'Bard', 6, 4, 0, 0, 0, 2, 5, 5, 'Suggestion'),
  (27, 2, 'Bard', 7, 5, 0, 0, 0, 2, 5, 5, ''),
  (28, 2, 'Bard', 8, 6, 1, 0, 0, 2, 6, 6, 'Inspire Courage +2'),
  (29, 2, 'Bard', 9, 6, 1, 0, 0, 3, 6, 6, 'Inspire Greatness'),
  (30, 2, 'Bard', 10, 7, 2, 0, 0, 3, 7, 7, ''),
  (31, 2, 'Bard', 11, 8, 3, 0, 0, 3, 7, 7, ''),
  (32, 2, 'Bard', 12, 9, 4, 0, 0, 4, 8, 8, 'Song of Freedom'),
  (33, 2, 'Bard', 13, 9, 4, 0, 0, 4, 8, 8, ''),
  (34, 2, 'Bard', 14, 10, 5, 0, 0, 4, 9, 9, 'Inspire Courage +3'),
  (35, 2, 'Bard', 15, 11, 6, 1, 0, 5, 9, 9, 'Inspire Heroics'),
  (36, 2, 'Bard', 16, 12, 7, 2, 0, 5, 10, 10, ''),
  (37, 2, 'Bard', 17, 12, 7, 2, 0, 5, 10, 10, ''),
  (38, 2, 'Bard', 18, 13, 8, 3, 0, 6, 11, 11, 'Mass Suggestion'),
  (39, 2, 'Bard', 19, 14, 9, 4, 0, 6, 11, 11, ''),
  (40, 2, 'Bard', 20, 15, 10, 5, 0, 6, 12, 12, 'Inspire Courage +4');


/*------Bard Class Features------*/
INSERT INTO class_features
VALUES (13, 2, 'Bard', 'Weapon and Armor Proficiency',
        'A bard is proficient with all simple weapons, plus the longsword, rapier, sap, short sword, shortbow, and whip.
        Bards are proficient with light armor and shields (except tower shields).<br/>
        Because the somatic components required for bard spells are relatively simple, a bard can cast bard spells while
        wearing light armor without incurring the normal arcane spell failure chance. However, like any other arcane
        spellcaster, a bard wearing medium or heavy armor or using a shield incurs a chance of arcane spell failure if
        the spell in question has a somatic component (most do). A multiclass bard still incurs the normal arcane spell
        failure chance for arcane spells received from other classes.'),
  (14, 2, 'Bard', 'Bard Spells',
   'A bard casts arcane spells (the same type of spells available to sorcerers and wizards), which are drawn from the
   bard spell list. He can cast any spell he knows without preparing it ahead of time, the way a wizard or cleric must.
   Most bard spells have a verbal component (singing, reciting, or music).<br/>
   To learn or cast a spell, a bard must have a Charisma score equal to at least 10 + the spell level (Charisma 10 for
   0-level spells, Charisma 11 for 1st-level spells, and so forth). The Difficulty Class for a saving throw against a
   bard''s spell is 10 + the spell level + the bard''s Charisma modifier.<br/>
   Like other spellcasters, a bard can cast only a certain number of spells of each spell level per day. In addition, he
   receives bonus spells per day if he has a high Charisma score.<br/>
   The bard''s selection of spells is extremely limited. A bard begins play knowing four 0-level spells (also called
   cantrips) of your choice. At most new bard levels, he gains one or more new spells. (Unlike spells per day, the
   number of spells a bard knows is not affected by his Charisma score.)<br/>
   Upon reaching 5th level, and at every third bard level after that (8th, 11th, and so on), a bard can choose to learn
   a new spell in place of one he already knows. In effect, the bard "loses" the old spell in exchange for the new one.
   The new spell''s level must be the same as that of the spell being exchanged, and it must be at least two levels
   lower than the highest-level bard spell the bard can cast. For instance, upon reaching 5th level, a bard could trade
   in a single 0-level spell (two spell levels below the highest-level bard spell he can cast, which is 2nd) for a
   different 0-level spell. At 8th level, he could trade in a single 0-level or 1st-level spell (since he now can cast
   3rd-level bard spells) for a different spell of the same level. A bard may swap only a single spell at any given
   level, and must choose whether or not to swap the spell at the same time that he gains new spells known for the
   level.<br/>
   As noted above, a bard need not prepare his spells in advance. He can cast any spell he knows at any time, assuming
   he has not yet used up his allotment of spells per day for the spell''s level. For example, at 1st level, Gimble the
   bard can cast two 0-level spells per day for being 1st level. However, he knows four 0-level spells: <i>detect
   magic</i>, <i>ghost sound</i>, <i>light</i>, and <i>read magic</i>. Thus, on any given day, he can cast some
   combination of those four spells a total of two times. He does not have to decide ahead of time which spells he''ll
   cast.'),
  (15, 2, 'Bard', 'Bardic Music',
   'Once per day per bard level, a bard can use his song or poetics to produce magical effects on those around him
   (usually including himself, if desired). While these abilities fall under the category of bardic music and the
   descriptions discuss singing or playing instruments, they can all be activated by reciting poetry, chanting, singing
   lyrical songs, singing melodies (fa-la-la, and so forth), whistling, playing an instrument, or playing an instrument
   in combination with some spoken performance. Each ability requires both a minimum bard level and a minimum number of
   ranks in the Perform skill to qualify; if a bard does not have the required number of ranks in at least one Perform
   skill, he does not gain the bardic music ability until he acquires the needed ranks.<br/>
   Starting a bardic music effect is a standard action. Some bardic music abilities require concentration, which means
   the bard must take a standard action each round to maintain the ability. Even while using bardic music that doesn''t
   require concentration, a bard cannot cast spells, activate magic items by spell completion (such as scrolls), or
   activate magic items by magic word (such as wands). Just as for casting a spell with a verbal component, a deaf bard
   has a 20% chance to fail when attempting to use bardic music. If he fails, the attempt still counts against his daily
   limit.'),
  (16, 2, 'Bard', 'Bardic Knowledge',
   'A bard picks up a lot of stray knowledge while wandering the land and learning stories from other bards. He may make
   a special bardic knowledge check with a bonus equal to his bard level + his Intelligence modifier to see whether he
   knows some relevant information about local notable people, legendary items, or noteworthy places. (If the bard has 5
   or more ranks in Knowledge (history), he gains a +2 bonus on this check.)<br/>
   A successful bardic knowledge check will not reveal the powers of a magic item but may give a hint as to its general
   function. A bard may not take 10 or take 20 on this check; this sort of knowledge is essentially random. The DM can
   determine the Difficulty Class of the check.'),
  (17, 2, 'Bard', '<i>Countersong (Su)</i>',
   'A bard with 3 or more ranks in a Perform skill can use his music or poetics to counter magical effects that depend
   on sound (but not spells that simply have verbal components). Each round of the countersong, he makes a Perform
   check. Any creature within 30 feet of the bard (including the bard himself) that is affected by a sonic or
   language-dependent magical attack (such as a <i>sound burst</i> or <i>command</i> spell) may use the bard''s Perform
   check result in place of its saving throw if, after the saving throw is rolled, the Perform check result proves to be
   higher. If a creature within range of the countersong is already under the effect of a noninstantaneous sonic or
   language-dependent magical attack, it gains another saving throw against the effect each round it hears the
   countersong, but it must use the bard''s Perform check result for the save. Countersong has no effect against effects
   that don''t allow saves. The bard may keep up the countersong for 10 rounds.'),
  (18, 2, 'Bard', '<i>Fascinate (Sp)</i>',
   'A bard with 3 or more ranks in a Perform skill can use his music or poetics to cause one or more creatures to become
   fascinated with him. Each creature to be fascinated must be within 90 feet, able to see and hear the bard, and able
   to pay attention to him. The bard must also be able to see the creature. The distraction of a nearby combat or other
   dangers prevents the ability from working. For every three levels a bard attains beyond 1st, he can target one
   additional creature with a single use of this ability (two at 4th level, three at 7th level, and so on).<br/>
   To use the ability, a bard makes a Perform check. His check result is the DC for each affected creature''s Will save
   against the effect. If a creature''s saving throw succeeds, the bard cannot attempt to fascinate that creature again
   for 24 hours. If its saving throw fails, the creature sits quietly and listens to the song, taking no other actions,
   for as long as the bard continues to play and concentrate (up to a maximum of 1 round per bard level). While
   fascinated, a target takes a -4 penalty on skill check made as reactions, such as Listen and Spot checks. Any
   potential threat, such as an ally of the bard approaching the fascinated creature, requires the bard to make another
   Perform check and allows the creature a new saving throw against a DC equal to the new Perform check result. Any
   obvious threat, such as someone drawing a weapon, casting a spell, or aiming a ranged weapon at the target,
   automatically breaks the effect. <i>Fascinate</i> is an enchantment (compulsion), mind-affecting ability.'),
  (19, 2, 'Bard', '<i>Inspire Courage (Su)</i>',
   'A bard with 3 or more ranks in a Perform skill can use song or poetics to inspire courage in his allies (including
   himself), bolstering them against fear and improving their combat abilities. To be affected, an ally must be able to
   hear the bard sing. The effect lasts for as long as the ally hears the bard sing and for 5 rounds thereafter. An
   affected ally receives a +1 morale bonus on saving throws against charm and fear effects and a +1 morale bonus on
   attack and weapon damage rolls. At 8th level, and every six bard levels thereafter, this bonus increases by 1 (+2 at
   8th, +3 at 14th, and +4 at 20th). Inspire courage is a mind-affecting ability.'),
  (20, 2, 'Bard', '<i>Inspire Competence (Su)</i>',
   'A bard of 3rd level or higher with 6 or more ranks in a Perform skill can use his music or poetics to help an ally
   succeed at a task. The ally must be within 30 feet and able to see and hear the bard. The bard must also be able to
   see the ally. Depending on the task that the ally has at hand, the bard may use his bardic music to lift the ally''s
   spirits, to help him or her focus mentally, or in some other way. The ally gets a +2 competence bonus on skill checks
   with a particular skill as long as he or she continues to hear the bard''s music. The DM may rule that certain uses
   of this ability are infeasible - chanting to make a rogue move more quietly, for example, is self-defeating. The
   effect lasts as long as the bard concentrates, up to a maximum of 2 minutes. A bard can''t inspire competence in
   himself. Inspire competence is a mind-affecting ability.'),
  (21, 2, 'Bard', '<i>Suggestion (Sp)</i>',
   'A bard of 6th level or higher with 9 or more ranks in a Perform skill can make a <i>suggestion</i> (as the spell) to
   a creature that he has already fascinated. Using this ability does not break the bard''s concentration on
   the <i>fascinate</i> effect, nor does it allow a second saving throw against the <i>fascinate</i> effect. Making a
   <i>suggestion</i> doesn''t count against a bard''s daily limit on bardic music performances. A Will saving throw (DC
   10 + 1/2 bard''s level + bard''s Charisma modifier) negates the effect. This ability affects only a single creature
   (but see <i>mass suggestion</i>). <i>Suggestion</i> is an enchantment (compulsion), mind-affecting,
   language-dependent ability.'),
  (22, 2, 'Bard', '<i>Inspire Greatness (Su)</i>',
   'A bard of 9th level or higher with 12 or more ranks in a Perform skill can use music or poetics to inspire greatness
   in himself or a single willing ally within 30 feet, grating him or her extra fighting capability. For every three
   levels a bard attains beyond 9th, he can target one additional ally with a single use of this ability (two at 12th
   level, three at 15th, four at 18th). To inspire greatness, a bard must sing and an ally must hear him sing. The
   effect lasts for as long as the ally hears the bard sing and for 5 rounds thereafter. A creature inspired with
   greatness gains 2 bonus Hit Dice (d10s), the commensurate number of temporary hit points (apply the target''s
   Constitution modifier, if any, to these bonus Hit Dice), a +2 competence bonus on attack rolls, and a +1 competence
   bonus on Fortitude saves. The bonus Hit Dice count as regular Hit Dice for determining the effect of spells such as
   <i>sleep</i>. Inspire greatness is a mind-affecting ability.'),
  (23, 2, 'Bard', '<i>Song of Freedom (Sp)</i>',
   'A bard of 12th level or higher with 15 or more ranks in a Perform skill can use music or poetics to create an effect
   equivalent to the <i>break enchantment</i> spell (caster level equals the character''s bard level). Using this
   ability requires 1 minute of uninterrupted concentration and music, and it functions on a single target within 30
   feet. A bard can''t use <i>song of freedom</i> on himself.'),
  (24, 2, 'Bard', '<i>Inspire Heroics (Su)</i>',
   'A bard of 15th level or higher with 18 or more ranks in a Perform skill can use music or poetics to inspire
   tremendous heroism in himself or a single willing ally within 30 feet, allowing that creature to fight bravely even
   against overwhelming odds. For every three bard levels the character attains beyond 15th, he can inspire heroics in
   one additional creature. To inspire heroics, a bard must sing and an ally must hear the bard sing for a full round. A
   creature so inspired gains a +4 morale bonus on saving throws and a +4 dodge bonus to AC. The effect lasts for as
   long as the ally hears the bard sing and for up to 5 rounds thereafter. Inspire heroics is a mind-affecting
   ability.'),
  (25, 2, 'Bard', '<i>Mass Suggestion (Sp)</i>',
   'This ability functions like <i>suggestion</i>, above, except that a bard of 18th level or higher with 21 or more
   ranks in a Perform skill can make the <i>suggestion</i> simultaneously to any number of creatures that he has already
   fascinated. <i>Mass suggestion</i> is an enchantment (compulsion), mind-affecting, language-dependent ability.'),
  (26, 2, 'Bard', '', '');


/*------Bard Spells Per Day------*/
INSERT INTO class_spells_per_day
VALUES (1, 2, 'Bard', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (2, 2, 'Bard', 2, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (3, 2, 'Bard', 3, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (4, 2, 'Bard', 4, 3, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (5, 2, 'Bard', 5, 3, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (6, 2, 'Bard', 6, 3, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (7, 2, 'Bard', 7, 3, 3, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL),
  (8, 2, 'Bard', 8, 3, 3, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL),
  (9, 2, 'Bard', 9, 3, 3, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL),
  (10, 2, 'Bard', 10, 3, 3, 3, 2, 0, NULL, NULL, NULL, NULL, NULL),
  (11, 2, 'Bard', 11, 3, 3, 3, 3, 1, NULL, NULL, NULL, NULL, NULL),
  (12, 2, 'Bard', 12, 3, 3, 3, 3, 2, NULL, NULL, NULL, NULL, NULL),
  (13, 2, 'Bard', 13, 3, 3, 3, 3, 2, 0, NULL, NULL, NULL, NULL),
  (14, 2, 'Bard', 14, 4, 3, 3, 3, 3, 1, NULL, NULL, NULL, NULL),
  (15, 2, 'Bard', 15, 4, 4, 3, 3, 3, 2, NULL, NULL, NULL, NULL),
  (16, 2, 'Bard', 16, 4, 4, 4, 3, 3, 2, 0, NULL, NULL, NULL),
  (17, 2, 'Bard', 17, 4, 4, 4, 4, 3, 3, 1, NULL, NULL, NULL),
  (18, 2, 'Bard', 18, 4, 4, 4, 4, 4, 3, 2, NULL, NULL, NULL),
  (19, 2, 'Bard', 19, 4, 4, 4, 4, 4, 4, 3, NULL, NULL, NULL),
  (20, 2, 'Bard', 20, 4, 4, 4, 4, 4, 4, 4, NULL, NULL, NULL);


/*------Bard Spells Known------*/
INSERT INTO class_spells_known
VALUES (1, 2, 'Bard', 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (2, 2, 'Bard', 2, 5, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (3, 2, 'Bard', 3, 6, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (4, 2, 'Bard', 4, 6, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (5, 2, 'Bard', 5, 6, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (6, 2, 'Bard', 6, 6, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (7, 2, 'Bard', 7, 6, 4, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL),
  (8, 2, 'Bard', 8, 6, 4, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL),
  (9, 2, 'Bard', 9, 6, 4, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL),
  (10, 2, 'Bard', 10, 6, 4, 4, 4, 2, NULL, NULL, NULL, NULL, NULL),
  (11, 2, 'Bard', 11, 6, 4, 4, 4, 3, NULL, NULL, NULL, NULL, NULL),
  (12, 2, 'Bard', 12, 6, 4, 4, 4, 3, NULL, NULL, NULL, NULL, NULL),
  (13, 2, 'Bard', 13, 6, 4, 4, 4, 4, 2, NULL, NULL, NULL, NULL),
  (14, 2, 'Bard', 14, 6, 4, 4, 4, 4, 3, NULL, NULL, NULL, NULL),
  (15, 2, 'Bard', 15, 6, 4, 4, 4, 4, 3, NULL, NULL, NULL, NULL),
  (16, 2, 'Bard', 16, 6, 5, 4, 4, 4, 4, 2, NULL, NULL, NULL),
  (17, 2, 'Bard', 17, 6, 5, 5, 4, 4, 4, 3, NULL, NULL, NULL),
  (18, 2, 'Bard', 18, 6, 5, 5, 5, 4, 4, 3, NULL, NULL, NULL),
  (19, 2, 'Bard', 19, 6, 5, 5, 5, 5, 4, 4, NULL, NULL, NULL),
  (20, 2, 'Bard', 20, 6, 5, 5, 5, 5, 5, 4, NULL, NULL, NULL);


/*------Bardic Knowledge------*/
CREATE TABLE bardic_knowledge (
  id                INT(1) PRIMARY KEY,
  difficulty_class  INT(2),
  type_of_knowledge TEXT,
  examples          TEXT
);


/*------Bardic Knowledge Examples------*/
INSERT INTO bardic_knowledge
VALUES (1, 10, 'Common, known by at least a substantial minority of the local population.',
        'A local mayor''s reputation for drinking; common legends about a powerful place of mystery.'),
  (2, 20, 'Uncommon but available, known by only a few people in the area.',
   'A local priest''s shady past; legends about a powerful magic item.'),
  (3, 25, 'Obscure, known by few, hard to come by.',
   'A knight''s family history; legends about a minor place of mystery or magic item.'),
  (4, 30, 'Extremely obscure, known by very few, possibly forgotten by most who once knew it, possibly known only by
   those who don''t understand the significance of the knowledge.',
   'A mighty wizard''s childhood nickname; the history of a petty magic item.');


/*------Cleric------*/
INSERT INTO classes
VALUES (3, 'Cleric', TRUE, FALSE,
           'The handiwork of the gods is everywhere - in places of natural beauty, in mighty crusades, in soaring
           temples, and in the hearts of worshipers. Like people, gods run the gamut from benevolent to malicious,
           reserved to intrusive, simple to inscrutable. The gods, however, work mostly through intermediaries - their
           clerics. Good clerics heal, protect, and avenge. Evil clerics pillage, destroy, and sabotage. A cleric uses
           the power of his god to make the god''s will manifest. And if a cleric uses his god''s power to improve his
           own lot, that''s to be expected, too.',
           'Ideally, a cleric''s adventures support his god''s causes, at least in a general way. A good cleric, for
           example, helps those in need. If, through noble acts, he can improve the reputation of his god or temple,
           that''s even better. An evil cleric seeks to increase his own power and that of his deity, so that others
           will respect and fear both.<br/><br/>
           Clerics sometimes receive orders, or at least suggestions, from their ecclesiastical superiors, directing
           them to undertake missions for the church. The clerics and their companions are compensated fairly for these
           missions, and the church may be especially generous with the casting of needed spells or divine magic items
           as payment.<br/><br/>
           Of course, clerics are people, too, and they may have any or all of the more common motivations for
           adventuring.',
           'Clerics are masters of divine magic, which is especially good at healing. Even an inexperienced cleric can
           bring people back from the brink of death, and an experienced cleric can bring back people who have crossed
           over that brink.<br/><br/>
           As channelers of divine energy, clerics can affect undead creatures. A good cleric can turn away or even
           destroy undead; an evil cleric can bring such creatures under his control.<br/><br/>
           Clerics have some combat training. They can use simple weapons, and they are trained in the use of armor,
           since armor does not interfere with divine spells the way it does with arcane spells.',
           'Like the gods they serve, clerics can be of any alignment. Because people more readily worship good deities
           than neutral or evil ones, there are more good than evil clerics. Clerics also tend toward law instead of
           chaos, since lawful religions tend to be more structured and better able to recruit and train clerics than
           chaotic ones.<br/><br/>
           Typically, a cleric is the same alignment as his deity, though some clerics are one step away from their
           respective deities in alignment. For example, most clerics of Heironeous, the god of valor (who is lawful
           good), are lawful good, but some are lawful neutral or neutral good. Additionally, a cleric may not be
           neutral (that is, neutral on both the good-evil axis and the lawful-chaotic axis) unless his deity is also
           neutral.',
           'Every reasonably well-known deity has clerics devoted to him or her, so clerics can be of any religion. The
           deity most commonly worshiped by human clerics in civilized lands is Pelor (god of the sun). The majority of
           nonhuman clerics are devoted to the chief god of the appropriate racial pantheon. Most clerics are officially
           ordained members of religious organizations, commonly called churches. Each has sworn to uphold the ideals of
           his church.<br/><br/>
           Some clerics devote themselves not to a god but to a cause or a source of divine power. These characters
           wield magic the way clerics devoted to individual gods do, but they are not associated with any religious
           institution or any particular practice of worship. A cleric devoted to good and law, for example, may be on
           friendly terms with the clerics of lawful and good deities and may extol the virtues of a good and lawful
           life, but he is not a functionary in a church hierarchy.',
           'Most clerics join their churches as young adults, though some are devoted to a god''s service from a young
           age, and a few feel the call later in life. While some clerics are tightly bound to their church''s
           activities on a daily basis, others have more freedom to conduct their lives as they please, so long as they
           do so in accordance with their god''s wishes.<br/><br/>
           Clerics of a given religion are all supposed to get along, though schisms within a church are often more
           bitter than conflicts between religions. Clerics who share some basic ideals, such as goodness or lawfulness,
           may find common cause with each other and see themselves as part of an order or body that supersedes any
           given religion. Clerics of opposed goals, however, are sworn enemies. In civilized lands, open warfare
           between religions occurs only during civil wars and similar social upheavals, but vicious politicking between
           opposing churches is common.',
           'All the common races are represented in this class, since the need for religion and divine magic is
           universal. The clerics of most races, however, are too focused on their religious duties to undertake an
           adventurer''s life. Crusading, adventuring clerics most often come from the human and dwarf races.<br/><br/>
           Among the savage humanoids, clerics are less common. The exception is troglodytes, who take well to divine
           magic and are often led by priests who make a practice of sacrificing and devouring captives.',
        'In an adventuring party, the cleric is everybody''s friend and often the glue that holds the party together.
        As the one who can channel divine energy, a cleric is a capable healer, and adventurers of every class
        appreciate being put back together after they''ve taken some hard knocks. Clerics sometimes clash with
        druids, since druids represent an older, more primal relationship between the mortal and the divine. Mostly,
        though, the religion of a cleric determines how he gets along with others. A cleric of Olidammara (god of
        thieves) gets along fine with rogues and ne''er-do-wells, for example, while a cleric of Heironeous (god of
        valor) rankles at such company.',
        'The cleric serves as a typical group''s primary healer, diviner, and defensive specialist. He can hold his
        own in a fight but usually isn''t well served by charging to the front of combat. The cleric''s domains and
        spell selection can greatly affect his role as well.',
        'Abilities: Wisdom determines how powerful a spell a cleric can cast, how many spells he can cast per day, and
        how hard those spells are to resist. A high Constitution score improves a Cleric''s hit points, and a high
        Charisma score improves his ability to turn undead.<br/>
        Alignment: A cleric''s alignment must be within one step away of his deity''s (that is, it may be one step away
        on either the lawful-chaotic axis or the good-evil axis, but not both). Exceptions are the clerics of St.
        Cuthbert (a lawful neutral deity) who may choose only between lawful good and lawful neutral for their
        alignment. A cleric may not be neutral unless his deity''s alignment is also neutral.<br/>
        Hit Die: d8.',
        'Concentration, Craft, Diplomacy, Heal, Knowledge (arcana), Knowledge (history), Knowledge (religion),
        Knowledge (the planes), Profession, Spellcraft.<br/>
        A cleric who chooses the Animal or Plant domain adds Knowledge (nature) to the class skills listed above.<br/>
        A cleric who chooses the Knowledge domain adds all Knowledge skills to the list.<br/>
        A cleric who chooses the Travel domain adds Survival to the list.<br/>
        A cleric who chooses the Trickery domain adds Bluff, Disguise, and Hide to the list.<br/>',
        'A cleric who grossly violates the code of conduct required by his god (generally by acting in ways opposed to
        the god''s alignment or purposes) loses all spells and class features, except for armor and shield proficiencies and
        proficiency with simple weapons. He cannot thereafter gain levels as a cleric of that god until he atones.');


/*------Cleric Class Statistics------*/
INSERT INTO class_stats
VALUES (41, 3, 'Cleric', 1, 0, 0, 0, 0, 2, 0, 2, 'Weapon and Armor Proficiency, Aura, Cleric Spells, Domain Spells,
  Spontaneous Casting, Turn or Rebuke Undead, Bonus Languages'),
  (42, 3, 'Cleric', 2, 1, 0, 0, 0, 3, 0, 3, ''),
  (43, 3, 'Cleric', 3, 2, 0, 0, 0, 3, 1, 3, ''),
  (44, 3, 'Cleric', 4, 3, 0, 0, 0, 4, 1, 4, ''),
  (45, 3, 'Cleric', 5, 3, 0, 0, 0, 4, 1, 4, ''),
  (46, 3, 'Cleric', 6, 4, 0, 0, 0, 5, 2, 5, ''),
  (47, 3, 'Cleric', 7, 5, 0, 0, 0, 5, 2, 5, ''),
  (48, 3, 'Cleric', 8, 6, 1, 0, 0, 6, 2, 6, ''),
  (49, 3, 'Cleric', 9, 6, 1, 0, 0, 6, 3, 6, ''),
  (50, 3, 'Cleric', 10, 7, 2, 0, 0, 7, 3, 7, ''),
  (51, 3, 'Cleric', 11, 8, 3, 0, 0, 7, 3, 7, ''),
  (52, 3, 'Cleric', 12, 9, 4, 0, 0, 8, 4, 8, ''),
  (53, 3, 'Cleric', 13, 9, 4, 0, 0, 8, 4, 8, ''),
  (54, 3, 'Cleric', 14, 10, 5, 0, 0, 9, 4, 9, ''),
  (55, 3, 'Cleric', 15, 11, 6, 1, 0, 9, 5, 9, ''),
  (56, 3, 'Cleric', 16, 12, 7, 2, 0, 10, 5, 10, ''),
  (57, 3, 'Cleric', 17, 12, 7, 2, 0, 10, 5, 10, ''),
  (58, 3, 'Cleric', 18, 13, 8, 3, 0, 11, 6, 11, ''),
  (59, 3, 'Cleric', 19, 14, 9, 4, 0, 11, 6, 11, ''),
  (60, 3, 'Cleric', 20, 15, 10, 5, 0, 12, 6, 12, '');


/*------Cleric Class Features------*/
INSERT INTO class_features
VALUES (27, 3, 'Cleric', 'Weapon and Armor Proficiency',
        'Clerics are proficient with all simple weapons, with all types of armor (light, medium, and heavy), and with
        shields (except tower shields).<br/>
        Every deity has a favored weapon, and his or her clerics consider it a point of pride to wield that weapon. A
        cleric who chooses the War domain receives the Weapon Focus feat related to that weapon as a bonus feat. He also
        receives the appropriate Martial Weapon Proficiency feat as a bonus feat, if the weapon falls into that
        category.'),
  (28, 3, 'Cleric', 'Aura (Ex)',
   'A cleric of a chaotic, evil, good, or lawful deity has a particularly powerful aura corresponding to the deity''s
   alignment. Clerics who don''t worship a specific deity but choose the Chaotic, Evil, Good, or Lawful domain have a
   similarly powerful aura of the corresponding alignment.'),
  (29, 3, 'Cleric', 'Cleric Spells',
   'A cleric casts divine spells (the same type of spells available to the druid, paladin, and ranger), which are drawn
   from the cleric spell list. However, his alignment may restrict him from casting certain spells opposed to his moral
   or ethical beliefs. A cleric must choose and prepare his spells in advance.<br/>
   To prepare or cast a spell, a cleric must have a Wisdom score equal to at least 10 + the spell level (Wisdom 10 for
   0-level spells, Wisdom 11 for 1st-level spells, and so forth). The Difficulty Class for a saving throw against a
   cleric''s spell is 10 + the spell level + the cleric''s Wisdom modifier.<br/>
   Like other spellcasters, a cleric can cast only a certain number of spells of each spell level per day. In addition,
   he receives bonus spells per day if he has a high Wisdom score. A cleric also gets one domain spell of each spell
   level he can cast, starting at 1st level. When a cleric prepares a spell in a domain spell slot, it must come from
   one of his two domains.<br/>
   Clerics do not acquire their spells from books or scrolls, nor do they prepare them through study. Instead, they
   meditate or pray for their spells, receiving them through their own strength of faith or as divine inspiration. Each
   cleric must choose a time at which he must spend 1 hour each day in quiet contemplation or supplication to regain his
   daily allotment of spells. Typically, this hour is at dawn or noon for good clerics and at dusk or midnight for evil
   ones. Time spent resting has no effect on whether a cleric can prepare spells. A cleric may prepare and cast any
   spell on the cleric spell list, provided that he can cast spells of that level, but he must choose which spells to
   prepare during his daily meditation.'),
  (30, 3, 'Cleric', 'Deity, Domains, and Domain Spells',
   'Choose a deity for your cleric. The cleric''s deity influences his alignment, what magic he can perform, his values,
   and how others see him. You may also choose for your cleric to have no deity.<br/>
   If the typical worshipers of a deity include the members of a race, a cleric must be of the indicated race to choose
   that deity as his own. (The god may have occasional worshipers of other races, but not clerics.)<br/>
   When you have chosen an alignment and a deity for your cleric, choose two domains from among those for the deity.
   While the clerics of a particular religion are united in their reverence for their deity, each cleric emphasizes
   different aspects of the deity''s interests. You can select an alignment domain (Chaos, Evil, Good, or Law) for your
   cleric only if his alignment matches that domain.<br/>
   If your cleric is not devoted to a particular deity, you still select two domains to represent his spiritual
   inclinations and abilities. The restriction on alignment domains still applies.<br/>
   Each domain gives your cleric access to a domain spell at each spell level he can cast, from 1st on up, as well as a
   granted power. Your cleric gets the granted powers of both the domains selected. With access to two domain spells at
   a given spell level, a cleric prepares one or the other each day in his domain spell slot. If a domain spell is not
   on the cleric spell list, a cleric can prepare it only in his domain spell slot.<br/>
   For example, Jozan is a 1st-level cleric of Pelor. He chooses Good and Healing (from Pelor''s domain options) as his
   two domains. He gets the granted powers of both his selected domains. The Good domain allows him to cast all spells
   with the good descriptor at +1 caster level (as if he were one level higher as a cleric) as a granted power, and it
   gives him access to <i>protection from evil</i> as a 1st-level domain spell. The Healing domain allows him to cast
   all healing subschool spells of the conjuration school at +1 caster level as a granted power, and it gives him access
   to <i>cure light wounds</i> as a 1st-level domain spell. When Jozan prepares his spells, he gets one 1st-level spell
   for being a 1st-level cleric, one bonus 1st-level spell for having a high Wisdom score (15), and one 1st-level domain
   spell. The domain spell must be one of the two to which he has access, either <i>protection from evil</i> or <i>cure
   light wounds</i>.'),
  (31, 3, 'Cleric', 'Spontaneous Casting',
   'A good cleric (or a neutral cleric of a good deity) can channel stored energy into healing spells that the cleric
   did not prepare ahead of time. The cleric can "lose" any prepared spell that is not a domain spell in order to cast
   any <i>cure</i> spell of the same spell level or lower (a <i>cure</i> spell is any spell with "cure" in its name).
   For example, a good cleric who has prepared <i>command</i> (a 1st-level spell) may lose <i>command</i> in order to
   cast <i>cure light wounds</i> (also a 1st-level spell). Clerics of good deities can cast <i>cure</i> spells in this
   way because they are especially proficient at wielding positive energy.<br/>
   An evil cleric (or a neutral cleric of an evil deity), on the other hand, can''t convert prepared spells to
   <i>cure</i> spells but can convert them to <i>inflict</i> spells (an <i>inflict</i> spell is one with "inflict" in
   its name). Such clerics are especially proficient at wielding negative energy.<br/>
   A cleric who is neither good nor evil and whose deity is neither good nor evil can convert spells to either
   <i>cure</i> spells or <i>inflict</i> spells (player''s choice), depending on whether the cleric is more proficient at
   wielding positive or negative energy. Once the player makes this choice, it cannot be reversed. This choice also
   determines whether the cleric turns or commands undead. <i>Exceptions</i>: All lawful neutral clerics of
   Wee Jas (goddess of death and magic) convert prepared spells to <i>inflict</i> spells, not <i>cure</i> spells. All
   clerics of St. Cuthbert (god of retribution) and all nonevil clerics of Obad-Hai (god of nature) convert prepared
   spells to <i>cure</i> spells, not <i>inflict</i> spells.'),
  (32, 3, 'Cleric', 'Chaotic, Evil, Good, and Lawful Spells',
   'A cleric can''t cast spells of an alignment opposed to his own or his deity''s (if he has one). For example, a good
   cleric (or a neutral cleric of a good deity) cannot cast evil spells. Spells associated with particular alignments
   are indicated by the chaos, evil, good, and law descriptors in their spell descriptions.'),
  (33, 3, 'Cleric', 'Turn or Rebuke Undead (Su)',
   'Any cleric, regardless of alignment, has teh power to affect undead creatures (such as skeletons, zombies, ghosts,
   and vampires) by channeling the power of his faith through his holy (or unholy) symbol.<br/>
   A good cleric (or a neutral cleric who worships a good deity) can turn or destroy undead creatures. An evil cleric
   (or a neutral cleric who worships an evil deity) instead rebukes or commands such creatures, forcing them to cower in
   awe of his power. If your character is a neutral cleric of a neutral deity, you must choose whether his turning
   ability functions as that of a good cleric or an evil cleric. Once you make this choice, it cannot be reversed. This
   decision also determines whether the cleric can cast spontaneous <i>cure</i> or <i>inflict</i> spells.
   <i>Exceptions</i>: All lawful neutral clerics of Wee Jas (goddess of death and magic) rebuke or command undead. All
   clerics of St. Cuthbert (god of retribution) and all nonevil clerics of Obad-Hai (god of nature) turn or destroy
   undead.<br/>
   A cleric may attempt to turn undead a number of times per day equal to 3 + his Charisma modifier. A cleric with 5 or
   more ranks in Knowledge (religion) gets a +2 bonus on turning checks against undead.'),
  (34, 3, 'Cleric', 'Bonus Languages',
   'A cleric''s bonus language options include Celestial, Abyssal, and Infernal (the languages of good, chaotic evil,
   and lawful evil outsiders, respectively). These choices are in addition to the bonus languages available to the
   character because of his race.');


/*------Cleric Spells Per Day------*/
INSERT INTO class_spells_per_day
VALUES (21, 3, 'Cleric', 1, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (22, 3, 'Cleric', 2, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (23, 3, 'Cleric', 3, 4, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (24, 3, 'Cleric', 4, 5, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (25, 3, 'Cleric', 5, 5, 4, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL),
  (26, 3, 'Cleric', 6, 5, 4, 4, 3, NULL, NULL, NULL, NULL, NULL, NULL),
  (27, 3, 'Cleric', 7, 6, 5, 4, 3, 2, NULL, NULL, NULL, NULL, NULL),
  (28, 3, 'Cleric', 8, 6, 5, 4, 4, 3, NULL, NULL, NULL, NULL, NULL),
  (29, 3, 'Cleric', 9, 6, 5, 5, 4, 3, 2, NULL, NULL, NULL, NULL),
  (30, 3, 'Cleric', 10, 6, 5, 5, 4, 4, 3, NULL, NULL, NULL, NULL),
  (31, 3, 'Cleric', 11, 6, 6, 5, 5, 4, 3, 2, NULL, NULL, NULL),
  (32, 3, 'Cleric', 12, 6, 6, 5, 5, 4, 4, 3, NULL, NULL, NULL),
  (33, 3, 'Cleric', 13, 6, 6, 6, 5, 5, 4, 3, 2, NULL, NULL),
  (34, 3, 'Cleric', 14, 6, 6, 6, 5, 5, 4, 4, 3, NULL, NULL),
  (35, 3, 'Cleric', 15, 6, 6, 6, 6, 5, 5, 4, 3, 2, NULL),
  (36, 3, 'Cleric', 16, 6, 6, 6, 6, 5, 5, 4, 4, 3, NULL),
  (37, 3, 'Cleric', 17, 6, 6, 6, 6, 6, 5, 5, 4, 3, 2),
  (38, 3, 'Cleric', 18, 6, 6, 6, 6, 6, 5, 5, 4, 4, 3),
  (39, 3, 'Cleric', 19, 6, 6, 6, 6, 6, 6, 5, 5, 4, 4),
  (40, 3, 'Cleric', 20, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5);


/*------Druid------*/
INSERT INTO classes
VALUES (4, 'Druid', TRUE, FALSE,
           'The fury of a storm, the gentle strength of the morning sun, the cunning of the fox, the power of the bear -
           all these and more are at the druid''s command. The druid, however, claims no mastery over nature. That
           claim, she says, is the empty boast of a city dweller. The druid gains her power not by ruling nature but by
           being at one with it. To trespassers in a druid''s sacred grove, and to those who feel her wrath, the
           distinction is overly fine.',
           'Druids adventure to gain knowledge (especially about animals and plants unfamiliar to them) and power.
           Sometimes their superiors call on their services. Druids may also bring their power to bear against those who
           threaten what they love, which more often includes ancient stands of trees or trackless mountains than
           people. While druids accept that which is horrific or cruel in nature, they hate that which is unnatural,
           including aberrations (such as beholders and carrion crawlers) and undead (such as zombies and vampires).
           Druids sometimes lead raids against such creatures, especially when they encroach on the druid''s
           territory.',
           'Druids cast divine spells much the same way clerics do, though most get their spells from the power of
           nature rather than from deities. Their spells are oriented toward nature and animals. In addition to spells,
           druids gain an increasing array of magical powers, including the ability to take the shapes of animals, as
           they advance in level.<br/>
           The armor of a druid is restricted by traditional oaths to the items noted in Weapon and Armor Proficiency.
           All other armor is prohibited. Though a druid could learn to wear full plate, putting it on would violate her
           oath and suppress her druidic powers.<br/>
           Druids avoid carrying much worked metal with them because it interferes with the pure and primal nature that
           they attempt to embody.',
           'Druids, in keeping with nature''s ultimate indifference, must maintain at least some measure of dispassion.
           As such, they must be neutral on at least one alignment axis (chaotic-lawful or good-evil), if not both. Just
           as nature encompasses such dichotomies as life and death, beauty and horror, and peace and violence, so two
           druids can manifest different or even opposite alignments (neutral good and neutral evil, for instance) and
           still be part of the druidic tradition.',
           'A druid reveres nature above all. She gains her magical powers either from the force of nature itself or
           from a nature deity. The typical druid pursues a mystic spirituality of transcendent union with nature rather
           than devoting herself to a divine entity. Still, some druids revere or at least respect either Obad-Hai (god
           of nature) or Ehlonna (goddess of the woodlands).',
           'Though their organization is invisible to most outsiders, who consider druids to be loners, druids are
           actually part of a society that spans the land, ignoring political borders. A prospective druid is inducted
           into this society through secret rituals involving tests that not all survive. Only after achieving some
           level of competence is the druid allowed to strike out on her own.<br/>
           All druids are nominally members of this druidic society, though some individuals are so isolated that they
           have never seen any high-ranking members of the society or participated in druidic gatherings. All druids
           recognize each other as brothers and sisters. Like true creatures of the wilderness, however, druids
           sometimes compete with or even prey on each other.<br/>
           A druid may be expected to perform services for higher-ranking druids, though proper payment is tendered for
           such assignments. Likewise, a lower-ranking druid may appeal for aid from her higher-ranking comrades in
           exchange for a fair price in coin or service.<br/>
           Druids may live in small towns, but they always spend a good portion of their time in wild areas. Even large
           cities surrounded by cultivated land as far as the eye can see often have druid groves nearby - small, wild
           refuges where druids live and which they protect fiercely. Near coastal cities, such refuges may be nearby
           islands, where the druids can find the isolation they need.',
           'Elves and gnomes have an affinity for natural lands and often become druids. Humans and half-elves also
           frequently adopt this path, and druids are particularly common among savage humans. Dwarves, halflings, and
           half-orcs are rarely druids.<br/>
           Few from among the brutal humanoids are inducted into druidic society, though gnolls have a fair contingent
           of evil druids among them. Gnoll druids are accepted, though perhaps not welcomed, by druids of other
           races.',
        'The druid shares with ranger and many barbarians a reverence for nature and a familiarity with natural lands.
        She doesn''t much understand the urban mannerisms typical of a rogue, and she finds arcane magic disruptive and
        slightly distasteful. The typical druid also dislikes the paladin''s devotion to abstract ideals instead of "the
        real world." Druids, however, are nothing if not accepting of diversity, and they take little offense at other
        characters, even those very different from them.',
        'The druid enjoys extraordinary versatility. Though she lacks the sheer healing power of the cleric, she makes
        up for it with additional offensive power, thanks to her spell selection and wild shape ability. A druid backed
        up by another secondary healer (such as a paladin) can prove extremely valuable to a group of adventurers. Her
        animal companion also provides valuable melee combat support.',
        'Abilities: Wisdom determines how powerful a spell a druid can cast, how many spells she can cast per day, and
        how hard those spells are to resist. To cast a spell, a druid must have a Wisdom score of 10 + the spell''s
        level. A druid gets bonus spells based on Wisdom. The Difficulty Class of a saving throw against a druid''s
        spell is 10 + the spell''s level + the druid''s Wisdom modifier.<br/>
        Since a druid wears only light or medium armor, a high Dexterity score greatly improves her defensive
        ability.<br/>
        Alignment: Neutral good, lawful neutral, neutral, chaotic neutral, or neutral evil.<br/>
        Hit Die: d8.',
        'Concentration, Craft, Diplomacy, Heal, Knowledge (nature), Listen, Profession, Ride, Spellcraft, Spot,
        Survival, Swim',
        'A druid who ceases to revere nature, changes to a prohibited alignment, or teaches the Druidic language to a
        nondruid loses all spells and druid abilities (including her animal companion, but not including weapon, armor,
        and shield proficiencies). She cannot thereafter gain levels as a druid until she atones.');


/*------Druid Class Statistics------*/
INSERT INTO class_stats
VALUES (61, 4, 'Druid', 1, 0, 0, 0, 0, 2, 0, 2, 'Weapon and Armor Proficiency, Druid Spells, Spontaneous Casting, Bonus
        Languages, Animal Companion, Nature Sense, Wild Empathy'),
  (62, 4, 'Druid', 2, 1, 0, 0, 0, 3, 0, 3, 'Woodland Stride'),
  (63, 4, 'Druid', 3, 2, 0, 0, 0, 3, 1, 3, 'Trackless Step'),
  (64, 4, 'Druid', 4, 3, 0, 0, 0, 4, 1, 4, 'Resist Nature''s Lure'),
  (65, 4, 'Druid', 5, 3, 0, 0, 0, 4, 1, 4, 'Wild Shape 1/day'),
  (66, 4, 'Druid', 6, 4, 0, 0, 0, 5, 2, 5, 'Wild Shape 2/day'),
  (67, 4, 'Druid', 7, 5, 0, 0, 0, 5, 2, 5, 'Wild Shape 3/day'),
  (68, 4, 'Druid', 8, 6, 1, 0, 0, 6, 2, 6, 'Wild Shape (Large)'),
  (69, 4, 'Druid', 9, 6, 1, 0, 0, 6, 3, 6, 'Venom Immunity'),
  (70, 4, 'Druid', 10, 7, 2, 1, 1, 7, 3, 7, 'Wild Shape 4/day'),
  (71, 4, 'Druid', 11, 8, 3, 0, 0, 7, 3, 7, 'Wild Shape (Tiny)'),
  (72, 4, 'Druid', 12, 9, 4, 0, 0, 8, 4, 8, 'Wild Shape (plant)'),
  (73, 4, 'Druid', 13, 9, 4, 0, 0, 8, 4, 8, 'A Thousand Faces'),
  (74, 4, 'Druid', 14, 10, 5, 0, 0, 9, 4, 9, 'Wild Shape 5/day'),
  (75, 4, 'Druid', 15, 11, 6, 1, 0, 9, 5, 9, 'Timeless Body, Wild Shape (Huge)'),
  (76, 4, 'Druid', 16, 12, 7, 2, 0, 10, 5, 10, 'Wild Shape (elemental 1/day)'),
  (77, 4, 'Druid', 17, 12, 7, 2, 0, 10, 5, 10, ''),
  (78, 4, 'Druid', 18, 13, 8, 3, 0, 11, 6, 11, 'Wild Shape 6/day (elemental 2/day)'),
  (79, 4, 'Druid', 19, 14, 9, 4, 0, 11, 6, 11, ''),
  (80, 4, 'Druid', 20, 15, 10, 5, 0, 12, 6, 12, 'Wild Shape (elemental 3/day, Huge elemental)');


/*------Druid Class Features------*/
INSERT INTO class_features
VALUES (35, 4, 'Druid', 'Weapon and Armor Proficiency',
        'Druids are proficient with the following weapons: club, dagger, dart, quarterstaff, scimitar, sickle,
        shortspear, sling, and spear. They are also proficient with all natural attacks (claw, bite, and so forth) of
        any form they assume with wild shape. Druids are proficient with light and medium armor but are prohibited from
        wearing metal armor; thus they may wear only padded, leather, or hide armor. (A druid may also wear wooden armor
        that has been altered by the <i>ironwood</i> spell so that it functions as if it were steel.) Druids are
        proficient with shields (except tower shields) but must use only wooden ones.<br/>
        A druid who wears prohibited armor or carries a prohibited shield is unable to cast druid spells or use any of
        her supernatural or spell-like class abilities while doing so and for 24 hours thereafter.'),
  (36, 4, 'Druid', 'Druid Spells',
   'A druid casts divine spells (the same type of spells available to the cleric, paladin, and ranger), which are drawn
   from the druid spell list. Her alignment may restrict her from casting certain spells opposed to her moral or ethical
   beliefs. A druid must choose and prepare her spells in advance.<br/>
   To prepare or cast a spell, the druid must have a Wisdom score equal to at least 10 + the spell level (Wisdom 10 for
   0-level spells, Wisdom 11 for 1st-level spells, and so forth). The Difficulty Class for a saving throw against a
   druid''s spell is 10 + the spell level + the druid''s Wisdom modifier.<br/>
   Like other spellcasters, a druid can cast only a certain number of spells of each spell level per day. In addition,
   she receives bonus spells per day if she has a high Wisdom score. She does not have access to any domain spells or
   granted powers as a cleric does.<br/>
   A druid prepares and casts spells the way a cleric does, though she cannot lose a prepared spell to cast a
   <i>cure</i> spell in its place. A druid may prepare and cast any spell on the druid spell list, provided that she can
   cast spells of that level, but she must choose which spells to prepare during her daily meditation.'),
  (37, 4, 'Druid', 'Spontaneous Casting',
   'A druid can channel stored spell energy into summoning spells that she hasn''t prepared ahead of time. She can
   "lose" a prepared spell in order to cast any <i>summon nature''s ally</i> spell of the same level or lower. For
   example, a druid who has prepared <i>repel vermin</i> (a 4th-level spell) may lose <i>repel vermin</i> in order to
   cast <i>summon nature''s ally IV</i> (also a 4th-level spell).'),
  (38, 4, 'Druid', 'Chaotic, Evil, Good, and Lawful Spells',
   'A druid can''t cast spells of an alignment opposed to her own or her deity''s (if she has one). For example, a
   neutral good druid cannot cast evil spells. Spells associated with particular alignments are indicated by the chaos,
   evil, good, and law descriptors in their spell descriptions.'),
  (39, 4, 'Druid', 'Bonus Languages',
   'A druid''s bonus language options include Sylvan, the language of woodland creatures. This choice is in addition to
   the bonus languages available to the character because of her race.<br/>
   A druid also knows Druidic, a secret language known only to druids, which she learns upon becoming a 1st-level druid.
   Druidic is a free language for a druid; that is, she knows it in addition to her regular allotment of languages and
   it doesn''t take up a language slot. Druids are forbidden to teach this language to nondruids. Druidic has its own
   alphabet.'),
  (40, 4, 'Druid', 'Animal Companion (Ex)',
   'A druid may begin play with an animal companion selected from the following list: badger, camel, dire rat, dog,
   riding dog, eagle, hawk, horse (light or heavy), owl, pony, snake (Small or Medium viper), or wolf. If the DM''s
   campaign takes place wholly or partly in an aquatic environment, the DM may add the following creatures to the
   druid''s list of options: porpoise, Medium shark, and squid. This animal is a loyal companion that accompanies the
   druid on her adventures as appropriate for its kind.<br/>
   A 1st-level druid''s companion is completely typical for its kind, except as noted in the Animal Companion section.
   As a druid advances in level, the animal''s power increases as shown in that section.<br/>
   If a druid releases her companion from service, she may gain a new one by performing a ceremony requiring 24
   uninterrupted hours of prayer. This ceremony can also replace an animal companion that has perished.<br/>
   A druid of 4th level or higher may select from alternative lists of animals. Should she select an animal companion
   from one of these alternative lists, the creature gains abilities as if the character''s druid level were lower than
   it actually is. Subtract the value indicated in the appropriate section from the character''s druid level and compare
   the result with the druid level entry to determine the animal companion''s powers. (If the adjustment would reduce
   the druid''s effective level to 0 or lower, she can''t have that animal as a companion.) For example, a 6th-level
   druid could select a leopard as an animal companion. The leopard would have characteristics and special abilities as
   if the druid were 3rd level (taking into account the -3 adjustment) instead of 6th level.'),
  (41, 4, 'Druid', 'Nature Sense (Ex)',
   'A druid gains a +2 bonus on Knowledge (nature) and Survival checks.'),
  (42, 4, 'Druid', 'Wild Empathy (Ex)',
   'A druid can use body language, vocalizations, and demeanor to improve the attitude of an animal (such as a bear or
   monitor lizard). This ability functions just like a Diplomacy check made to improve the attitude of a person. The
   druid rolls 1d20 and adds her druid level and her Charisma modifier to determine the wild empathy check result. The
   typical domestic animal has a starting attitude of indifferent, while wild animals are usually unfriendly.<br/>
   To use wild empathy, the druid and the animal must be able to study each other, which means that they must be within
   30 feet of one another under normal conditions. Generally, influencing an animal in this way takes 1 minute but, as
   with influencing people, it might take more or less time.<br/>
   A druid can also use this ability to influence a magical beast with an Intelligence score of 1 or 2 (such as a
   basilisk or a girallon), but she takes a -4 penalty on the check.'),
  (43, 4, 'Druid', 'Woodland Stride (Ex)',
   'Starting at 2nd level, a druid may move through any sort of undergrowth (such as natural thorns, briars, overgrown
   areas, and similar terrain) at her normal speed and without taking damage or suffering any other impairment. However,
   thorns, briars, and overgrown areas that have been magically manipulated to impede motion still affect her.'),
  (44, 4, 'Druid', 'Trackless Step (Ex)',
   'Starting at 3rd level, a druid leaves no trail in natural surroundings and cannot be tracked. She may choose to
   leave a trail if so desired.'),
  (45, 4, 'Druid', 'Resist Nature''s Lure (Ex)',
   'Starting at 4th level, a druid gains a +4 bonus on saving throws against the spell-like abilities of fey (such as
   dryads, pixies, and sprites).'),
  (46, 4, 'Druid', 'Wild Shape (Su)',
   'At 5th level, a druid gains the ability to turn herself into any Small or Medium animal and back again once per day.
   Her options for new forms include all creatures with the animal type. This ability functions like the
   <i>polymorph</i> spell, except as noted here. The effect lasts for 1 hour per druid level, or until she changes back.
   Changing for (to animal or back) is a standard action and doesn''t provoke an attack of opportunity.<br/>
   The form chosen must be that of an animal the druid is familiar with. For example, a druid who has never been outside
   a temperate forest could not become a polar bear.<br/>
   A druid loses her ability to speak while in animal form because she is limited to the sounds that a normal, untrained
   animal can make, but she can communicate normally with other animals of the same general grouping as her new form.
   (The normal sound a wild parrot makes is a squawk, so changing to this form does not permit speech.)<br/>
   A druid can use this ability more times per day at 6th, 7th, 10th, 14th, and 18th level. In addition, she gains the
   ability to take the shape of a Large animal at 8th level, a Tiny animal at 11th level, and a Huge animal at 15th
   level. The new form''s Hit DIce can''t exceed the character''s druid level. For instance, a druid can''t take the
   form of a dire bear (a Large creature that always has at least 12 HD) until 12th level, even though she can begin
   taking Large forms at 8th level.<br/>
   At 12th level, a druid becomes able to use wild shape to change into a plant creature, such as a shambling mound,
   with the same size restrictions as for animal forms. (A druid can''t use this ability to take the form of a plant
   that isn''t a creature, such as a tree or a rose bush.)<br/>
   At 16th level, a druid becomes able to use wild shape to change into a Small, Medium, or Large elemental (air, earth,
   fire, or water) once per day. These elemental forms are in addition to her normal wild shape usage. In addition to
   the normal effects of wild shape, the druid gains all the elemental''s extraordinary, supernatural, and spell-like
   abilities. She also gains teh elemental''s feats for as long as she maintains the wild shape, but she retains her own
   creature type (humanoid, in most cases).<br/>
   At 18th level, a druid becomes able to assume elemental form twice per day, and at 20th level she can do so three
   times per day. At 20th level, a druid may use this wild shape ability to change into a Huge elemental.'),
  (47, 4, 'Druid', 'Venom Immunity (Ex)',
   'At 9th level, a druid gains immunity to all poisons.'),
  (48, 4, 'Druid', 'A Thousand Faces (Su)',
   ' At 13th level, a druid gains the ability to change her appearance at will, as if using the <i>alter self</i> spell,
   but only while in her normal form.'),
  (49, 4, 'Druid', 'Timeless Body (Ex)',
   'After attaining 15th level, a druid no longer takes ability score penalties for aging and cannot be magically aged.
   Any penalties she may have already incurred, however, remain in place. Bonuses still accrue, and the druid still dies
   of old age when her time is up.');


/*------Druid Spells Per Day------*/
INSERT INTO class_spells_per_day
VALUES (41, 4, 'Druid', 1, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (42, 4, 'Druid', 2, 4, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (43, 4, 'Druid', 3, 4, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (44, 4, 'Druid', 4, 5, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (45, 4, 'Druid', 5, 5, 3, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL),
  (46, 4, 'Druid', 6, 5, 3, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL),
  (47, 4, 'Druid', 7, 6, 4, 3, 2, 1, NULL, NULL, NULL, NULL, NULL),
  (48, 4, 'Druid', 8, 6, 4, 3, 3, 2, NULL, NULL, NULL, NULL, NULL),
  (49, 4, 'Druid', 9, 6, 4, 4, 3, 2, 1, NULL, NULL, NULL, NULL),
  (50, 4, 'Druid', 10, 6, 4, 4, 3, 3, 2, NULL, NULL, NULL, NULL),
  (51, 4, 'Druid', 11, 6, 5, 4, 4, 3, 2, 1, NULL, NULL, NULL),
  (52, 4, 'Druid', 12, 6, 5, 4, 4, 3, 3, 2, NULL, NULL, NULL),
  (53, 4, 'Druid', 13, 6, 5, 5, 4, 4, 3, 2, 1, NULL, NULL),
  (54, 4, 'Druid', 14, 6, 5, 5, 4, 4, 3, 3, 2, NULL, NULL),
  (55, 4, 'Druid', 15, 6, 5, 5, 5, 4, 4, 3, 2, 1, NULL),
  (56, 4, 'Druid', 16, 6, 5, 5, 5, 4, 4, 3, 3, 2, NULL),
  (57, 4, 'Druid', 17, 6, 5, 5, 5, 5, 4, 4, 3, 2, 1),
  (58, 4, 'Druid', 18, 6, 5, 5, 5, 5, 4, 4, 3, 3, 2),
  (59, 4, 'Druid', 19, 6, 5, 5, 5, 5, 5, 4, 4, 3, 3),
  (60, 4, 'Druid', 20, 6, 5, 5, 5, 5, 5, 4, 4, 4, 4);


/*------Fighter------*/
INSERT INTO classes
VALUES (5, 'Fighter', FALSE, FALSE,
           'The questing knight, the conquering overlord, the king''s champion, the elite foot soldier, the hardened
           mercenary, and the bandit king - all are fighters. Fighters can be stalwart defenders of those in need, cruel
           marauders, or gutsy adventurers. Some are among the land''s best souls, willing to face death for the greater
           good. Others are among the worst, with no qualms about killing for private gain, or even for sport. Fighters
           who are not actively adventuring may be soldiers, guards, bodyguards, champions, or criminal enforcers. An
           adventuring fighter might call himself a warrior, a mercenary, a thug, or simply an adventurer.',
           'Most fighters see adventures, raids, and dangerous missions as their jobs. Some have patrons who pay them
           regularly. Others prefer to live like prospectors, taking great risks in hopes of the big haul. Some fighters
           are more civic-minded and use their combat skills to protect endangered people who cannot defend themselves.
           Whatever their initial motivations, however, fighters often wind up living for the thrill of combat and
           adventure.',
           'Of all the classes, the fighter has teh best all-around fighting capabilities (hence the name). Fighters are
           familiar with all the standard weapons and armors. In addition to general fighting prowess, each fighter
           develops particular specialties of his own. A given fighter may be especially capable with certain weapons;
           another might be trained to execute specific fancy maneuvers. As fighters gain experience, they get more
           opportunities to develop their fighting skills. Thanks to their focus on combat maneuvers, they can master
           the most difficult ones relatively quickly.',
           'Fighters may be of any alignment. Good fighters are often crusading types who seek out and fight evil.
           Lawful fighters may be champions who protect the land and its people. Chaotic fighters may be wandering
           mercenaries. Evil fighters tend to be bullies and petty villains who simply take what they want by brute
           force.',
           'Fighters often worship Heironeous (god of valor), Kord (god of strength), St. Cuthbert (god of retribution),
           Hextor (god of tyranny), or Erythnul (god of slaughter). A fighter may style himself as a crusader in the
           service of his god, or he may just want someone to pray to before putting his life on the line yet another
           time.',
           'Fighters come to their profession in many ways. Most have had formal training in a noble''s army or at least
           in the local militia. Some have trained in formal academies. Others are self-taught - unpolished but well
           tested. A fighter may have taken up the sword as a way to escape the limits of life on the farm, or he may be
           following a proud family tradition. Fighters share no special identity. They do not see themselves as a group
           or brotherhood. Those who hail from a particular academy, mercenary company, or lord''s regiment, however,
           share a certain camaraderie.',
           'Human fighters are usually veterans of some military service, typically from mundane parents. Dwarf fighters
           are commonly former members of the well-trained strike teams that protect the underground dwarven kingdoms.
           They are typically members of warrior families that can trace their lineages back for millennia, and they may
           have rivalries or alliances with other dwarf fighters of a different lineage. Elf fighters are typically
           skilled with the longsword. They are proud of their ability at swordplay and eager to demonstrate or test it.
           Half-orc fighters are often self-taught outcasts who have achieved enough skill to earn recognition and
           something akin to respect. Gnome and halfling fighters usually stay in their own communities as part of the
           area militia rather than adventuring. Half-elves are rarely fighters, but they may take up swordplay in honor
           of the elven tradition.<br/>
           Among the brutal humanoids, few can manage the discipline it takes to be a true fighter. The militaristic
           hobgoblins, however, produce quite a number of strong and skilled fighters.',
        'The fighter excels in a straight fight, but he relies on others for magical support, healing, and scouting. On
        a team, it is his job to man the front lines, protect the other party members, and bring the tough opponents
        down. Fighters might not understand the arcane ways of wizards or share the faith of clerics, but they recognize
        the value of teamwork.',
        'In most adventuring parties, the fighter serves as a melee combatant, charging into the fray while his comrades
        support him with spells, ranged attacks, and other effects. Fighters who favor ranged combat can prove very
        deadly, though without other melee support, they can find themselves in front-line combat more often than they
        prefer.',
        'Abilities: Strength is especially important for fighters because it improves their melee attack and damage
        rolls. Constitution is important for giving fighters lots of hit points, which they need in their many battles.
        Dexterity is important for fighters who want to be good archers or who want access to certain Dexterity-oriented
        feats, but the heavy armor that fighters usually wear reduces the benefit of a very high Dexterity score.<br/>
        Alignment: Any.<br/>
        Hit Die: d10.',
        'Climb, Craft, Handle Animal, Intimidate, Jump, Ride, Swim',
        'There are no penalties for becoming an Ex-Fighter.');


/*------Fighter Class Statistics------*/
INSERT INTO class_stats
VALUES (81, 5, 'Fighter', 1, 1, 0, 0, 0, 2, 0, 0, 'Weapon and Armor Proficiency, Bonus Feat'),
  (82, 5, 'Fighter', 2, 2, 0, 0, 0, 3, 0, 0, 'Bonus Feat'),
  (83, 5, 'Fighter', 3, 3, 0, 0, 0, 3, 1, 1, ''),
  (84, 5, 'Fighter', 4, 4, 0, 0, 0, 4, 1, 1, 'Bonus Feat'),
  (85, 5, 'Fighter', 5, 5, 0, 0, 0, 4, 1, 1, ''),
  (86, 5, 'Fighter', 6, 6, 1, 0, 0, 5, 2, 2, 'Bonus Feat'),
  (87, 5, 'Fighter', 7, 7, 2, 0, 0, 5, 2, 2, ''),
  (88, 5, 'Fighter', 8, 8, 3, 0, 0, 6, 2, 2, 'Bonus Feat'),
  (89, 5, 'Fighter', 9, 9, 4, 0, 0, 6, 3, 3, ''),
  (90, 5, 'Fighter', 10, 10, 5, 0, 0, 7, 3, 3, 'Bonus Feat'),
  (91, 5, 'Fighter', 11, 11, 6, 1, 0, 7, 3, 3, ''),
  (92, 5, 'Fighter', 12, 12, 7, 2, 0, 8, 4, 4, 'Bonus Feat'),
  (93, 5, 'Fighter', 13, 13, 8, 3, 0, 8, 4, 4, ''),
  (94, 5, 'Fighter', 14, 14, 9, 4, 0, 9, 4, 4, 'Bonus Feat'),
  (95, 5, 'Fighter', 15, 15, 10, 5, 0, 9, 5, 5, ''),
  (96, 5, 'Fighter', 16, 16, 11, 6, 1, 10, 5, 5, 'Bonus Feat'),
  (97, 5, 'Fighter', 17, 17, 12, 7, 2, 10, 5, 5, ''),
  (98, 5, 'Fighter', 18, 18, 13, 8, 3, 11, 6, 6, 'Bonus Feat'),
  (99, 5, 'Fighter', 19, 19, 14, 9, 4, 11, 6, 6, ''),
  (100, 5, 'Fighter', 20, 20, 15, 10, 5, 12, 6, 6, 'Bonus Feat');


/*------Fighter Class Features------*/
INSERT INTO class_features
VALUES (50, 5, 'Fighter', 'Weapon and Armor Proficiency',
        'A fighter is proficient with all simple and martial weapons and all armor (heavy, medium, and light) and
        shields (including tower shields).'),
  (51, 5, 'Fighter', 'Bonus Feats',
   'At 1st level, a fighter gets a bonus combat-oriented feat in addition to the feat that any 1st-level character gets
   and the bonus feat granted to a human character. The fighter gains an additional bonus feat at 2nd level and every
   two fighter levels thereafter (4th, 6th, 8th, 10th, 12th, 14th, 16th, 18th, and 20th). These bonus feats must be
   drawn from the feats noted as fighter bonus feats. A fighter must still meet all prerequisites for a bonus feat,
   including ability score and base attack bonus minimums.<br/>
   These bonus feats are in addition to the feat that a character of any class gets every three levels. A fighter is not
   limited to the list of fighter bonus feats when choosing these feats.');


/*------Monk------*/
INSERT INTO classes
VALUES (6, 'Monk', FALSE, FALSE,
           'Dotted across the landscape are monasteries - small, walled cloisters inhabited by monks who pursue personal
           perfection through action as well as contemplation. They train themselves to be versatile warriors skilled at
           fighting without weapons or armor. The inhabitants of monasteries headed by good masters serve as protectors
           of the people. Ready for battle even when barefoot and dressed in peasant clothes, monks can travel unnoticed
           among the populace, catching bandits, warlords, and corrupt nobles unawares. In contrast, the residents of
           monasteries headed by evil masters rule the surrounding lands through fear, as an evil warlord and his
           entourage might. Evil monks make ideal spies, infiltrators, and assassins.<br/>
           An individual monk is unlikely to care passionately about championing commoners or amassing wealth. She cares
           primarily for the perfection of her art and, thereby, her personal perfection. Her goal is to achieve a state
           that is beyond the mortal realm.',
           'A monk approaches an adventure as if it were a personal test. While not prone to showing off, monks are
           willing to try their skills against whatever obstacles confront them. They are not greedy for material
           wealth, but they eagerly seek that which can help them perfect their art.',
           'The key feature of the monk is her ability to fight unarmed and unarmored. Thanks to her rigorous training,
           she can strike as hard as if she were armed and strike faster than a warrior with a sword.<br/>
           Though a monk casts no spells, she channels a subtle energy, called <i>ki</i>, which allows her to perform
           amazing feats. The monk''s best-known feat is her ability to stun an opponent with an unarmed blow. A monk
           also has a preternatural awareness that allows her to dodge an attack even if she is not consciously aware of
           it.<br/>
           As a monk gains experience and power, her mundane and <i>ki</i>-oriented abilities grow, giving her more and
           more power over herself and, sometimes, over others.',
           'A monk''s training requires strict discipline. Only those who are lawful at heart are capable of undertaking
           it.',
           'A monk''s training is her spiritual path. She is inner-directed and capable of a private, mystic connection
           to the spiritual world, so she needs neither clerics nor gods. Certain lawful gods, however, may appeal to
           monks, who may meditate on those gods'' likenesses and attempt to emulate their deeds. The three most likely
           candidates for a monk''s devotion are Heironeous (god of valor), St. Cuthbert (god of retribution), and
           Hextor (god of tyranny).',
           'A monk typically trains in a monastery. Most monks were children when they joined the monastery, sent to
           live there when their parents died, when there wasn''t enough food to support them, or in return for some
           kindness that the monastery had performed for the family. Life in the monastery is so focused that by the
           time a monk sets off on her own, she feels little connection to her former family or village.<br/>
           In larger cities, master monks have set up monk schools to teach their arts to those who are interested and
           worthy. The monks who study at these academies often see their rural cousins from the monasteries as
           backward.<br/>
           A monk may feel a deep connection to her monastery or school, to the monk who taught her, to the lineage into
           which she was trained, or to all of these. Some monks, however, have no sense of connection other than to
           their own path of personal development.<br/>
           Monks recognize each other as a select group set apart from the rest of the populace. They may feel kinship,
           but they also love to compete with each other to see whose <i>ki</i> is strongest.',
           'Monasteries are found primarily among humans, who have incorporated them into their ever-evolving culture.
           Thus, many monks are humans, and many more are half-orcs and half-elves who live among humans. Elves are
           capable of single-minded, long-term devotion to an interest, art, or discipline, and some of them leave the
           forests to become monks. The monk tradition is alien to dwarf and gnome culture, and halflings typically
           have too mobile a lifestyle to commit themselves to a monastery, so dwarves, gnomes, and halflings very
           rarely become monks.<br/>
           The savage humanoids do not have the stable social structure that allows monk training, but the occasional
           orphaned or abandoned child from some humanoid tribe winds up in a civilized monastery or is adopted by a
           wandering master. The evil subterranean elves known as the drow have a small but successful monk tradition.',
        'Monks sometimes seem distant because they often have neither motivation nor skills in common with members of
        other classes. Monks do, however, work well with the support of others, and they usually prove themselves
        reliable companions.',
        'The monk functions best as an opportunistic combatant, using her speed to get into and out of combat quickly
        rather than engaging in prolonged melees. She also makes an excellent scout, particularly if she focuses her
        skill selection on stealth.',
        'Abilities: Wisdom powers the monk''s special offensive and defensive capabilities. Dexterity provides an
        unarmored monk with a better defense and with bonuses to some class skills. Strength helps a monk''s unarmed
        combat ability.<br/>
        Alignment: Any lawful.<br/>
        Hit Die: d8.',
        'Balance, Climb, Concentration, Craft, Diplomacy, Escape Artist, Hide, Jump, Knowledge (arcana), Knowledge
        (religion), Listen, Move Silently, Perform, Profession, Sense Motive, Spot, Swim, Tumble',
        'A monk who becomes nonlawful cannot gain new levels as a monk but retains all monk abilities.<br/>
        Like a member of any other class, a monk may be a multiclass character, but multiclass monks face a special
        restriction. A monk who gains a new class or (if already multiclass) raises another class by a level may never
        again raise her monk level, though she retains all her monk abilities.');


/*------Monk Class Statistics------*/
INSERT INTO class_stats
VALUES (101, 6, 'Monk', 1, 0, 0, 0, 0, 2, 2, 2, 'Weapon and Armor Proficiency, Bonus Feat, Flurry of Blows, Unarmed
  Strike'),
  (102, 6, 'Monk', 2, 1, 0, 0, 0, 3, 3, 3, 'Bonus Feat, Evasion, Fast Movement'),
  (103, 6, 'Monk', 3, 2, 0, 0, 0, 3, 3, 3, 'Still Mind'),
  (104, 6, 'Monk', 4, 3, 0, 0, 0, 4, 4, 4, '<i>Ki</i> Strike (magic), Slow Fall 20ft'),
  (105, 6, 'Monk', 5, 3, 0, 0, 0, 4, 4, 4, 'Purity of Body'),
  (106, 6, 'Monk', 6, 4, 0, 0, 0, 5, 5, 5, 'Bonus Feat, Slow Fall 30ft'),
  (107, 6, 'Monk', 7, 5, 0, 0, 0, 5, 5, 5, 'Wholeness of Body'),
  (108, 6, 'Monk', 8, 6, 1, 0, 0, 6, 6, 6, 'Slow Fall 40 feet'),
  (109, 6, 'Monk', 9, 6, 1, 0, 0, 6, 6, 6, 'Improved Evasion'),
  (110, 6, 'Monk', 10, 7, 2, 0, 0, 7, 7, 7, '<i>Ki</i> Strike (lawful), Slow Fall 50ft'),
  (111, 6, 'Monk', 11, 8, 3, 0, 0, 7, 7, 7, 'Diamond Body, Greater Flurry'),
  (112, 6, 'Monk', 12, 9, 4, 0, 0, 8, 8, 8, 'Abundant Step, Slow Fall 60ft'),
  (113, 6, 'Monk', 13, 9, 4, 0, 0, 8, 8, 8, 'Diamond Soul'),
  (114, 6, 'Monk', 14, 10, 5, 0, 0, 9, 9, 9, 'Slow Fall 70ft'),
  (115, 6, 'Monk', 15, 11, 6, 1, 0, 9, 9, 9, 'Quivering Palm'),
  (116, 6, 'Monk', 16, 12, 7, 2, 0, 10, 10, 10, '<i>Ki</i> Strike (adamantine), Slow Fall 80ft'),
  (117, 6, 'Monk', 17, 12, 7, 2, 0, 10, 10, 10, 'Timeless Body, Tongue of the Sun and Moon'),
  (118, 6, 'Monk', 18, 13, 8, 3, 0, 11, 11, 11, 'Slow Fall 90ft'),
  (119, 6, 'Monk', 19, 14, 9, 4, 0, 11, 11, 11, 'Empty Body'),
  (120, 6, 'Monk', 20, 15, 10, 5, 0, 12, 12, 12, 'Perfect Self, Slow Fall any distance');


/*------Monk Class Features------*/
INSERT INTO class_features
VALUES (52, 6, 'Monk', 'Weapon and Armor Proficiency',
        'Monks are proficient with certain basic peasant weapons and some special weapons that are part of monk
        training. The weapons with which a monk is proficient are club, crossbow (light or heavy), dagger, handaxe,
        javelin, kama, nunchaku, quarterstaff, sai, shuriken, siangham, and sling. Monks are not proficient with any
        armor or shields - in fact, many of the monk''s special powers require unfettered movement. When wearing armor,
        using a shield, or carrying a medium or heavy load, a monk loses her AC bonus, as well as her fast movement and
        flurry of blows abilities.'),
  (53, 6, 'Monk', 'AC Bonus (Ex)',
   'A monk is highly trained at dodging blows, and she has a sixth sense that lets her avoid even unanticipated attacks.
   When unarmored and unencumbered, the monk adds her Wisdom bonus (if any) to her AC. In addition, a monk gains a +1
   bonus to AC at 5th level. This bonus increases by 1 for every five monk levels thereafter (+2 at 10th, +3 at 15th,
   and +4 at 20th level).<br/>
   These bonuses to AC apply even against touch attacks or when the monk is flat-footed. She loses these bonuses when
   she is immobilized or helpless, when she wears any armor, when she carries a shield, or when she carries a medium or
   heavy load.'),
  (54, 6, 'Monk', 'Flurry of Blows (Ex)',
   'When unarmored, a monk, may strike with a flurry of blows at the expense of accuracy. When doing so, she may make
   one extra attack in a round at her highest base attack bonus, but this attack takes a -2 penalty, as does each other
   attack made that round. This penalty applies for 1 round, so it also affects attacks of opportunity the monk might
   make before her next action. When a monk reaches 5th level, the penalty lessens to -1, and at 9th level it
   disappears. A monk must use a full attack action to strike with a flurry of blows.<br/>
   When using flurry of blows, a monk may attack only with unarmed strikes or with special monk weapons (kama, nunchaku,
   quarterstaff, sai, shuriken, and siangham). She may attack with unarmed strikes and special monk weapons
   interchangeably as desired. For example, at 6th level, the monk Ember could make one attack with her unarmed strike
   at an attack bonus of +3 and one attack with a special monk weapon at an attack bonus of +3. When using weapons as
   part of a flurry of blows, a monk applies her Strength bonus (not Strength bonus x 1.5 or x .5) to her damage rolls
   for all successful attacks, whether she wields a weapon in one or both hands. The monk can''t use any weapon other
   than a special monk weapon as part of a flurry of blows.<br/>
   In the case of the quarterstaff, each end counts as a separate weapon for the purpose of using the flurry of blows
   ability. Even though the quarterstaff requires two hands to use, a monk may still intersperse unarmed strikes with
   quarterstaff strikes, assuming that she has enough attacks in her flurry of blows routine to do so. For example, an
   8th-level monk could make two attacks with the quarterstaff (one with each end) at a +5 attack bonus and one with an
   unarmed strike at a +0 attack bonus, or she could attack with one end of the quarterstaff and one unarmed strike each
   at a +5 attack bonus, and with the other end of the quarterstaff at a +0 attack bonus. She cannot, however, wield any
   other weapon at the same time that she uses a quarterstaff.<br/>
   When a monk reaches 11th level, her flurry of blows ability improves. In addition to the standard single extra attack
   she gets from flurry of blows, she gets a second extra attack at her full base attack bonus.'),
  (55, 6, 'Monk', 'Unarmed Strike',
   'Monks are highly trained in fighting unarmed, giving them considerable advantages when doing so. At 1st level, a
   monk gains Improved Unarmed Strike as a bonus feat. A monk''s attacks may be with either fist interchangeably or even
   from elbows, knees, and feet. This means that a monk may even make unarmed strikes with her hands full. There is no
   such thing as an off-hand attack for a monk striking unarmed. A monk may thus apply her full Strength bonus on damage
   rolls for all her unarmed strikes.<br/>
   Usually a monk''s unarmed strikes deal lethal damage, but she can choose to deal nonlethal damage instead with no
   penalty on her attack roll. She has the same choice to deal lethal or nonlethal damage while grappling.<br/>
   A monk''s unarmed strike is treated both as a manufactured weapon and a natural weapon for the purpose of spells and
   effects that enhance or improve either manufactured weapons or natural weapons (such as the <i>magic fang</i> and
   <i>magic weapon</i> spells).<br/>
   A monk also deals more damage with her unarmed strikes than a normal person would. A Small monk deals less damage
   with her unarmed attacks, while a Large monk deals more damage.'),
  (56, 6, 'Monk', 'Bonus Feats',
   'At 1st level, a monk may select either Improved Grapple or Stunning Fist as a bonus feat. At 2nd level, she may
   select either Combat Reflexes or Deflect Arrows as a bonus feat. At 6th level, she may select either Improved Disarm
   or Improved Trip as a bonus feat. A monk need not have any of the prerequisites normally required for these feats to
   select them.'),
  (57, 6, 'Monk', 'Evasion (Ex)',
   'A monk of 2nd level or higher can avoid even magical and unusual attacks with great agility. If she makes a
   successful Reflex saving throw against an attack that normally deals half damage on a successful save (such as a red
   dragon''s fiery breath or a <i>fireball</i>), she instead takes no damage. Evasion can be used only if a monk is
   wearing light armor or no armor. A helpless monk (such as one who is unconscious or paralyzed) does not gain the
   benefit of evasion.'),
  (58, 6, 'Monk', 'Fast Movement (Ex)',
   'At 3rd level, a monk gains an enhancement bonus to her speed. A monk in armor (even light armor) or carrying a
   medium or heavy load loses this extra speed.'),
  (59, 6, 'Monk', 'Still Mind (Ex)',
   'A monk of 3rd level or higher gains a +2 bonus on saving throws against spells and effects from the school of
   enchantment, since her meditation and training improve her resistance to mind-affecting attacks.'),
  (60, 6, 'Monk', '<i>Ki</i> Strike (Su)',
   'At 4th level, a monk''s unarmed attacks are empowered with <i>ki</i>. Her unarmed attacks are treated as magic
   weapons for the purpose of dealing damage to creatures with damage reduction. <i>Ki</i> strike improves with the
   character''s monk level. At 10th level, her unarmed attacks are also treated as lawful weapons for the purpose of
   dealing damage to creatures with damage reduction. At 16th level, her unarmed attacks are treated as adamantine
   weapons for the purpose of dealing damage to creatures with damage reduction and bypassing hardness.'),
  (61, 6, 'Monk', 'Slow Fall (Ex)',
   'At 4th level or higher, a monk within arm''s reach of a wall can use it to slow her descent. When first using this
   ability, she takes damage as if the fall were 20 feet shorter than it actually is. The monk''s ability to slow her
   fall (that is, to reduce the effective distance of the fall when next to a wall) improves with her monk level until
   at 20th level she can use a nearby wall to slow her descent and fall any distance without harm.'),
  (62, 6, 'Monk', 'Purity of Body (Ex)',
   'At 5th level, a monk gains control over her body''s immune system. She gains immunity to all diseases except for
   supernatural and magical diseases (such as mummy rot and lycanthropy).'),
  (63, 6, 'Monk', 'Wholeness of Body (Su)',
   'At 7th level or higher, a monk can heal her own wounds. She can heal a number of hit points of damage equal to twice
   her current monk level each day, and she can spread this healing out among several uses.'),
  (64, 6, 'Monk', 'Improved Evasion (Ex)',
   'At 9th level, a monk''s evasion ability improves. She still takes no damage on a successful Reflex saving throw
   against attacks such as a dragon''s breath weapon or a <i>fireball</i>, but henceforth she takes only half damage on
   a failed save. A helpless monk (such as one who is unconscious or paralyzed) does not gain the benefit of improved
   evasion.'),
  (65, 6, 'Monk', 'Diamond Body (Su)',
   'At 11th level, a monk is in such firm control of her own metabolism that she gains immunity to poisons of all
   kinds.'),
  (66, 6, 'Monk', 'Abundant Step (Su)',
   'At 12th level or higher, a monk can slip magically between spaces, as if using the spell <i>dimension door</i>, once
   per day. Her caster level for this effect is one-half her monk level (rounded down).'),
  (67, 6, 'Monk', 'Diamond Soul (Ex)',
   'At 13th level, a monk gains spell resistance equal to her current monk level + 10. In order to affect the monk with
   a spell, a spellcaster must get a result on a caster level check (1d20 + caster level) that equals or exceeds the
   monk''s spell resistance.'),
  (68, 6, 'Monk', 'Quivering Palm (Su)',
   'Starting at 15th level, a monk can set up vibrations within the body of another creature that can thereafter be
   fatal if the monk so desires. She can use this quivering palm attack once a week, and she must announce her intent
   before making her attack roll. Constructs, oozes, plants, undead, incorporeal creatures, and creatures immune to
   critical hits cannot be affected. Otherwise, if the monk strikes successfully and the target takes damage from the
   blow, the quivering palm attack succeeds. Thereafter the monk can try to lay the victim at any later time, as long as
   the attempt is made within a number of days equal to her monk level. To make such an attempt, the monk merely wills
   the target to die (a free action), and unless the target makes a Fortitude saving throw (DC 10 + half the monk''s
   level + the monk''s Wisdom modifier), it dies. If the saving throw is successful, the target is no longer in danger
   from that particular quivering palm attack, but it may still be affected by another one at a later time.'),
  (69, 6, 'Monk', 'Timeless Body (Ex)',
   'Upon attaining 17th level, a monk no longer takes penalties to her ability scores for aging and cannot be magically
   aged. Any such penalties that she has already taken, however, remain in place. Bonuses still accrue, and the monk
   still dies of old age when her time is up.'),
  (70, 6, 'Monk', 'Tongue of the Sun and Moon (Ex)',
   'A monk of 17th level or higher can speak with any living creature.'),
  (71, 6, 'Monk', 'Empty Body (Su)',
   'At 19th level, a monk gains the ability to assume an ethereal state for 1 round per monk level per day, as though
   using the spell <i>etherealness</i>. She may go ethereal on a number of different occasions during any single day, as
   long as the total number of rounds spent in an ethereal state does not exceed her monk level.'),
  (72, 6, 'Monk', 'Perfect Self',
   'At 20th level, a monk has tuned her body with skill and quasi-magical abilities to the point that she becomes a
   magical creature. She is forevermore treated as an outsider (an extraplanar creature) rather than as a humanoid for
   the purpose of spells and magical effects. FOr instance, charm person does not affect her. Additionally, the monk
   gains damage reduction 10/magic, which allows her to ignore (instantly regenerate) the first 10 points of damage from
   any attack made by a nonmagical weapon or by any natural attack made by a creature that doesn''t have similar damage
   reduction. Unlike other outsiders, the monk can still be brought back from the dead as if she were a member of her
   previous creature type.');


/*------Monk Class Additional Statistics------*/
CREATE TABLE monk_additional_stats (
  level                    INT(3) PRIMARY KEY,
  flurry_of_blows_1        INT(3),
  flurry_of_blows_2        INT(3),
  flurry_of_blows_3        INT(3),
  flurry_of_blows_4        INT(3),
  flurry_of_blows_5        INT(3),
  unarmed_damage_small     VARCHAR(10),
  unarmed_damage           VARCHAR(10),
  unarmed_damage_large     VARCHAR(10),
  ac_bonus                 INT(2),
  unarmed_speed_bonus_feet INT(3)
);


/*------Monk Additional Statistics Entries------*/
INSERT INTO monk_additional_stats
VALUES (1, -2, -2, NULL, NULL, NULL, '1d4', '1d6', '1d8', 0, 0),
  (2, -1, -1, NULL, NULL, NULL, '1d4', '1d6', '1d8', 0, 0),
  (3, 0, 0, NULL, NULL, NULL, '1d4', '1d6', '1d8', 0, 10),
  (4, 1, 1, NULL, NULL, NULL, '1d6', '1d8', '2d6', 0, 10),
  (5, 2, 2, NULL, NULL, NULL, '1d6', '1d8', '2d6', 1, 10),
  (6, 3, 3, NULL, NULL, NULL, '1d6', '1d8', '2d6', 1, 20),
  (7, 4, 4, NULL, NULL, NULL, '1d6', '1d8', '2d6', 1, 20),
  (8, 5, 5, 0, NULL, NULL, '1d8', '1d10', '2d8', 1, 20),
  (9, 6, 6, 1, NULL, NULL, '1d8', '1d10', '2d8', 1, 30),
  (10, 7, 7, 2, NULL, NULL, '1d8', '1d10', '2d8', 2, 30),
  (11, 8, 8, 8, 3, NULL, '1d8', '1d10', '2d8', 2, 30),
  (12, 9, 9, 9, 4, NULL, '1d10', '2d6', '3d6', 2, 40),
  (13, 9, 9, 9, 4, NULL, '1d10', '2d6', '3d6', 2, 40),
  (14, 10, 10, 10, 5, NULL, '1d10', '2d6', '3d6', 2, 40),
  (15, 11, 11, 11, 6, 1, '1d10', '2d6', '3d6', 3, 50),
  (16, 12, 12, 12, 7, 2, '2d6', '2d8', '3d8', 3, 50),
  (17, 12, 12, 12, 7, 2, '2d6', '2d8', '3d8', 3, 50),
  (18, 13, 13, 13, 8, 3, '2d6', '2d8', '3d8', 3, 60),
  (19, 14, 14, 14, 9, 4, '2d6', '2d8', '3d8', 3, 60),
  (20, 15, 15, 15, 10, 5, '2d8', '2d10', '4d8', 4, 60);


/*------Paladin------*/
INSERT INTO classes
VALUES (7, 'Paladin', TRUE, FALSE,
           'The compassion to pursue good, the will to uphold law, and the power to defeat evil - these are the three
           weapons of the paladin. Few have the purity and the devotion that it takes to walk the paladin''s path, but
           those few are rewarded with the power to protect, to heal, and to smite. In a land of scheming wizards, unholy
           priests, bloodthirsty dragons, and infernal fiends, the paladin is the final hope that cannot be extinguished.',
           'Paladins take their adventures seriously and have a penchant for referring to them as quests. Even a mundane
           mission is, in the heart of the paladin, a personal test - an opportunity to demonstrate bravery, to develop
           martial skills, to learn tactics, and to find ways to do good. Still, the paladin really comes into her own when
           leading a mighty campaign against evil, not when merely looting ruins.',
           'Divine power protects the paladin and gives her special powers. If ward off harm, protects her from disease,
           lets her heal herself, and guards her heart against fear. A paladin can also direct this power to help others,
           healing their wounds or curing diseases. Finally, a paladin can use this power to destroy evil. Even a novice
           paladin can detect evil, and more experienced paladins can smite evil foes and turn away undead. In addition,
           this power draws a mighty steed to the paladin and imbues that mount with strength, intelligence, and magical
           protection.',
           'Paladins must be lawful good, and they lose their divine powers if they deviate from that alignment.
           Additionally, paladins swear to follow a code of conduct that is in line with lawfulness and goodness.',
           'A paladin need not devote herself to a single deity - devotion to righteousness is enough. Those paladins who
           do align themselves with particular religions prefer Heironeous (god of valor) over all others, but some
           paladins follow Pelor (god of the sun). Paladins devoted to a god are scrupulous in observing religious duties
           and are welcome in every associated temple.',
           'No one ever chooses to be a paladin. Becoming a paladin is answering a call, accepting one''s destiny. No one,
           no matter how diligent, can become a paladin through practice. The nature is either within one or not, and it is
           not possible to gain the paladin''s nature by any act of will. It is possible, however to fail to recognize
           one''s own potential, or to deny one''s destiny. Occasionally, one who is called to be a paladin denies that
           call and pursues some other life instead.<br/>
           Most paladins do answer the call and begin training as adolescents. Typically, they becomes squires or
           assistants to experienced paladins, train for years, and finally set off on their own to further the causes of
           good and law. Other paladins find their calling later in life, after having pursued some other career. All
           paladins, regardless of background, recognize in each other an eternal bond that transcends culture, race, and
           even religion. Any two paladins, even from opposite sides of the world, consider themselves comrades.',
           'Humans, with their ambitious souls, make great paladins. Half-elves, who often have human ambition, may also
           find themselves called into service as paladins. Dwarves are sometimes paladins, but becoming a paladin may be
           hard on a dwarf because it means putting the duties of the paladin''s life before duties to family, clan, and
           king. Elf paladins are few, and they tend to follow quests that take them far and wide because their lawful bent
           puts them out of sync with life among the elves. Members of teh other common races rarely hear the call to
           become paladins.<br/>
           Among the savage humanoids, paladins are all but unheard of.',
        'Even though paladins are in some ways set apart from others, they eagerly team up with those whose skills and
        capabilities complement their own. They work well with good and lawful clerics, and they appreciate working with
        anyone who is brave, honest, and committed to good. While they cannot abide evil acts by their companions, they
        are otherwise willing to work with a variety of people quite different from themselves. Charismatic,
        trustworthy, and well respected, the paladin makes a find leader for a team.',
        'The paladin''s chief role in most groups is as a melee combatant, but she contributes other useful support as
        well. She makes a good secondary healer, and her high Charisma opens up fine leadership opportunities.',
        'Abilities: Charisma enhances a paladin''s healing power, self-protective capabilities, and undead turning
        ability. Strength is important for her because of its role in combat. A Wisdom score of 14 or higher is required
        to get access to the most powerful paladin spells, and a score of 11 or higher is required to cast any paladin
        spells at all.<br/>
        Alignment: Lawful good.<br/>
        Hit Die: d10.',
        'Concentration, Craft, Diplomacy, Handle Animal, Heal, Knowledge (nobility and royalty), Knowledge (religion),
        Profession, Ride, Sense Motive',
        'A paladin who ceases to be lawful good, who willfully commits an evil act, or who grossly violates the code of
        conduct loses all paladin spells and abilities (including the service of the paladin''s mount, but not weapon,
        armor, and shield proficiencies). She may not progress any farther in levels as a paladin. She regains her
        abilities and advancement potential if she atones for her violations, as appropriate.<br/>
        Like a member of any other class, a paladin may be a multiclass character, but multiclass paladins face a
        special restriction. A paladin who gains a level in any class other than paladin may never again raise her
        paladin level, though she retains all her paladin abilities. The path of the paladin requires a constant heart.
        If a character adopts this class, she must pursue it to the exclusion of all other careers. Once she has turned
        off the path, she may never return.');


/*------Paladin Class Statistics------*/
INSERT INTO class_stats
VALUES (121, 7, 'Paladin', 1, 1, 0, 0, 0, 2, 0, 0, 'Weapon and Armor Proficiency, Aura of Good, <i>Detect Evil</i>,
  Smite Evil 1/day, Code of Conduct, Associates'),
  (122, 7, 'Paladin', 2, 2, 0, 0, 0, 3, 0, 0, 'Divine Grace, Lay On Hands'),
  (123, 7, 'Paladin', 3, 3, 0, 0, 0, 3, 1, 1, 'Aura of Courage, Divine Health'),
  (124, 7, 'Paladin', 4, 4, 0, 0, 0, 4, 1, 1, 'Turn Undead, Paladin Spells'),
  (125, 7, 'Paladin', 5, 5, 0, 0, 0, 4, 1, 1, 'Smite Evil 2/day, <i>Special Mount</i>'),
  (126, 7, 'Paladin', 6, 6, 1, 0, 0, 5, 2, 2, '<i>Remove Disease</i> 1/week'),
  (127, 7, 'Paladin', 7, 7, 2, 0, 0, 5, 2, 2, ''),
  (128, 7, 'Paladin', 8, 8, 3, 0, 0, 6, 2, 2, ''),
  (129, 7, 'Paladin', 9, 9, 4, 0, 0, 6, 3, 3, '<i>Remove Disease</i> 2/week'),
  (130, 7, 'Paladin', 10, 10, 5, 0, 0, 7, 3, 3, 'Smite Evil 3/day'),
  (131, 7, 'Paladin', 11, 11, 6, 1, 0, 7, 3, 3, ''),
  (132, 7, 'Paladin', 12, 12, 7, 2, 0, 8, 4, 4, '<i>Remove Disease</i> 3/week'),
  (133, 7, 'Paladin', 13, 13, 8, 3, 0, 8, 4, 4, ''),
  (134, 7, 'Paladin', 14, 14, 9, 4, 0, 9, 4, 4, ''),
  (135, 7, 'Paladin', 15, 15, 10, 5, 0, 9, 5, 5, '<i>Remove Disease</i> 4/week, Smite Evil 4/day'),
  (136, 7, 'Paladin', 16, 16, 11, 6, 1, 10, 5, 5, ''),
  (137, 7, 'Paladin', 17, 17, 12, 7, 2, 10, 5, 5, ''),
  (138, 7, 'Paladin', 18, 18, 13, 8, 3, 11, 6, 6, '<i>Remove Disease</i> 5/week'),
  (139, 7, 'Paladin', 19, 19, 14, 9, 4, 11, 6, 6, ''),
  (140, 7, 'Paladin', 20, 20, 15, 10, 5, 12, 6, 6, 'Smite Evil 5/day');


/*------Paladin Class Features------*/
INSERT INTO class_features
VALUES (73, 7, 'Paladin', 'Weapon and Armor Proficiency',
        'Paladins are proficient with all simple and martial weapons, with all types of armor (heavy, medium, and
        light), and with shields (except tower shields).'),
  (74, 7, 'Paladin', 'Aura of Good (Ex)',
   'The power of a paladin''s aura of good is equal to her paladin level just like the aura of a cleric of a good
   deity.'),
  (75, 7, 'Paladin', '<i>Detect Evil (Sp)</i>',
   'At will, a paladin can use <i>detect evil</i>, as the spell.'),
  (76, 7, 'Paladin', 'Smite Evil (Su)',
   'Once per day, a paladin may attempt to smite evil with one normal melee attack. She adds her Charisma bonus (if any)
   to her attack roll and deals 1 extra point of damage per paladin level. For example, a 13th-level paladin armed with
   a longsword would deal 1d8+13 points of damage, plus any additional bonuses for high Strength or magical effects that
   would normally apply. If the paladin accidentally smites a creature that is not evil, the smite has no effect, but
   the ability is still used up for that day.<br/>
   At 5th level, and at every five levels thereafter, the paladin may smite evil one additional time per day, to a
   maximum of five times per day at 20th level.'),
  (77, 7, 'Paladin', 'Code of Conduct',
   'A paladin must be of lawful good alignment and loses all class abilities if she ever willingly commits an evil act.
   Additionally, a paladin''s code requires that she respect legitimate authority, act with honor (not lying, not
   cheating, not using poison, and so forth), help those in need (provided they do not use the help for evil or chaotic
   ends), and punish those who harm or threaten innocents.'),
  (78, 7, 'Paladin', 'Associates',
   'While she may adventure with characters of good or neutral alignment, a paladin will never knowingly associate with
   evil characters, nor will she continue an association with someone who consistently offends her moral code. A paladin
   may accept only henchmen, followers, or cohorts who are lawful good.'),
  (79, 7, 'Paladin', 'Divine Grace (Su)',
   'At 2nd level, a paladin gains a bonus equal to her Charisma bonus (if any) on all saving throws.'),
  (80, 7, 'Paladin', 'Lay on Hands (Su)',
   'Beginning at 2nd level, a paladin with a Charisma score of 12 or higher can heal wounds (her own or those of others)
   by touch. Each day she can heal a total number of hit points of damage equal to her paladin level x her Charisma
   bonus. For example, a 7th-level paladin with a 16 Charisma (+3 bonus) can heal 21 points of damage per day. A paladin
   may choose to divide her healing among multiple recipients, and she doesn''t have to use it all at once. Using lay on
   hands is a standard action.<br/>
   Alternatively, a paladin can use any or all of this healing power to deal damage to undead creatures. Using lay on
   hands in this way requires a successful melee touch attack and doesn''t provoke an attack of opportunity. The paladin
   decides how many of her daily allotment of points to use as damage after successfully touching an undead creature.'),
  (81, 7, 'Paladin', 'Aura of Courage (Su)',
   'Beginning at 3rd level, a paladin is immune to fear (magical or otherwise). Each ally within 10 feet of her gains a
   +4 morale bonus on saving throws against fear effects. This ability functions while the paladin is conscious, but not
   if she is unconscious or dead.'),
  (82, 7, 'Paladin', 'Divine Health (Ex)',
   'At 3rd level, a paladin gains immunity to all diseases, including supernatural and magical diseases (such as mummy
   rot and lycanthropy).'),
  (83, 7, 'Paladin', 'Turn Undead (Su)',
   'When a paladin reaches 4th level, she gains the supernatural ability to turn undead. She may use this ability a
   number of times per day equal to 3 + her Charisma modifier. She turns undead as a cleric of three levels lower
   would.'),
  (84, 7, 'Paladin', 'Paladin Spells',
   'Beginning at 4th level, a paladin gains the ability to cast a small number of divine spells (the same type of spells
   available to the cleric, druid, and ranger), which are drawn from the paladin spell list. A paladin must choose and
   prepare her spells in advance.<br/>
   To prepare or cast a spell, a paladin must have a Wisdom score equal to at least 10 + the spell level (Wisdom 11 for
   1st-level spells, Wisdom 12 for 2nd-level spells, and so forth). The Difficulty Class for a saving throw against a
   paladin''s spell is 10 + the spell level + the paladin''s Wisdom modifier.<br/>
   Like other spellcasters, a paladin can cast only a certain number of spells of each spell level per day. In addition,
   she receives bonus spells per day if she has a high Wisdom score. If indicated that the paladin gets 0 spells per day
   of a given spell level (for instance, 1st-level spells for a 4th-level paladin), she gains only the bonus spells she
   would be entitled to based on her Wisdom score for that spell level. The paladin does not have access to any domain
   spells or granted powers, as a cleric does.<br/>
   A paladin prepares and casts spells the way a cleric does, though she cannot lose a prepared spell to spontaneously
   cast a <i>cure</i> spell in its place. A paladin may prepare and cast any spell on the paladin spell list, provided
   that she can cast spells of that level, but she must choose which spells to prepare during her daily meditation.<br/>
   Through 3rd level, a paladin has no caster level. At 4th level and higher, her caster level is one-half her paladin
   level.'),
  (85, 7, 'Paladin', '<i>Special Mount (Sp)</i>',
   'Upon reaching 5th level, a paladin gains the service of an unusually intelligent, strong, and loyal steed to serve
   her in her crusade against evil. This mount is usually a heavy warhorse (for a Medium paladin) or a warpony (for a
   Small paladin).<br/>
   Once per day, as a full-round action, a paladin may magically call her mount from the celestial realms in which it
   resides. This ability is the equivalent of a spell of a level equal to one-third the paladin''s class level. The
   mount immediately appears adjacent to the paladin and remains for 2 hours per paladin level; it may be dismissed at
   any time as a free action. The mount is the same creature each time it is called, though the paladin may release a
   particular mount from service (if it has grown too old to join her crusade, for instance). Each time the mount is
   called, it appears in full health, regardless of any damage it may have taken previously. The mount also appears
   wearing or carrying any gear it had when it was last dismissed (including barding, saddle, saddlebags, and the like.)
   Calling a mount is a conjuration (calling) effect.<br/>
   Should the paladin''s mount die, it immediately disappears, leaving behind any equipment it was carrying. The paladin
   may not summon another mount for thirty days or until she gains a paladin level, whichever comes first, even if the
   mount is somehow returned from the dead. During this thirty-day period, the paladin takes a -1 penalty on attack and
   weapon damage rolls.'),
  (86, 7, 'Paladin', '<i>Remove Disease (Sp)</i>',
   'At 6th level, a paladin can produce a <i>remove disease</i> effect, as the spell, once per week. She can use this
   ability one additional time per week for every three levels after 6th (twice per week at 9th, three times at 12th,
   and so forth).');


/*------Paladin Spells Per Day------*/
INSERT INTO class_spells_per_day
VALUES (61, 7, 'Paladin', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (62, 7, 'Paladin', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (63, 7, 'Paladin', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (64, 7, 'Paladin', 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (65, 7, 'Paladin', 5, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (66, 7, 'Paladin', 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (67, 7, 'Paladin', 7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (68, 7, 'Paladin', 8, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (69, 7, 'Paladin', 9, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (70, 7, 'Paladin', 10, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (71, 7, 'Paladin', 11, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (72, 7, 'Paladin', 12, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (73, 7, 'Paladin', 13, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
  (74, 7, 'Paladin', 14, 2, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
  (75, 7, 'Paladin', 15, 2, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
  (76, 7, 'Paladin', 16, 2, 2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
  (77, 7, 'Paladin', 17, 2, 2, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL),
  (78, 7, 'Paladin', 18, 3, 2, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL),
  (79, 7, 'Paladin', 19, 3, 3, 3, 2, NULL, NULL, NULL, NULL, NULL, NULL),
  (80, 7, 'Paladin', 20, 3, 3, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL);


/*------Ranger------*/
INSERT INTO classes
VALUES     