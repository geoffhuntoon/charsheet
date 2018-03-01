CREATE TABLE races (
  id            INT(11) PRIMARY KEY,
  name          VARCHAR(15),
  strmod        INT(2),
  dexmod        INT(2),
  conmod        INT(2),
  intmod        INT(2),
  wismod        INT(2),
  chamod        INT(2),
  general       TEXT,
  personality   TEXT,
  physicality   TEXT,
  relations     TEXT,
  alignment     TEXT,
  lands         TEXT,
  religion      TEXT,
  language      TEXT,
  names         TEXT,
  adventurers   TEXT,
  favored_class VARCHAR(20)
);

CREATE TABLE race_feats (
  id          INT(11) PRIMARY KEY,
  race_name   VARCHAR(15),
  feat        VARCHAR(50),
  description TEXT,
  FOREIGN KEY (race_name) REFERENCES races (name)
);


/*------Human------*/
INSERT INTO races
VALUES (1, 'Human', 0, 0, 0, 0, 0, 0,
           'Most humans are the descendants of pioneers, conquerors, traders, travelers, refugees, and other people on
           the move. As a result, human lands are home to a mix of people - physically, culturally, religiously, and
           politically different. Hardy or fine, light-skinned or dark, showy or austere, primitive or civilized,
           devout or impious, humans run the gamut.',
           'Humans are the most adaptable, flexible, and ambitious people among the common races. They are diverse in
           their tastes, morals, customs, and habits. Others accuse them of having little respect for history, but
           it''s only natural that humans, with their relatively short life spans and constantly changing cultures,
           would have a shorter collective memory than dwarves, elves, gnomes, or halflings.',
           'Humans typically stand from 5 feet to a little over 6 feet tall and weigh from 125 to 250 pounds, with men
           noticeably taller and heavier than women. Thanks to their penchant for migration and conquest, and to their
           short life spans, humans are more physically diverse than other common races. Their skin shades range from
           nearly black to very pale, their hair from black to blond (curly, kinky, or straight), and their facial hair
           (for men) from sparse to thick. Plenty of humans have a dash of nonhuman blood, and they may demonstrate
           hints of elf, orc, or other lineages. Members of this race are often ostentatious or unorthodox in their
           grooming and dress, sporting unusual hairstyles, fanciful clothes, tattoos, body piercings, and the like.
           Humans have short life spans, reaching adulthood at about age 15 and rarely living even a single century.',
        'Just as readily as they mix with each other, humans mix with members of other races, among which they are
        known as "everyone''s second-best friends." Humans serve as ambassadors, diplomats, magistrates, merchants,
        and functionaries of all kinds.',
        'Humans tend toward no particular alignment, not even neutrality. The best and the worst are found among them.',
        'Human lands are usually in flux, with new ideas, social changes, innovations, and new leaders constantly coming
        to the fore. Members of longer-lived races find human culture exciting but eventually a little wearying or even
        bewildering.<br/><br/>
        Since humans lead such short lives, their leaders are all young compared to the political, religious, and
        military leaders among the other races. Even where individual humans are conservative traditionalists, human
        institutions change with the generations, adapting and evolving faster than parallel institutions among the
        elves, dwarves, gnomes, and halflings. Individually and as a group, humans are adaptable opportunists, and they
        stay on top of changing political dynamics.<br/><br/>
        Human lands generally include relatively large numbers of nonhumans (compared, for instance, to the number of
        non-dwarves who live in dwarven lands.)',
        'Unlike members of the other common races, humans do not have a chief racial deity. Pelor, the sun god, is the
        most commonly worshiped deity in human lands, but he can claim nothing like the central place that the dwarves
        give Moradin or the elves give Corellon Larethian in their respective pantheons. Some humans are the most ardent
        and zealous adherents of a given religion, while others are the most impious people around.',
        'Humans speak Common. They typically learn other languages as well, including obscure ones, and they are fond
        with sprinkling their speech with words borrowed from other tongues: Orc curses, Elven musical expressions,
        Dwarven military phrases, and so on.',
        'Human names vary greatly. Without a unifying deity to give them a touchstone for their culture, and with such
        a fast breeding cycle, humans mutate socially at a fast rate. Human culture, therefore, is more diverse than
        other cultures, and no human names are truly typical. Some human parents give their children dwarven or elven
        names (pronounced more or less correctly).',
        'Human adventurers are the most audacious, daring, and ambitious members of an audacious, daring, and ambitious
        race. A human can earn glory in the eyes of her fellows by amassing power, wealth, and fame. Humans, more than
        other people, champion causes rather than territories or groups.',
        'Any');


/*------Human Feats------*/
INSERT INTO race_feats
VALUES (1, 'Human', 'Size',
        'Medium: As Medium creatures, humans have no special bonuses or penalties due to their size.'),
  (2, 'Human', 'Base Speed',
   'Human base land speed is 30 feet.'),
  (3, 'Human', 'Extra Feat',
   '1 extra feat at 1st level, because humans are quick to master specialized tasks and varied in their talents.'),
  (4, 'Human', 'Bonus Skill Points',
   '4 extra skill points at 1st level and 1 extra skill point at each additional level, since humans are versatile
   and capable. (The 4 skill points at 1st level are added on as a bonus, not multiplied in.)'),
  (5, 'Human', 'Languages',
   'Automatic Language: Common. Bonus Languages: Any (other than secret languages, such as Druidic).
   Humans mingle with all kinds of other folk and thus can learn any language found in an area.'),
  (6, 'Human', 'Favored Class',
   'Any. When determining whether a mutliclass human takes an experience point penalty, her highest-level class
   does not count.');


/*------Dwarf------*/
INSERT INTO races
VALUES (2, 'Dwarf', 0, 0, 2, 0, 0, -2,
           'Dwarves are known for their skill in warfare, their ability to withstand physical and magical punishment,
           their knowledge of the earth''s secrets, their hard work, and their capacity for drinking ale. Their
           mysterious kingdoms, carved out from the insides of mountains, are renowned for the marvelous treasures that
           they produce as gifts or for trade.',
           'Dwarves are slow to laugh or jest and suspicious of strangers, but they are generous to those few who earn
           their trust. Dwarves value gold, gems, jewelry, and art objects made with these precious materials, and they
           have been known to succumb to greed. They fight neither recklessly nor timidly, but with careful courage and
           tenacity. Their sense of justice is strong, but at its worst it can turn into a thirst for vengeance. Among
           gnomes, who get along famously with dwarves, a mild oath is "If I''m lying, may I cross a dwarf."',
           'Dwarves stand only 4 to 4.5 feet tall, but they are so broad and compact that they are, on average, almost
           as heavy as humans. Dwarf men are slightly taller and noticeably heaver than dwarf women. Dwarves'' skin is
           typically deep tan or light brown, and their eyes are dark. Their hair is usually black, gray, or brown, and
           worn long. Dwarf men value their beards highly and groom them very carefully. Dwarves favor simple styles for
           their hair, beards, and clothes. Dwarves are considered adults at about age 40, and they can live to be more
           than 400 years old.',
        'Dwarves get along fine with gnomes, and passably with humans, half-elves, and halflings. Dwarves say, "The
        difference between an acquaintance and a friend is about a hundred years." Humans, with their short life
        spans, have a hard time forging truly strong bonds with dwarves. The best dwarf-human friendship is often
        between a human and a dwarf who liked the human''s parents and grandparents. Dwarves fail to appreciate
        elves'' subtlety and art, regarding elves as unpredictable, fickle, and flighty. Still, elves and dwarves
        have, through the ages, found common cause in battles against orcs, goblins, and gnolls. Through many such
        joint campaigns, the elves have earned the dwarves'' grudging respect. Dwarves mistrust half-orcs in general,
        and the feeling is mutual. Luckily, dwarves are fair-minded, and they grand individual half-orcs the
        opportunity to prove themselves.',
        'Dwarves are usually lawful, and they tend toward good. Adventuring dwarves are less likely to fit the common
        mold, however, since they''re more likely to be those who did not fit perfectly into dwarven society.',
        'Dwarven kingdoms usually lie deep beneath the stony faces of mountains, where the dwarves mine gems and
        precious metals and forge items of wonder. Trustworthy members of other races are welcome in such
        settlements, though some parts of these lands are off limits even to them. Whatever wealth the dwarves can''t
        find in their mountains, they gain through trade. Dwarves dislike water travel, so enterprising humans
        frequently handle trade in dwarven goods when travel is along a water route.<br/><br/>
        Dwarves in human lands are typically mercenaries, weaponsmiths, armorsmiths, jewelers, and artisans. Dwarf
        bodyguards are renowned for their courage and loyalty, and they are well rewarded for their virtues.',
        'The chief deity of the dwarves is Moradin, the Soul Forger. He is the creator of the dwarves, and he expects
        his followers to work for the betterment of the dwarf race.',
        'Dwarves speak Dwarven, which has its own runic script. Dwarven literature is marked by comprehensive
        histories of kingdoms and wars through the millennia. The Dwarven alphabet is also used (with minor
        variations) for the Gnome, Giant, Goblin, Orc, and Terran languages. Dwarves often speak the languages of
        their friends (humans and gnomes) and enemies. Some also learn Terran, the strange language of earth-based
        creatures such as xorns.',
        'A dwarf''s name is granted to him by his clan elder, in accordance with tradition. Every proper dwarven name
        has been used and reused down through the generations. A dwarf''s name is not his own. It belongs to his
        clan. If he misuses it or brings shame to it, his clan will strip him of it. A dwarf stripped of his name is
        forbidden by dwarven law to use any dwarven name in its place.<br/><br/>
        Example Male Names:  Barendd, Brottor, Eberk, Einkil, Oskar, Rurik, Taklinn, Tordek, Traubon, Ulfgar,
        Veit.<br/><br/>
        Example Female Names:  Artin, Audhild, Dagnal, Diesa, Gunnloda, Hlin, Ilde, Liftrasa, Sannl,
        Torgga.<br/><br/>
        Example Clan Names:  Balderk, Dankil, Gorunn, Holderhek, Loderr, Lutgehr, Rumnaheim, Strakeln, Torunn,
        Ungart.',
        'A dwarf adventurer may be motivated by crusading zeal, a love of excitement, or simple greed. As long as
        his accomplishments bring honor to his clan, his deeds earn him respect and status. Defeating giants and claiming
        powerful magic weapons are sure ways for a dwarf to earn the respect of other dwarves.',
        'Fighter');


/*------Dwarf Feats------*/
INSERT INTO race_feats
VALUES (7, 'Dwarf', 'Ability Modifiers',
        '+2 Constitution, -2 Charisma: Dwarves are stout and tough but tend to be gruff and reserved.'),
  (8, 'Dwarf', 'Size',
   'Medium:  As Medium creatures, dwarves have no special bonuses or penalties due to their size.'),
  (9, 'Dwarf', 'Base Speed',
   'Dwarf base land speed is 20 feet. However, dwarves can move at this speed even when wearing medium or heavy
   armor or when carrying a medium or heavy load (unlike other creatures, whose speed is reduced in such
   situations).'),
  (10, 'Dwarf', 'Darkvision',
   'Dwarves can see in the dark up to 60 feet. Darkvision is black and white only, but it is otherwise like normal
   sight, and dwarves can function just fine with no light at all.'),
  (11, 'Dwarf', 'Stonecunning',
   'This ability grants a dwarf a +2 racial bonus on Search checks to notice unusual stonework, such as sliding
   walls, stonework traps, new construction (even when built to match the old), unsafe stone surfaces, shaky stone
   ceilings, and the like. Something that isn''t stone but that is disguised as stone also counts as unusual
   stonework. A dwarf who merely comes within 10 feet of unusual stonework can make a Search check as if he were
   actively searching, and a dwarf can use the Search skill to find stonework traps as a rogue can. A dwarf can
   also intuit depth, sensing his approximate depth underground as naturally as a human can sense which way is up.
   Dwarves have a sixth sense about stonework, an innate ability that they get plenty of opportunity to practice
   and hone in their underground homes.'),
  (12, 'Dwarf', 'Weapon Familiarity',
   'Dwarves may treat dwarven waraxes and dwarven urgroshes as martial weapons, rather than exotic weapons.'),
  (13, 'Dwarf', 'Stability',
   'Dwarves are exceptionally stable on their feet. A dwarf gains a +4 bonus on ability checks made to resist being
   bull rushed or tripped when standing on the ground (but not when climbing, flying, riding, or otherwise not
   standing firmly on the ground).'),
  (14, 'Dwarf', 'Poison',
   '+2 racial bonus on saving throws against poison: Dwarves are hardy and resistant to toxins.'),
  (15, 'Dwarf', 'Spell Effects',
   '+2 racial bonus on saving throws against spells and spell-like effects: Dwarves have an innate resistance to
   magic spells.'),
  (16, 'Dwarf', 'Attack Bonus',
   '+1 racial bonus on attack rolls against orcs (including half-orcs) and goblinoids (including goblins,
   hobgoblins, and bugbears): Dwarves are trained in the special combat techniques that allow them to fight their
   common enemies more effectively.'),
  (17, 'Dwarf', 'Dodge Bonus',
   '+4 dodge bonus to Armor Class against monsters of the giant type (such as ogres, trolls, and hill giants): This
   bonus represents special training that dwarves undergo, during which they learn tricks that previous generations
   developed in their battles with giants. Any time a creature loses its Dexterity bonus (if any) to Armor Class,
   such as when it''s caught flat-footed, it loses its dodge bonus, too.'),
  (18, 'Dwarf', 'Appraisal',
   '+2 racial bonus on Appraise checks that are related to stone or metal items: Dwarves are familiar with valuable
   items of all kinds, especially those made of stone or metal.'),
  (19, 'Dwarf', 'Crafting',
   '+2 racial bonus on Craft checks that are related to stone or metal:  Dwarves are especially capable with
   stonework and metalwork.'),
  (20, 'Dwarf', 'Languages',
   'Automatic Languages: Common and Dwarven. Bonus Languages: Giant, Gnome, Goblin, Orc, Terran, and Undercommon.
   Dwarves are familiar with the languages of their enemies and of their subterranean allies.'),
  (21, 'Dwarf', 'Favored Class',
   'Fighter. A multiclass dwarf''s fighter class does not count when determining whether he takes an experience
   point penalty for mutliclassing. Dwarven culture extols the virtues of battle, and the vocation comes easily to
   dwarves.');


/*------Elf------*/
INSERT INTO races
VALUES (3, 'Elf', 0, 2, -2, 0, 0, 0,
           'Elves mingle freely in human lands, always welcome yet never at home there. They are well known for their
           poetry, dance, song, lore, and magical arts. Elves favor things of natural and simple beauty. When danger
           threatens their woodland homes, however, elves reveal a more martial side, demonstrating skill with sword,
           bow, and battle strategy.',
           'Elves are more often amused than excited, and more likely to be curious than greedy. With such a long life
           span, they tend to keep a broad perspective on events, remaining aloof and unfazed by petty happenstance.
           When pursuing a goal, however, whether an adventurous mission or learning a new skill or art, they can be
           focused and relentless. They are slow to make friends and enemies, and even slower to forget them. They reply
           to petty insults with disdain and to serious insults with vengeance.',
           'Elves are short and slim, standing about 4.5 to 5.5 feet tall and typically weighing 95 to 135 pounds, with
           elf men the same height as and only marginally heavier than elf women. They are graceful but frail. They tend
           to be pale-skinned and dark-haired, with deep green eyes. Elves have no facial or body hair. They prefer
           simple, comfortable clothes, especially in pastel blues and greens, and they enjoy simple yet elegant
           jewelry. Elves possess unearthly grace and fine features. Many humans and members of other races find them
           hauntingly beautiful. An elf reaches adulthood at about 110 years of age and can live to be more than 700
           years old.<br/><br/>
           Elves do not sleep, as members of the other common races do. Instead, an elf meditates in a deep trance for
           4 hours a day. An elf resting in this fashion gains the same benefit that a human does from 8 hours of sleep.
           While meditating, an elf dreams, though these dreams are actually mental exercises that have become reflexive
           through years of practice. The Common word for an elf''s meditation is "trance," as in "four hours of
           trance."',
        'Elves consider humans rather unrefined, halflings a bit staid, gnomes somewhat trivial, and dwarves not at
        all fun. They look on half-elves with some degree of pity, and they regard half-orcs with unrelenting suspicion.
        While haughty, elves are not particular the way halflings and dwarves can be, and they are generally pleasant
        and gracious even to those who fall short of elven standards (a category that encompasses just about everybody
        who''s not an elf).',
        'Since elves love freedom, variety, and self-expression, they lean strongly toward the gentler aspects of chaos.
        Generally, they value and protect others'' freedom as well as their own, and they are more often good than
        not.',
        'Most elves live in woodland clans numbering less than two hundred souls. Their well-hidden villages blend into
        the trees, doing little harm to the forest. They hunt game, gather food, and grow vegetables, and their skill
        and magic allow them to support themselves amply without the need for clearing and plowing land. Their contact
        with outsiders is usually limited, though some few elves make a good living trading finely worked elven clothes
        and crafts for the metals that elves have to interest in mining.<br/><br/>
        Elves encountered in human lands are commonly wandering minstrels, favored artists, or sages. Human nobles
        compete for the services of elf instructors, who teach swordplay to their children.',
        'Above all others, elves worship Corellon Larethian, the Protector and Preserver of life. Elven myth holds that
        it was from his blood, shed in battles with Gruumsh, the god of the orcs, that the elves first arose. Corellon
        is a patron of magical study, arts, dance, and poetry, as well as a powerful warrior god.',
        'Elves speak a fluid language of subtle intonations and intricate grammar. While Elven literature is rich and
        varied, it is the language''s songs and poems that are most famous. Many bards learn Elven so they can add Elven
        ballads to their repertoires. Others simply memorize Elven songs by sound. The Elven script, as flowing as the
        spoken word, also serves as the script for Sylvan, the language of dryads and pixies, for Aquan, the language of
        water-based creatures, and for Undercommon, the language of drow and other subterranean creatures.',
        'When an elf declares herself an adult, usually some time after her hundredth birthday, she also selects a name.
        Those who knew her as a youngster may or may not continue to call her by her "child name," and she may or may
        not care. An elf''s adult name is a unique creation, thought it may reflect the names of those she admires or
        the names of others in her family. In addition, she bears her family name. Family names are combinations of
        regular Elven words; some elves traveling among humans translate their family names into Common, while others
        use the Elven version.<br/><br/>
        Example Male Names:  Aramil, Aust, Enialis, Heian, Himo, Ivellios, Laucian, Quarion, Soveliss, Thamior,
        Tharivol.<br/><br/>
        Example Female Names:  Anastrianna, Antinua, Drusilia, Felosial, Ielenia, Lia, Mialee, Qillathe, Silaqui,
        Vadania, Valanthe, Xanaphia.<br/><br/>
        Family Names (Common Translations):  Amastacia (Starflower), Amakiir (Gemflower), Galanodel (Moonwhisper),
        Holimion (Diamonddew), Liadon (Silverfrond), Meliamne (Oakenheel), Nailo (Nightbreeze), Siannodel (Moonbrook),
        Ilphukiir (Gemblossom), Xiloscient (Goldpetal).',
        'Elves take up adventuring out of wanderlust. Life among humans moves at a pace that elves dislike: regimented
        from day to day but changing from decade to decade. Elves among humans, therefore, find careers that allow them
        to wander freely and set their own pace. Elves also enjoy demonstrating their prowess with the sword and bow or
        gaining greater magical powers, and adventuring allows them to do so. Good elves may also be rebels or
        crusaders.',
        'Wizard');


/*------Elf Feats------*/
INSERT INTO race_feats
VALUES (22, 'Elf', 'Ability Modifiers',
        '+2 Dexterity, -2 Constitution: Elves are graceful but frail. An elf''s grace makes her naturally better at
        stealth and archery.'),
  (23, 'Elf', 'Size',
   'Medium: As Medium creatures, elves have no special bonuses or penalties due to their size.'),
  (24, 'Elf', 'Base Speed',
   'Elf base land speed is 30 feet.'),
  (25, 'Elf', 'Magic Resistance',
   'Immunity to magic sleep effects, and a +2 racial saving throw bonus against enchantment spells or effects.'),
  (26, 'Elf', 'Low-Light Vision',
   'An elf can see twice as far as a human in starlight, moonlight, torchlight, and similar conditions of poor
   illumination. She retains the ability to distinguish color and detail under these conditions.'),
  (27, 'Elf', 'Weapon Proficiency',
   'Elves receive the Martial Weapon Proficiency feats for the longsword, rapier, longbow (including composite
   longbow), and shortbow (including composite shortbow) as bonus feats. Elves esteem the arts of swordplay and
   archery, so all elves are familiar with these weapons.'),
  (28, 'Elf', 'Keen Senses',
   '+2 racial bonus on Listen, Search, and Spot checks. An elf who merely passes within 5 feet of a secret or
   concealed door is entitled to a Search check to notice it as if she were actively looking for it. An elf''s
   senses are so keen that she practically has a sixth sense about hidden portals.'),
  (29, 'Elf', 'Languages',
   'Automatic Languages:  Common and Elven.  Bonus Languages:  Draconic, Gnoll, Gnome, Goblin, Orc, and Sylvan.
   Elves commonly know the languages of their enemies and of their friends, as well as Draconic, the language
   commonly found in ancient tomes of secret knowledge.'),
  (30, 'Elf', 'Favored Class',
   'Wizard. A mutliclass elf''s wizard class does not count when determining whether she takes an experience point
   penalty for mutliclassing. Wizardry comes naturally to elves - indeed, they sometimes claim to have invented it,
   and fighter/wizards are especially common among them.');


/*------Gnome------*/
INSERT INTO races
VALUES (4, 'Gnome', -2, 0, 2, 0, 0, 0,
           'Gnomes are welcome everywhere as technicians, alchemists, and inventors. Despite the demand for their
           skills, most gnomes prefer to remain among their own kind, living in comfortable burrows beneath rolling,
           wooded hills where animals abound.',
           'Gnomes adore animals, beautiful gems, and jokes of all kinds. Members of this race have a great sense of
           humor, and while they love puns, jokes, and games, they also relish tricks - the more intricate the better.
           They apply the same dedication to more practical arts, such as engineering, as they do to their
           pranks.<br/><br/>
           Gnomes are inquisitive. They love to find things out by personal experience. At times they''re even reckless.
           Their curiosity makes them skilled engineers, since they are always trying new ways to build things.
           Sometimes a gnome pulls a prank just to see how the people involved will react.',
           'Gnomes stand about 3 to 3.5 feet tall and weigh 40 to 45 pounds. Their skin ranges from dark tan to woody
           brown, their hair is fair, and their eyes can be any shade of blue. Gnome males prefer short, carefully
           trimmed beards. Gnomes generally wear leather or earth tones, and they decorate their clothes with intricate
           stitching or fine jewelry. Gnomes reach adulthood at about age 40, and they typically live about 350 years,
           though some can live almost 500 years.',
        'Gnomes get along well with dwarves, who share their love of precious objects, their curiosity about mechanical
        devices, and their hatred of goblins and giants. They enjoy the company of halflings, especially those who are
        easygoing enough to put up with pranks and jests. Most gnomes are a little suspicious of the taller races -
        humans, elves, half-elves, and half-orcs - but they are rarely hostile or malicious.',
        'Gnomes are most often good. Those who tend toward law are sages, engineers, researchers, scholars,
        investigators, or consultants. Those who tend toward chaos are minstrels, tricksters, wanderers, or fanciful
        jewelers. Gnomes are good-hearted, and even the tricksters among them are more playful than vicious. Evil gnomes
        are as rare as they are frightening.',
        'Gnomes make their homes in hilly, wooded lands. They live underground but get more fresh air than dwarves do,
        enjoying the natural, living world on the surface whenever they can. Their homes are well hidden by both clever
        construction and illusions. Those who come to visit and are welcome are ushered into the bright, warm burrows.
        Those who are not welcome never find the burrows in the first place.<br/><br/>
        Gnomes who settle in human lands are commonly gemcutters, mechanics, sages, or tutors. Some human families
        retain gnome tutors. During his life, a gnome tutor can teach several generations of a single human family.',
        'The chief gnome god is Garl Glittergold, the Watchful Protector. His clerics teach that gnomes are to cherish
        and support their communities. Pranks are seen as ways to lighten spirits and to keep gnomes humble, not as ways
        for pranksters to triumph over those they trick.',
        'The Gnome language, which uses teh Dwarven script, is renowned for its technical treatises and its catalogs of
        knowledge about the natural world. Human herbalists, naturalists, and engineers commonly learn Gnome in order to
        read the best books on their topic of study.',
        'Gnomes love names, and most have half a dozen or so. As a gnome grows up, his mother gives him a name, his
        father gives him a name, his clan elder gives him a name, his aunts and uncles give him names, and he gains
        nicknames from just about anyone. Gnome names are typically variants on the names of ancestors or distant
        relatives, though some are purely new inventions. When dealing with humans and others who are rather "stuffy"
        about names, a gnome learns to act as if he has no more than three names:  a personal name, a clan name, and a
        nickname. When deciding which of his several names to use among humans, a gnome generally chooses the one
        that''s the most fun to say. Gnome clan names are combinations of common Gnome words, and gnomes almost always
        translate them into Common when in human lands (or into Elven when in elven lands, and so on).<br/><br/>
        Example Male Names: Boddynock, Dimble, Fonkin, Gimble, Glim, Gerbo, Jebeddo, Namfoodle, Roondar, Seebo,
        Zook.<br/><br/>
        Example Female Names: Bimpnottin, Caramip, Duvamil, Ellywick, Ellyjobell, Loopmottin, Mardnab, Roywyn, Shamil,
        Waywocket.<br/><br/>
        Example Clan Names: Beren, Daergel, Folkor, Garrick, Nackle, Murnig, Ningel, Raulnor, Scheppen, Turen.<br/><br/>
        Example nicknames: Aleslosh, Ashhearth, Badger, Cloak, Doublelock, Filchbatter, Fnipper, Oneshoe, Sparklegem,
        Stumbleduck.',
        'Gnomes are curious and impulsive. They may take up adventuring as a way to see the world or for the love of
        exploring. Lawful gnomes may adventure to set things right and protect the innocent, demonstrating the same
        sense of duty toward society as a whole that gnomes generally exhibit toward their own enclaves. As lovers of
        gems and other fine items, some gnomes take to adventuring as a quick, if dangerous, path to wealth. Depending
        on his relations to his home clan, an adventuring gnome may be seen as a vagabond or even as something of a
        traitor (for abandoning clan responsibilities).',
        'Bard');


/*------Elf Feats------*/
INSERT INTO race_feats
VALUES (31, 'Gnome', 'Ability Modifiers',
        '+2 Constitution, -2 Strength: Like dwarves, gnomes are tough, but they are small and therefore not as strong
        as larger humanoids.'),
  (32, 'Gnome', 'Size',
   'Small: As a Small creature, a gnomes gains a +1 size bonus to Armor Class, a +1 size bonus on attack rolls, and
   a +4 size bonus on Hide checks, but he uses smaller weapons than humans use, and his lifting and carrying limits
   are three-quarters of those of a Medium character.'),
  (33, 'Gnome', 'Speed',
   'Gnome base land speed is 20 feet.'),
  (34, 'Gnome', 'Low-Light Vision',
   'A gnome can see twice as far as a human in starlight, moonlight, torchlight, and similar conditions of poor
   illumination. He retains the ability to distinguish color and detail under these conditions.'),
  (35, 'Gnome', 'Weapon Familiarity',
   'Gnomes may treat gnome hooked hammers as martial weapons rather than exotic weapons.'),
  (36, 'Gnome', 'Illusion Resistance',
   '+2 racial bonus on saving throws against illusions: Gnomes are innately familiar with illusions of all
   kinds.'),
  (37, 'Gnome', 'Illusion Difficulty Class',
   'Add +1 to the Difficulty Class for all saving throws against illusion spells cast by gnomes. Their innate
   familiarity with these effects make their illusions more difficult to see through. This adjustment stacks with
   those from similar effects, such as the Spell Focus feat.'),
  (38, 'Gnome', 'Attack Bonus',
   '+1 racial bonus on attack rolls against kobolds and goblinoids (including goblins, hobgoblins, and bugbears):
   Gnomes battle these creatures frequently and practice special techniques for fighting them.'),
  (39, 'Gnome', 'Dodge Bonus',
   '+4 dodge bonus to Armor Class against monster of the giant type (such as ogres, trolls, and hill giants): This
   bonus represents special training that gnomes undergo, during which they learn tricks that previous generations
   developed in their battles with giants. Any time a creature loses its Dexterity bonus (if any) to Armor Class,
   such as when it''s caught flat-footed, it loses its dodge bonus, too.'),
  (40, 'Gnome', 'Keen Senses',
   '+2 racial bonus on Listen checks: Gnomes have keen ears.'),
  (41, 'Gnome', 'Crafting',
   '+2 racial bonus on Craft (alchemy) checks: A gnome''s sensitive nose allows him to monitor alchemical
   processes by smell.'),
  (42, 'Gnome', 'Languages',
   'Automatic Languages: Common and Gnome. Bonus Languages: Draconic, Dwarven, Elven, Giant, Goblin, and Orc.
   Gnomes deal more with elves and dwarves than elves and dwarves deal with one another, and they learn the
   languages of their enemies (kobolds, giants, goblins, and orcs) as well. In addition, a gnome can speak with a
   burrowing mammal (a badger, fox, rabbit, or the like). This ability is innate to gnomes.'),
  (43, 'Gnome', 'Spell-Like Abilities',
   '1/day - <i>speak with animals</i> (burrowing mammal only, duration 1 minute). A gnome with a Charisma score of
   at least 10 also has the following spell-like abilities: 1/day - <i>dancing lights</i>, <i>ghost sound</i>,
   <i>prestidigitation</i>. Caster level 1st; save DC 10 + gnome''s Charisma modifier + spell level.'),
  (44, 'Gnome', 'Favored Class',
   'Bard. A multiclass gnome''s bard class does not count when determining whether he takes an experience point
   penalty.');


/*------Half-Elf------*/
INSERT INTO races
VALUES (5, 'Half-Elf', 0, 0, 0, 0, 0, 0,
           'Humans and elves sometimes wed, the elf attracted to the human''s energy and the human to the elf''s grace.
           These marriages end quickly as elves count years because a human''s life is so brief, but they leave an
           enduring legacy - half-elf children.<br/><br/>
           The life of a half-elf can be hard. If raised by elves, the half-elf seems to grow with astounding speed,
           reaching maturity within two decades. The half-elf becomes an adult long before she has had time to learn
           the intricacies of elven art and culture, or even grammar. She leaves behind her childhood friends, becoming
           physically an adult but culturally still a child by elven standards. Typically, she leaves her elven home,
           which is no longer familiar, and finds her way among humans.<br/><br/>
           If, on the other hand, she is raised by humans, the half-elf finds herself different from her peers: more
           aloof, more sensitive, less ambitious, and slower to mature. SOme half-elves try to fit in among humans,
           while others find their identities in their differences. Most find places for themselves in human lands, but
           some feel like outsiders all their lives.',
           'Most half-elves have the curiosity, inventiveness, and ambition of the human parent, along with the refined
           senses, love of nature, and artistic tastes of the elf parent.',
           'To humans, half-elves look like elves. To elves, they look like humans - indeed, elves call them
           half-humans. Half-elf height ranges from under 5 feet to about 6 feet tall, and weight usually ranges from
           100 to 180 pounds. Half-elf men are taller and heavier than half-elf women, but the difference is less
           pronounced than that found among humans. Half-elves are paler, fairer, and smoother-skinned than their human
           parents, but their actual skin tone, hair color, and other details vary just as human features do.
           Half-elves'' eyes are green, just as are those of their elf parents. A half-elf reaches adulthood at age 20
           and can live to be more than 180 years old.<br/><br/>
           Most half-elves are the children of human/elf pairings. Some, however, are the children of parents who
           themselves are partly human and partly elf. Some of these "second generation" half-elves have humanlike eyes,
           but most still have green eyes.',
        'Half-elves do well among both elves and humans, and they also get along well with dwarves, gnomes, and
        halflings. They have elves grace without elven aloofness and human energy without human boorishness. They make
        excellent ambassadors and go-betweens (except between elves and humans, since each side suspects the half-elf of
        favoring the other). In human lands where elves are distant or not on friendly terms with other races, however,
        half-elves are viewed with suspicion.<br/><br/>
        Some half-elves show a marked disfavor toward half-orcs. Perhaps the similarity between themselves and half-orcs
        (a partly human lineage) makes these half-elves uncomfortable.',
        'Half-elves share the chaotic bent of their elven heritage, but, like humans, they tend toward both good and
        evil in equal proportion. Like elves, they value personal freedom and creative expression, demonstrating neither
        love of leaders nor desire for followers. They chafe at rules, resent others'' demands, and sometimes prove
        unreliable, or at least unpredictable.',
        'Half-elves have no lands of their own, though they are welcome in human cities and elven forests. In large
        cities, half-elves sometimes form small communities of their own.',
        'Half-elves raised among elves follow elven deities, principally Corellon Larethian (god of the elves). Those
        raised among humans often follow Ehlonna (goddess of the woodlands).',
        'Half-elves speak the languages they are born to, Common and Elven. Half-elves are slightly clumsy with the
        intricate Elven language, though only elves notice, and even so half-elves do better than nonelves.',
        'Half-elves use either human or elven naming conventions. Ironically, a half-elf raised among humans is often
        given an elven name in honor of her heritage, just as a half-elf raised among elves often takes a human name.',
        'Half-elves find themselves drawn to strange careers and unusual company. Taking up the life of an adventurer
        comes easily to many of them. Like elves, they are driven by wanderlust.',
        'Any');


/*------Half-Elf Feats------*/
INSERT INTO race_feats
VALUES (45, 'Half-Elf', 'Size',
        'Medium: As Medium characters, half-elves have no special bonuses or penalties due to their size.'),
  (46, 'Half-Elf', 'Base Speed',
   'Half-elf base land speed is 30 feet.'),
  (47, 'Half-Elf', 'Spell Resistance',
   'Immunity to <i>sleep</i> spells and similar magic effects, and a +2 racial bonus on saving throws against
   enchantment spells and effects.'),
  (48, 'Half-Elf', 'Low-Light Vision',
   'A half-elf can see twice as far as a human in starlight, moonlight, torchlight, and similar conditions of poor
   illumination. She retains the ability to distinguish color and detail under these conditions.'),
  (49, 'Half-Elf', 'Keen Senses',
   '+1 racial bonus on Listen, Search, and Spot checks: A half-elf does not have the elf''s ability to notice secret
   doors simply by passing near them. Half-elves have keen senses, but not as keen as those of an elf.'),
  (50, 'Half-Elf', 'Diplomatic',
   '+2 racial bonus on Diplomacy and Gather Information checks: Half-elves get along naturally with all people.'),
  (51, 'Half-Elf', 'Elven Blood',
   'For all effects related to race, a half-elf is considered an elf. Half-elves, for example, are just as vulnerable
   to special effects that affect elves as their elf ancestors are, and they can use magic items that are only usable
   by elves.'),
  (52, 'Half-Elf', 'Languages',
   'Automatic Languages: Common and Elven. Bonus Languages: Any (other than secret languages, such as Druidic).
   Half-elves have all the versatility and broad (if shallow) experience that humans have.'),
  (53, 'Half-Elf', 'Favored Class',
   'Any. When determining whether a multiclass half-elf takes an experience point penalty, her highest-level class
   does not count.');


/*------Half-Orc------*/
INSERT INTO races
VALUES (6, 'Half-Orc', 2, 0, 0, -2, 0, -2,
           'In the wild frontiers, tribes of human and orc barbarians live in uneasy balance, fighting in times of war
           and trading in times of peace. Half-orcs who are born in the frontier may live with either human or orc
           parents, but they are nevertheless exposed to both cultures. Some, for whatever reason, leave their homeland
           and travel to civilized lands, bringing with them the tenacity, courage, and combat prowess that they
           developed in the wilds.',
           'Half-orcs tend to be short-tempered and sullen. They would rather act than ponder and would rather fight
           than argue. Those who are successful, however, are the ones with enough self-control to live in a civilized
           land, not the crazy ones.<br/><br/>
           Half-orcs love simple pleasures such as feasting, drinking, boasting, singing, wrestling, drumming, and wild
           dancing. Refined enjoyments such as poetry, courtly dancing, and philosophy are lost on them. At the right
           sort of party, a half-orc is an asset. At the duchess''s grand ball, he''s a liability.',
           'Half-orcs stand between 6 and 7 feet tall and usually weigh between 180 and 250 pounds. A half-orc''s
           grayish pigmentation, sloping forehead, jutting jaw, prominent teeth, and coarse body hair make his lineage
           plain for all to see.<br/><br/>
           Orcs like scars. They regard battle scars as tokens of pride and ornamental scars as things of beauty. Any
           half-orc who has lived among or near orcs has scars, whether they are marks of shame indicating servitude and
           identifying the half-orc''s former owner, or marks of pride recounting conquests and high status. Such a
           half-orc living among humans may either display or hide his scars, depending on his attitude toward
           them.<br/><br/>
           Half-orcs mature a little faster than humans and age noticeably faster. They reach adulthood at age 14, and
           few live longer than 75 years.',
        'Because orcs are sworn enemies of dwarves and elves, half-orcs can have a rough time with members of these
        races. For that matter, orcs aren''t exactly on good terms with humans, halflings, or gnomes, either. Each
        half-orc finds a way to gain acceptance from those who hate or fear his orc cousins. Some half-orcs are
        reserved, trying not to draw attention to themselves. A few demonstrate piety and good-heartedness as publicly
        as they can (whether or not such demonstrations are genuine). Others simply try to be so tough that others have
        no choice but to accept them.',
        'Half-orcs inherit a tendency toward chaos from their orc parents, but, like their human parents, they favor
        good and evil in equal proportions. Half-orcs raised among orcs and willing to live out their lives with them
        are usually the evil ones.',
        'Half-orcs have no lands of their own, but they most often live among orcs. Of the other races, humans are the
        ones most likely to accept half-orcs, and half-orcs almost always live in human lands when not living among orc
        tribes.',
        'Like orcs, many half-orcs worship Gruumsh, the chief orc god and the archenemy of Corellon Larethian, god of
        the elves. While Gruumsh is evil, half-orc barbarians and fighters may worship him as a war god even if they are
        not evil themselves. Worshipers of Gruumsh who are tired of explaining themselves, or who don''t want to give
        humans a reason to distrust them, simply don''t make their religion public knowledge. Half-orcs who want to
        solidify their connection to their human heritage, on the other hand, follow human gods, and they may be
        outspoken in their shows of piety.',
        'Orc, which has no alphabet of its own, uses Dwarven script on the rare occasions when someone writes something
        down. Orc writing turns up most frequently in graffiti.',
        'A half-orc typically chooses a name that helps him make the impression that he wants to make. If he wants to
        fit in among humans, he chooses a human name. If he wants to intimidate others, he chooses a guttural orc name.
        A half-orc who has been raised entirely by humans has a human given name, but he may choose another name once
        he''s away from his hometown. Some half-orcs, of course, aren''t quite bright enough to choose a name this
        carefully.<br/><br/>
        Example Male Names: Dench, Feng, Gell, Henk, Holg, Imsh, Keth, Krusk, Ront, Shump, Thokk.<br/><br/>
        Example Female Names: Baggi, Emen, Engong, Myev, Neega, Ovak, Ownka, Shautha, Vola, Volen.',
        'Half-orcs living among humans are drawn almost invariably toward violent careers in which they can put their
        strength to good use. Frequently shunned from polite company, half-orcs often find acceptance and friendship
        among adventurers, many of whom are fellow wanderers and outsiders.',
        'Barbarian');


/*------Half-Orc Feats------*/
INSERT INTO race_feats
VALUES (54, 'Half-Orc', 'Ability Modifiers',
        '+2 Strength, -2 Intelligence, -2 Charisma: Half-orcs are strong, but their orc lineage makes them dull and
        crude.'),
  (55, 'Half-Orc', 'Size',
   'Medium: As Medium creatures, half-orcs have no special bonuses or penalties due to their size.'),
  (56, 'Half-Orc', 'Base Speed',
   'Half-orc base land speed is 30 feet.'),
  (57, 'Half-Orc', 'Darkvision',
   'Half-orcs (and orcs) can see in the dark up to 60 feet. Darkvision is black and white only, but it is otherwise
   like normal sight, and half-orcs can function just fine with no light at all.'),
  (58, 'Half-Orc', 'Orc Blood',
   'For all effects related to race, a half-orc is considered an orc. Half-orcs, for example, are just as vulnerable to
   special effects that affect orcs as their orc ancestors are, and they can use magic items that are only usable by
   orcs.'),
  (59, 'Half-Orc', 'Languages',
   'Automatic Languages: Common and Orc. Bonus Languages: Draconic, Giant, Gnoll, Goblin, and Abyssal. Smart half-orcs
   (who are rare) may know the languages of their allies or rivals.'),
  (60, 'Half-Orc', 'Favored Class',
   'Barbarian. A multiclass half-orc''s barbarian class does not count when determining whether he takes an experience
   point penalty. Ferocity runs in a half-orc''s veins.');


/*------Halfling------*/
INSERT INTO races
VALUES (7, 'Halfling', -2, 2, 0, 0, 0, 0,
           'Halflings are clever, capable opportunists. Halfling individuals and clans find room for themselves wherever
           they can. Often they are strangers and wanderers, and others react to them with suspicion or curiosity.
           Depending on the clan, halflings might be reliable, hard-working (if clannish) citizens, or they might be
           thieves just waiting for the opportunity to make a big score and disappear in the dead of night. Regardless,
           halflings are cunning, resourceful survivors.',
           'Halflings prefer trouble to boredom. They are notoriously curious. Relying on their ability to survive or
           escape danger, they demonstrate a daring that many larger people can''t match. Halfling clans are nomadic,
           wandering wherever circumstance and curiosity take them. Halflings enjoy wealth and the pleasures it can
           bring, and they tend to spend gold as quickly as they acquire it.<br/><br/>
           Halflings are also famous collectors. While more orthodox halflings may collect weapons, books, or jewelry,
           some collect such objects as the hides of wild beasts - or even the beasts themselves. Wealthy halflings
           sometimes commission adventurers to retrieve exotic items to complete their collections.',
           'Halflings stand about 3 feet tall and usually weigh between 30 and 35 pounds. Their skin is ruddy, and their
           hair is black and straight. They have brown or black eyes. Halfling men often have long sideburns, but beards
           are rare among them and mustaches are almost unseen. They like to wear simple, comfortable, and practical
           clothes. A halfling reaches adulthood at the age of 20 and generally lives into the middle of her second
           century.',
        'Halflings try to get along with everyone else. They are adept at fitting into a community of humans,
        dwarves, elves, or gnomes and making themselves valuable and welcome. Since human society changes faster than
        the societies of the longer-lived races, it is human society that most frequently offers halflings
        opportunities to exploit, so halflings are most often found in or around human lands.',
        'Halflings tend to be neutral. While they are comfortable with change (a chaotic trait), they also tend to
        rely on intangible constants, such as clan ties and personal honor (a lawful trait).',
        'Halflings have no lands of their own. Instead, they live in the lands of other races, where they can benefit
        from whatever resources those areas have to offer. Halflings often form tight-knit communities in human or
        dwarven cities. While they work readily with others, they often make friends only among their own kind.
        Halflings also settle into secluded places where they set up self-reliant villages. Halfling communities,
        however, are known for picking up and moving en masse to some place that offers a new opportunity, such as a
        new mine that has just opened, or to a land where a devastating war has made skilled workers hard to find. If
        these opportunities are temporary, the community may pick up and move again once the opportunity is gone, or
        once a better one presents itself. Some halfling communities, on the other hand, take to traveling as a way
        of life, driving wagons or guiding boats from place to place and maintaining no permanent home.',
        'The chief halfling deity is Yondalla, the Blessed One, protector of the halflings. Yondalla promises
        blessings and protection to those who heed her guidance, defend their clans, and cherish their families.
        Halflings also recognize countless lesser gods, who rule over individual villages, forests, rivers, lakes,
        and so on. The halflings pay homage to these deities to ensure safe journeys as they travel from place to
        place.',
        'Halflings speak their own language, which uses the Common script. They write very little in their own
        language, so, unlike dwarves, elves, and gnomes, they don''t have a rich body of written work. The halfling
        oral tradition, however, is very strong. While the Halfling language isn''t secret, halflings are loath to
        share it with others. Almost all halflings speak Common, since they use it to deal with the people in whose
        lands they are living or through which they are traveling.',
        'A halfling has a given name, a family name, and possibly a nickname. It would seem that family names are
        nothing more than nicknames that stuck so well they have been passed down through the generations.<br/><br/>
        Example Male Names: Alton, Beau, Cade, Eldon, Garret, Lyle, Milo, Osborn, Roscoe, Wellby.<br/><br/>
        Example Female Names: Amaryllis, Charmaine, Cora, Euphemia, Jillian, Lavinia, Lidda, Merla, Portia,
        Seraphina, Verna.<br/><br/>
        Example Family Names: Brushgather, Goodbarrel, Greenbottle, Highhill, Hilltopple, Leagallow, Tealeaf,
        Thorngage, Tosscobble, Underbough.',
        'Halflings often set out on their own to make their way in the world. Halfling adventurers are typically
        looking for a way to use their skills to gain wealth or status. The distinction between a halfling adventurer
        and a halfling out on her own looking for "a big score" can get blurry. For a halfling, adventuring is less of
        a career than an opportunity. While halfling opportunism can sometimes look like larceny or fraud to others, a
        halfling adventurer who learns to trust her fellows is worthy of trust in return.',
        'Rogue');


/*------Halfling Feats------*/
INSERT INTO race_feats
VALUES (61, 'Halfling', 'Ability Modifiers',
        '+2 Dexterity, -2 Strength: Halflings are quick, agile, and good with ranged weapons, but they are small and
        therefore not as strong as other humanoids.'),
  (62, 'Halfling', 'Size',
   'Small: As a Small creature, a halfling gains a +1 size bonus to Armor Class, a +1 size bonus on attack rolls, and a
   +4 size bonus on Hide checks, but she uses smaller weapons than humans use, and her lifting and carrying limits are
   three-quarters of those of a Medium character.'),
  (63, 'Halfling', 'Base Speed',
   'Halfling base land speed is 20 feet.'),
  (64, 'Halfling', 'Agility',
   '+2 racial bonus on Climb, Jump, and Move Silently checks: Halflings are agile, surefooted, and athletic.'),
  (65, 'Halfling', 'Saving Throws',
   '+1 racial bonus on all saving throws: Halflings are surprisingly capable of avoiding mishaps.'),
  (66, 'Halfling', 'Fearless',
   '+2 morale bonus on saving throws against fear: This bonus stacks with the halfling''s +1 bonus on saving throws in
   general.'),
  (67, 'Halfling', 'Good Aim',
   '+1 racial bonus on attack rolls with thrown weapons and slings: Throwing and slinging stones is a universal sport
   among halflings, and they develop especially good aim.'),
  (68, 'Halfling', 'Keen Senses',
   '+2 racial bonus on Listen checks: Halflings have keen ears.'),
  (69, 'Halfling', 'Languages',
   'Automatic Languages: Common and Halfling. Bonus Languages: Dwarven, Elven, Gnome, Goblin, and Orc. Smart halflings
   learn the languages of their friends and enemies.'),
  (70, 'Halfling', 'Favored Class',
   'Rogue. A multiclass halfling''s rogue class does not count when determining whether she takes an experience point
   penalty for multiclassing. Halflings have long had to rely on stealth, wit, and skill, and the vocation of rogue
   comes naturally to them.');


















INSERT INTO classes VALUES (4, 'Druid',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                            '',
                            '',
                            '',
                            '',
                            12);

INSERT INTO classes VALUES (5, 'Fighter',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                            '',
                            '',
                            '',
                            '',
                            12);

INSERT INTO classes VALUES (6, 'Monk',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                            '',
                            '',
                            '',
                            '',
                            12);

INSERT INTO classes VALUES (7, 'Paladin',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                            '',
                            '',
                            '',
                            '',
                            12);

INSERT INTO classes VALUES (8, 'Ranger',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                            '',
                            '',
                            '',
                            '',
                            12);

INSERT INTO classes VALUES (9, 'Rogue',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                               '',
                            '',
                            '',
                            '',
                            '',
                            12);

INSERT INTO classes VALUES (10, 'Sorcerer',
                                '',
                                '',
                                '',
                                '',
                                '',
                                '',
                                '',
                                '',
                                '',
                            '',
                            '',
                            '',
                            '',
                            12);

INSERT INTO classes VALUES (11, 'Wizard',
                                '',
                                '',
                                '',
                                '',
                                '',
                                '',
                                '',
                                '',
                                '',
                            '',
                            '',
                            '',
                            '',
                            12);


CREATE FUNCTION skill_points(class VARCHAR(15), intmod INT, char_level INT)
  RETURNS INT(3)
DETERMINISTIC
  BEGIN
    DECLARE points INT(3);
    IF class = 'Rogue'
    THEN
      SET points = (8 + intmod) * 4 + (8 + intmod) * char_level;
    ELSEIF (class = 'Bard' OR class = 'Ranger')
      THEN
        SET points = (6 + intmod) * 4 + (6 + intmod) * char_level;
    ELSEIF (class = 'Barbarian' OR class = 'Druid' OR class = 'Monk')
      THEN
        SET points = (4 + intmod) * 4 + (4 + intmod) * char_level;
    ELSE
      SET points = (2 + intmod) * 4 + (2 + intmod) * char_level;
    END IF;
    RETURN points;
  END;