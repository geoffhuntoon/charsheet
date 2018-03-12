/*------Spell Table------*/
CREATE TABLE spells (
  id                INT(4) PRIMARY KEY,
  name              VARCHAR(50),
  school            VARCHAR(100),
  type_1            VARCHAR(20),
  type_2            VARCHAR(20),
  type_3            VARCHAR(20),
  type_4            VARCHAR(20),
  type_5            VARCHAR(20),
  components        VARCHAR(20),
  casting_time      VARCHAR(20),
  spell_range       VARCHAR(50),
  target            VARCHAR(50),
  effect            VARCHAR(50),
  duration          VARCHAR(50),
  saving_throw      VARCHAR(20),
  spell_resistance  VARCHAR(20),
  short_description VARCHAR(200),
  description       TEXT
);


/*------Spell Table Entries------*/
INSERT INTO spells
VALUES (1, 'Acid Fog', 'Conjuration (Creation) [Acid]', 'Sorcerer/Wizard 6', 'Water 7', NULL, NULL, NULL, 'V, S, M/DF',
           '1 standard action', 'Medium (100 ft. + 10 ft./level)', NULL, 'Fog spreads in 20-ft. radius, 20 ft. high',
        '1 round/level', 'None', 'No',
        '',
        '<i>Acid fog</i> creates a billowing mass of misty vapors similar to that produced by a <i>solid fog</i> spell.
        In addition to slowing creatures down and obscuring sight, this spell\'s vapors are highly acidic. Each round on
        your turn, starting when you cast the spell, the fog deals 2d6 points of acid damage to each creature and object
        within it.<br/>
        <i>Arcane Material Component:</i> A pinch of dried, powdered peas combined with powdered animal hoof.'),
  (2, 'Acid Splash', 'Conjuration (Creation) [Acid]', 'Sorcerer/Wizard 0', NULL, NULL, NULL, NULL, 'V, S', '1 standard
   action', 'Close (25 ft. + 5 ft./2 levels)', NULL, 'One missile of acid', 'Instantaneous', 'None', 'No',
   '',
   'You fire a small orb of acid at the target. You must succeed on a ranged touch attack to hit your target. The orb
   deals 1d3 points of acid damage.'),
  (3, 'Aid', 'Enchantment (Compulsion) [Mind-Affecting]', 'Cleric 2', 'Good 2', 'Luck 2', NULL, NULL, 'V, S, DF',
      '1 standard action', 'Touch', 'Living creature touched', NULL, '1 minute/level', 'None', 'Yes (harmless)',
   '',
   '<i>Aid</i> grants the target a +1 morale bonus on attack rolls and saves against fear effects, plus temporary hit
   points equal to 1d8 + caster level (to a maximum of 1d8+10 temporary hit points at caster level 10th).'),
  (4, 'Air Walk', 'Transmutation [Air]', 'Air 4', 'Cleric 4', 'Druid 4', NULL, NULL, 'V, S, DF', '1 standard action',
      'Touch', 'Creature (Gargantuan or smaller) touched', NULL, '10 minutes/level', 'None', 'Yes (harmless)',
   '',
   'The subject can tread on air as if walking on solid ground. Moving upward is similar to walking up a hill. The
   maximum upward or downward angle possible is 45 degrees, at a rate equal to one-half the air walker\'s normal
   speed.<br/>
   A strong wind (21+ mph) can push the subject along or hold it back. At the end of its turn each round, the wind blows
   the air walker 5 feet for each 5 miles per hour of wind speed. The creature can, at the DM\'s option, be subject to
   additional penalties in exceptionally strong or turbulent winds, such as loss of control over movement or physical
   damage from being buffeted about.<br/>
   Should the spell duration expire while the subject is still aloft, the magic fails slowly. The subject floats
   downward 60 feet per round for 1d6 rounds. If it reaches the ground in that amount of time, it lands safely. If not,
   it falls the rest of the distance, taking 1d6 points of damage per 10 feet of fall. Since dispelling a spell
   effectively ends it, the subject also descends in this way if the <i>air walk</i> spell is dispelled, but not if it
   is negated by an <i>antimagic field</i>.<br/>
   You can cast <i>air walk</i> on a specially trained mount so it can be ridden through the air. You can train a mount
   to move with the aid of <i>air walk</i> (counts as a trick) with one week of work and a DC 25 Handle Animal check.'),
  (5, 'Alarm', 'Abjuration', 'Bard 1', 'Ranger 1', 'Sorcerer/Wizard 1', NULL, NULL, 'V, S, F/DF', '1 standard action',
      'Close (25 ft. + 5 ft./2 levels)', NULL, '20-ft.-radius emanation centered on a point in space', '2 hours/level
      (D)', 'None', 'No',
   '',
   '<i>Alarm</i> sounds a mental or audible alarm each time a creature of Tiny or larger size enters the warded area or
   touches it. A creature that speaks the password (determined by you at the time of casting) does not set off the
   <i>alarm</i>. You decide at the time of casting whether the <i>alarm</i> will be mental or audible.<br/>
   <i>Mental Alarm:</i> A mental <i>alarm</i> alerts you (and only you) so long as you remain within 1 mile of the
   warded area. You note a single mental "ping" that awakens you from normal sleep but does not otherwise disturb
   concentration. A <i>silence</i> spell has no effect on a mental <i>alarm</i>.<br/>
   <i>Audible Alarm:</i> An audible <i>alarm</i> produces the sound of a hand bell, and anyone within 60 feet of the
   warded area can hear it clearly. Reduce the distance by 10 feet for each interposing closed door and by 20 feet for
   each substantial interposing wall. In quiet conditions, the ringing can be heard faintly as far as 180 feet away. The
   sound lasts for 1 round. Creatures within a <i>silence</i> spell cannot hear the ringing.<br/>
   Ethereal or astral creatures do not trigger the <i>alarm</i>.<br/>
   <i>Alarm</i> can be made permanent with a <i>permanency</i> spell.<br/>
   <i>Arcane Focus:</i> A tiny bell and a piece of very fine silver wire.'),
  (6, 'Align Weapon', 'Transmutation [see text]', 'Cleric 2', NULL, NULL, NULL, NULL, 'V, S, DF', '1 standard action',
      'Touch', '')

#
#   CREATE TABLE short_spells (
#   id INT (4) PRIMARY KEY,
#   class_id INT (3),
#   LEVEL INT (2),
#   NAME VARCHAR (50),
#   description VARCHAR (200),
#   FOREIGN KEY (class_id) REFERENCES classes (id)
#   );
#
# INSERT INTO short_spells
# VALUES (1, 2, 0, 'Dancing Lights', 'Creates torches or other lights.'),
#   (2, 2, 0, 'Daze', 'Humanoid creature of 4 HD or less loses next action.'),
#   (3, 2, 0, 'Detect Magic', 'Detects spells and magic items within 60 ft.'),
#   (4, 2, 0, 'Flare', 'Dazzles one creature (-1 on attack rolls).'),
#   (5, 2, 0, 'Ghost Sound', 'Figment sounds.'),
#   (6, 2, 0, 'Know Direction', 'You discern north.'),
#   (7, 2, 0, 'Light', 'Object shines like a torch'),
#   (8, 2, 0, 'Lullaby', 'Makes subject drowsy; -5 on Spot and Listen checks, -2 on Will saves against <i>sleep</i>.'),
#   (9, 2, 0, 'Mage Hand', '5-pound telekinesis.'),
#   (10, 2, 0, 'Mending', 'Makes minor repairs on an object.'),
#   (11, 2, 0, 'Message', 'Whispered conversation at distance.'),
#   (12, 2, 0, 'Open/Close', 'Opens or closes small or light things.'),
#   (13, 2, 0, 'Prestidigitation', 'Performs minor tricks.'),
#   (14, 2, 0, 'Read Magic', 'Read scrolls and spellbooks.'),
#   (15, 2, 0, 'Resistance', 'Subject gains +1 on saving throws.'),
#   (16, 2, 0, 'Summon Instrument', 'Summons one instrument of the caster\'s choice.'),
#   (17, 2, 1, 'Alarm', 'Wards an area for 2 hours/level.'),
#   (18, 2, 1, 'Animate Rope', 'Makes a rope move at your command.'),
#   (19, 2, 1, 'Cause Fear', 'One creature of 5 HD or less flees for 1d4 rounds.'),
#   (20, 2, 1, 'Charm Person', 'Makes one person your friend.'),
#   (21, 2, 1, 'Comprehend Languages', 'You understand all spoken and written languages.'),
#   (22, 2, 1, 'Cure Light Wounds', 'Cures 1d8 damage +1/level (max +5).'),
#   (23, 2, 1, 'Detect Secret Doors', 'Reveals hidden doors within 60 ft.'),
#   (24, 2, 1, 'Disguise Self', 'Changes your appearance.'),
#   (25, 2, 1, 'Erase', 'Mundane or magical writing vanishes.'),
#   (26, 2, 1, 'Expeditious Retreat', 'Your speed increases by 30 ft.'),
#   (27, 2, 1, 'Feather Fall', 'Objects or creatures fall slowly.'),
#   (28, 2, 1, 'Grease', 'Makes 10-ft. square or one object slippery.'),
#   (29, 2, 1, 'Hypnotism', 'Fascinates 2d4 HD of creatures.'),
#   (30, 2, 1, 'Identify (M)', 'Determines properties of magic item.'),
#   (31, 2, 1, 'Lesser Confusion', 'One creature is <i>confused</i> for 1 round.'),
#   (32, 2, 1, 'Magic Mouth (M)', 'Speaks once when triggered.'),
#   (33, 2, 1, 'Nystul\'s Magic Aura', 'Alters object\'s magic aura.'),
#   (34, 2, 1, 'Obscure Object', 'Masks object against scrying.'),
#   (35, 2, 1, 'Remove Fear', 'Suppresses fear or gives +4 on saves against fear for once subject +1/four levels.'),
#   (36, 2, 1, 'Silent Image', 'Creates minor illusion of your design.'),
#   (37, 2, 1, 'Sleep', 'Puts 4 HD of creatures into magical slumber.'),
#   (38, 2, 1, 'Summon Monster I', 'Calls extraplanar creature to fight for you.'),
#   (39, 2, 1, 'Tasha\'s Hideous Laughter', 'Subject loses actions for 1 round/level.'),
#   (40, 2, 1, 'Undetectable Alignment', 'Conceals alignment for 24 hours.'),
#   (41, 2, 1, 'Unseen Servant', 'Invisible force obeys your commands.'),
#   (42, 2, 1, 'Ventriloquism', 'Throws voice for 1 minute/level.'),
#   (43, 2, 2, 'Alter Self', 'Assume form of a similar creature.'),
#   (44, 2, 2, 'Animal Messenger', 'Sends a Tiny animal to a specific place.'),
#   (45, 2, 2, 'Animal Trance', 'Fascinates 2d6 HD of animals.'),
#   (46, 2, 2, 'Blindness/Deafness', 'Makes subject blind or deaf.'),
#   (47, 2, 2, 'Blur', 'Attacks miss subject 20% of the time.'),
#   (48, 2, 2, 'Calm Emotions', 'Calms creatures, negating emotion effects.'),
#   (49, 2, 2, 'Cat\'s Grace', 'Subject gains +4 to Dexterity for 1 minute/level.'),
#   (50, 2, 2, 'Cure Moderate Wounds', 'Cures 2d8 damage +1/level (max +10).'),
#   (51, 2, 2, 'Darkness', '20-ft. radius of supernatural shadow.'),
#   (52, 2, 2, 'Daze Monster', 'Living creature of 6 HD or less loses next action.'),
#   (53, 2, 2, 'Delay Poison', 'Stops poison from harming subject for 1 hour/level.'),
#   (54, 2, 2, 'Detect Thoughts', 'Allows "listening" to surface thoughts.'),
#   (55, 2, 2, 'Eagle\'s Splendor', 'Subject gains +4 to Charisma for 1 minute/level.'),
#   (56, 2, 2, 'Enthrall', 'Captivates all within 100 ft + 10 ft/level.'),
#   (57, 2, 2, 'Fox\'s Cunning', 'Subject gains +4 to Intelligence for 1 minute/level.'),
#   (58, 2, 2, 'Glitterdust', 'Blinds creatures, outlines invisible creatures.'),
#   (59, 2, 2, 'Heroism', 'Gives +2 on attack rolls, saves, skill checks.'),
#   (60, 2, 2, 'Hold Person', 'Paralyzes one humanoid for 1 round/level.'),
#   (61, 2, 2, 'Hypnotic Pattern', 'Fascinates (2d4 + level) HD of creatures.'),
#   (62, 2, 2, 'Invisibility', 'Subject is invisible for 1 minute/level or until it attacks.'),
#   (63, 2, 2, 'Locate Object', 'Senses direction toward object (specific or type).'),
#   (64, 2, 2, 'Minor Image', 'As <i>silent image</i>, plus some sound.'),
#   (65, 2, 2, 'Mirror Image', 'Creates decoy duplicates of you (1d4 + 1/three levels, max 8).'),
#   (66, 2, 2, 'Misdirection', 'Misleads divinations for one creature or object.'),
#   (67, 2, 2, 'Pyrotechnics', 'Turns fire into blinding light or choking smoke.'),
#   (68, 2, 2, 'Rage', 'Gives +2 to Strength and Constitution, +1 on Will saves, -2 to AC.'),
#   (69, 2, 2, 'Scare', 'Panics creatures of less than 6 HD.'),
#   (70, 2, 2, 'Shatter', 'Sonic vibration damages objects or crystalline creatures.'),
#   (71, 2, 2, 'Silence', 'Negates sound in 15-ft. radius.'),
#   (72, 2, 2, 'Sound Burst', 'Deals 1d8 sonic damage to subjects; may stun them.'),
#   (73, 2, 2, 'Suggestion', 'Compels subject to follow stated course of action.'),
#   (74, 2, 2, 'Summon Monster II', 'Calls extraplanar creature to fight for you.'),
#   (75, 2, 2, 'Summon Swarm', 'Summons swarm of bats, rats, or spiders.'),
#   (76, 2, 2, 'Tongues', 'Speak any language.'),
#   (77, 2, 2, 'Whispering Wind', 'Sends a short message 1 mile/level.'),
#   (78, 2, 3, 'Blink', 'You randomly vanish and reappear for 1 round/level.'),
#   (79, 2, 3, 'Charm Monster', 'Makes monster believe it is your ally.'),
#   (80, 2, 3, 'Clairaudience/Clairvoyance', 'Hear or see at a distance for 1 minute/level.'),
#   (81, 2, 3, 'Confusion', 'Subjects behave oddly for 1 round/level.'),
#   (82, 2, 3, 'Crushing Despair', 'Subjects take -2 on attack rolls, damage rolls, saves, and checks.'),
#   (83, 2, 3, 'Cure Serious Wounds', 'Cures 3d8 damage +1/level (max +15).'),
#   (84, 2, 3, 'Daylight', '60-ft. radius of bright light.'),
#   (85, 2, 3, 'Deep Slumber', 'Puts 10 HD of creatures to sleep.'),
#   (86, 2, 3, 'Dispel Magic', 'Cancels magical spells and effects.'),
#   (87, 2, 3, 'Displacement', 'Attacks miss subject 50%.'),
#   (88, 2, 3, 'Fear', 'Subjects within cone flee for 1 round/level.'),
#   (89, 2, 3, 'Gaseous Form', 'Subject becomes insubstantial and can fly slowly.'),
#   (90, 2, 3, 'Geas, Lesser', 'Commands subject of 7 HD or less.'),
#   (91, 2, 3, 'Glibness', 'You gain +30 bonus on Bluff checks, and your lies can escape magical discernment.'),
#   (92, 2, 3, 'Good Hope', 'Subjects gain +2 on attack rolls, damage rolls, saves, and checks.'),
#   (93, 2, 3, 'Haste', 'One creature/level moves faster, +1 on attack rolls, AC, and Reflex saves.'),
#   (94, 2, 3, 'Illusory Script (M)', 'Only intended reader can decipher.'),
#   (95, 2, 3, 'Invisibility Sphere', 'Makes everyone within 10 ft. invisible.'),
#   (96, 2, 3, 'Leomund\'s Tiny Hut', 'Creates shelter for ten creatures.'),
#   (97, 2, 3, 'Major Image', 'As <i>silent image</i>, plus sound, smell, and thermal effects.'),
#   (98, 2, 3, 'Phantom Steed', 'Magic horse appears for 1 hour/level.'),
#   (99, 2, 3, 'Remove Curse', 'Frees object or person from curse.'),
#   (100, 2, 3, 'Scrying (F)', 'Spies on subject from a distance.'),
#   (101, 2, 3, 'Sculpt Sound', 'Creates new sounds or changes existing ones.'),
#   (102, 2, 3, 'Secret Page', 'Changes one page to hide its real content.'),
#   (103, 2, 3, 'See Invisibility', 'Reveals invisible creatures or objects.'),
#   (104, 2, 3, 'Sepia Snake Sigil (M)', 'Creates text symbol that immobilizes reader.'),
#   (105, 2, 3, 'Slow', 'One subject/level takes only one action/round, -2 to AC and attack rolls.'),
#   (106, 2, 3, 'Speak with Animals', 'You can communicate with animals.'),
#   (107, 2, 3, 'Summon Monster III', 'Calls extraplanar creature to fight for you.'),
#   (108, 2, 4, 'Break Enchantment', 'Frees subjects')
