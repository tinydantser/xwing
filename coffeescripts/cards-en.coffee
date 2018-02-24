exportObj = exports ? this

exportObj.codeToLanguage ?= {}
exportObj.codeToLanguage.en = 'English'

exportObj.translations ?= {}
# This is here mostly as a template for other languages.
exportObj.translations.English =
    action:
        "Barrel Roll": "Barrel Roll"
        "Boost": "Boost"
        "Evade": "Evade"
        "Focus": "Focus"
        "Target Lock": "Target Lock"
        "Recover": "Recover"
        "Reinforce": "Reinforce"
        "Jam": "Jam"
        "Coordinate": "Coordinate"
        "Cloak": "Cloak"
        "SLAM": "SLAM"
    slot:
        "Astromech": "Astromech"
        "Bomb": "Bomb"
        "Cannon": "Cannon"
        "Crew": "Crew"
        "Elite": "Elite"
        "Missile": "Missile"
        "System": "System"
        "Torpedo": "Torpedo"
        "Turret": "Turret"
        "Cargo": "Cargo"
        "Hardpoint": "Hardpoint"
        "Team": "Team"
        "Illicit": "Illicit"
        "Salvaged Astromech": "Salvaged Astromech"
    sources: # needed?
        "Core": "Core"
        "A-Wing Expansion Pack": "A-Wing Expansion Pack"
        "B-Wing Expansion Pack": "B-Wing Expansion Pack"
        "X-Wing Expansion Pack": "X-Wing Expansion Pack"
        "Y-Wing Expansion Pack": "Y-Wing Expansion Pack"
        "Millennium Falcon Expansion Pack": "Millennium Falcon Expansion Pack"
        "HWK-290 Expansion Pack": "HWK-290 Expansion Pack"
        "TIE Fighter Expansion Pack": "TIE Fighter Expansion Pack"
        "TIE Interceptor Expansion Pack": "TIE Interceptor Expansion Pack"
        "TIE Bomber Expansion Pack": "TIE Bomber Expansion Pack"
        "TIE Advanced Expansion Pack": "TIE Advanced Expansion Pack"
        "Lambda-Class Shuttle Expansion Pack": "Lambda-Class Shuttle Expansion Pack"
        "Slave I Expansion Pack": "Slave I Expansion Pack"
        "Imperial Aces Expansion Pack": "Imperial Aces Expansion Pack"
        "Rebel Transport Expansion Pack": "Rebel Transport Expansion Pack"
        "Z-95 Headhunter Expansion Pack": "Z-95 Headhunter Expansion Pack"
        "TIE Defender Expansion Pack": "TIE Defender Expansion Pack"
        "E-Wing Expansion Pack": "E-Wing Expansion Pack"
        "TIE Phantom Expansion Pack": "TIE Phantom Expansion Pack"
        "Tantive IV Expansion Pack": "Tantive IV Expansion Pack"
        "Rebel Aces Expansion Pack": "Rebel Aces Expansion Pack"
        "YT-2400 Freighter Expansion Pack": "YT-2400 Freighter Expansion Pack"
        "VT-49 Decimator Expansion Pack": "VT-49 Decimator Expansion Pack"
        "StarViper Expansion Pack": "StarViper Expansion Pack"
        "M3-A Interceptor Expansion Pack": "M3-A Interceptor Expansion Pack"
        "IG-2000 Expansion Pack": "IG-2000 Expansion Pack"
        "Most Wanted Expansion Pack": "Most Wanted Expansion Pack"
        "Imperial Raider Expansion Pack": "Imperial Raider Expansion Pack"
        "Hound's Tooth Expansion Pack": "Hound's Tooth Expansion Pack"
        "Kihraxz Fighter Expansion Pack": "Kihraxz Fighter Expansion Pack"
        "K-Wing Expansion Pack": "K-Wing Expansion Pack"
        "TIE Punisher Expansion Pack": "TIE Punisher Expansion Pack"
        "The Force Awakens Core Set": "The Force Awakens Core Set"
    ui:
        shipSelectorPlaceholder: "Select a ship"
        pilotSelectorPlaceholder: "Select a pilot"
        upgradePlaceholder: (translator, language, slot) ->
            "No #{translator language, 'slot', slot} Upgrade"
        modificationPlaceholder: "No Modification"
        titlePlaceholder: "No Title"
        upgradeHeader: (translator, language, slot) ->
            "#{translator language, 'slot', slot} Upgrade"
        unreleased: "unreleased"
        epic: "epic"
        limited: "limited"
    byCSSSelector:
        # Warnings
        '.unreleased-content-used .translated': 'This squad uses unreleased content!'
        '.epic-content-used .translated': 'This squad uses Epic content!'
        '.illegal-epic-too-many-small-ships .translated': 'You may not field more than 12 of the same type Small ship!'
        '.illegal-epic-too-many-large-ships .translated': 'You may not field more than 6 of the same type Large ship!'
        '.collection-invalid .translated': 'You cannot field this list with your collection!'
        # Type selector
        '.game-type-selector option[value="standard"]': 'Standard'
        '.game-type-selector option[value="custom"]': 'Custom'
        '.game-type-selector option[value="epic"]': 'Epic'
        '.game-type-selector option[value="team-epic"]': 'Team Epic'
        # Card browser
        '.xwing-card-browser option[value="name"]': 'Name'
        '.xwing-card-browser option[value="source"]': 'Source'
        '.xwing-card-browser option[value="type-by-points"]': 'Type (by Points)'
        '.xwing-card-browser option[value="type-by-name"]': 'Type (by Name)'
        '.xwing-card-browser .translate.select-a-card': 'Select a card from the list at the left.'
        '.xwing-card-browser .translate.sort-cards-by': 'Sort cards by'
        # Info well
        '.info-well .info-ship td.info-header': 'Ship'
        '.info-well .info-skill td.info-header': 'Skill'
        '.info-well .info-actions td.info-header': 'Actions'
        '.info-well .info-upgrades td.info-header': 'Upgrades'
        '.info-well .info-range td.info-header': 'Range'
        # Squadron edit buttons
        '.clear-squad' : 'New Squad'
        '.save-list' : 'Save'
        '.save-list-as' : 'Save as…'
        '.delete-list' : 'Delete'
        '.backend-list-my-squads' : 'Load squad'
        '.view-as-text' : '<span class="hidden-phone"><i class="fa fa-print"></i>&nbsp;Print/View as </span>Text'
        '.randomize' : 'Random!'
        '.randomize-options' : 'Randomizer options…'
        '.notes-container > span' : 'Squad Notes'
        # Print/View modal
        '.bbcode-list' : 'Copy the BBCode below and paste it into your forum post.<textarea></textarea><button class="btn btn-copy">Copy</button>'
        '.html-list' : '<textarea></textarea><button class="btn btn-copy">Copy</button>'
        '.vertical-space-checkbox' : """Add space for damage/upgrade cards when printing <input type="checkbox" class="toggle-vertical-space" />"""
        '.color-print-checkbox' : """Print color <input type="checkbox" class="toggle-color-print" />"""
        '.print-list' : '<i class="fa fa-print"></i>&nbsp;Print'
        # Randomizer options
        '.do-randomize' : 'Randomize!'
        # Top tab bar
        '#empireTab' : 'Galactic Empire'
        '#rebelTab' : 'Rebel Alliance'
        '#scumTab' : 'Scum and Villainy'
        '#browserTab' : 'Card Browser'
        '#aboutTab' : 'About'
        # Obstacles
        '.choose-obstacles' : 'Choose Obstacles'
        '.choose-obstacles-description' : 'Choose up to three obstacles to include in the permalink for use in external programs. (This feature is in BETA; support for displaying which obstacles were selected in the printout is not yet supported.)'
        '.coreasteroid0-select' : 'Core Asteroid 0'
        '.coreasteroid1-select' : 'Core Asteroid 1'
        '.coreasteroid2-select' : 'Core Asteroid 2'
        '.coreasteroid3-select' : 'Core Asteroid 3'
        '.coreasteroid4-select' : 'Core Asteroid 4'
        '.coreasteroid5-select' : 'Core Asteroid 5'
        '.yt2400debris0-select' : 'YT2400 Debris 0'
        '.yt2400debris1-select' : 'YT2400 Debris 1'
        '.yt2400debris2-select' : 'YT2400 Debris 2'
        '.vt49decimatordebris0-select' : 'VT49 Debris 0'
        '.vt49decimatordebris1-select' : 'VT49 Debris 1'
        '.vt49decimatordebris2-select' : 'VT49 Debris 2'
        '.core2asteroid0-select' : 'Force Awakens Asteroid 0'
        '.core2asteroid1-select' : 'Force Awakens Asteroid 1'
        '.core2asteroid2-select' : 'Force Awakens Asteroid 2'
        '.core2asteroid3-select' : 'Force Awakens Asteroid 3'
        '.core2asteroid4-select' : 'Force Awakens Asteroid 4'
        '.core2asteroid5-select' : 'Force Awakens Asteroid 5'

    singular:
        'pilots': 'Pilot'
        'modifications': 'Modification'
        'titles': 'Title'
    types:
        'Pilot': 'Pilot'
        'Modification': 'Modification'
        'Title': 'Title'

exportObj.cardLoaders ?= {}
exportObj.cardLoaders.English = () ->
    exportObj.cardLanguage = 'English'

    # Assumes cards-common has been loaded
    basic_cards = exportObj.basicCardData()
    exportObj.canonicalizeShipNames basic_cards

    # English names are loaded by default, so no update is needed
    exportObj.ships = basic_cards.ships

    # Names don't need updating, but text needs to be set
    pilot_translations =
        "Wedge Antilles":
            text: """When attacking, reduce the defender's agility value by 1 (to a minimum of "0")."""
        "Garven Dreis":
            text: """After spending a focus token, you may place that token on any other friendly ship at Range 1-2 (instead of discarding it)."""
        "Biggs Darklighter":
            text: """Once per turn, when a friendly ship at Range 1 is hit by an attack, you may roll dice equal to your agility. For each %EVADE% result, you may suffer 1 of the uncanceled %HIT% or %CRIT% results."""
        "Luke Skywalker":
            text: """When defending, you may reduce the attacker's primary weapon value by 1 (to a minimum of 0)."""
        '"Dutch" Vander':
            text: """After acquiring a target lock, choose another friendly ship at Range 1-2.  The chosen ship may immediately acquire a target lock."""
        "Horton Salm":
            text: """When attacking at Range 2-3, you may reroll any of your blank results."""
        '"Winged Gundark"':
            text: """When attacking at Range 1-2, you may change 1 of your %FOCUS% results to a %CRIT% result."""
        '"Night Beast"':
            text: """After executing a green maneuver, you may perform a free focus action."""
        '"Backstabber"':
            text: """When attacking from outside the defender's firing arc, roll 1 additional attack die."""
        '"Dark Curse"':
            text: """When defending, ships attacking you cannot spend focus tokens or reroll attack dice."""
        '"Mauler Mithel"':
            text: """When attacking at Range 1, roll 1 additional attack die."""
        '"Howlrunner"':
            text: """When another friendly ship at Range 1 is attacking with its primary weapon, it may reroll 1 attack die."""
        "Maarek Stele":
            text: """When your attack deals a faceup Damage card to the defender, instead draw 3 Damage cards, choose 1 to deal, and discard the others."""
        "Darth Vader":
            text: """During your "Perform Action" step, you may perform 2 actions."""
        "\"Fel's Wrath\"":
            text: """When the number of Damage cards assigned to you equals or exceeds your hull value, you are not destroyed until the end of the Combat phase."""
        "Turr Phennir":
            text: """After you perform an attack, you may perform a free boost or barrel roll action."""
        "Soontir Fel":
            text: """When you receive a stress token, you may assign 1 focus token to your ship."""
        "Tycho Celchu":
            text: """You may perform actions even while you have stress tokens."""
        "Arvel Crynyd":
            text: """You may declare an enemy ship inside your firing arc that you are touching as the target of your attack."""
        "Chewbacca":
            text: """When you are dealt a faceup Damage card, immediately flip it facedown (without resolving its ability)."""
        "Lando Calrissian":
            text: """After you execute a green maneuver, choose 1 other friendly ship at Range 1.  That ship may perform 1 free action shown on its action bar."""
        "Han Solo":
            text: """When attacking, you may reroll all of your dice.  If you choose to do so, you must reroll as many of your dice as possible."""
        "Kath Scarlet":
            text: """When attacking, the defender receives 1 stress token if he cancels at least 1 %CRIT% result."""
        "Boba Fett":
            text: """When you reveal a bank maneuver (%BANKLEFT% or %BANKRIGHT%), you may rotate your dial to the other bank maneuver of the same speed."""
        "Krassis Trelix":
            text: """When attacking with a secondary weapon, you may reroll 1 attack die."""
        "Ten Numb":
            text: """When attacking, 1 of your %CRIT% results cannot be canceled by defense dice."""
        "Ibtisam":
            text: """When attacking or defending, if you have at least 1 stress token, you may reroll 1 of your dice."""
        "Roark Garnet":
            text: '''At the start of the Combat phase, choose 1 other friendly ship at Range 1-3.  Until the end of the phase, treat that ship's pilot skill value as "12."'''
        "Kyle Katarn":
            text: """At the start of the Combat phase, you may assign 1 of your focus tokens to another friendly ship at Range 1-3."""
        "Jan Ors":
            text: """When another friendly ship at Range 1-3 is attacking, if you have no stress tokens, you may receive 1 stress token to allow that ship to roll 1 additional attack die."""
        "Captain Jonus":
            text: """When another friendly ship at Range 1 attacks with a secondary weapon, it may reroll up to 2 attack dice."""
        "Major Rhymer":
            text: """When attacking with a secondary weapon, you may increase or decrease the weapon range by 1 to a limit of Range 1-3."""
        "Captain Kagi":
            text: """When an enemy ship acquires a target lock, it must lock onto your ship if able."""
        "Colonel Jendon":
            text: """At the start of the Combat phase, you may assign 1 of your blue target lock tokens to a friendly ship at Range 1 if it does not have a blue target lock token."""
        "Captain Yorr":
            text: """When another friendly ship at Range 1-2 would receive a stress token, if you have 2 or fewer stress tokens, you may receive that token instead."""
        "Lieutenant Lorrir":
            text: """When performing a barrel roll action, you may receive 1 stress token to use the (%BANKLEFT% 1) or (%BANKRIGHT% 1) template instead of the (%STRAIGHT% 1) template."""
        "Tetran Cowall":
            text: """When you reveal a %UTURN% maneuver, you may treat the speed of that maneuver as "1," "3," or "5"."""
        "Kir Kanos":
            text: """When attacking at Range 2-3, you may spend 1 evade token to add 1 %HIT% result to your roll."""
        "Carnor Jax":
            text: """Enemy ships at Range 1 cannot perform focus or evade actions and cannot spend focus or evade tokens."""
        "Lieutenant Blount":
            text: """When attacking, the defender is hit by your attack, even if he does not suffer any damage."""
        "Airen Cracken":
            text: """After you perform an attack, you may choose another friendly ship at Range 1.  That ship may perform 1 free action."""
        "Colonel Vessery":
            text: """When attacking, immediately after you roll attack dice, you may acquire a target lock on the defender if it already has a red target lock token."""
        "Rexler Brath":
            text: """After you perform an attack that deals at least 1 Damage card to the defender, you may spend a focus token to flip those cards faceup."""
        "Etahn A'baht":
            text: """When an enemy ship inside your firing arc at Range 1-3 is defending, the attacker may change 1 of its %HIT% results to a %CRIT% result."""
        "Corran Horn":
            text: """At the start of the End phase, you may perform one attack.  You cannot attack during the next round."""
        '"Echo"':
            text: """When you decloak, you must use the (%BANKLEFT% 2) or (%BANKRIGHT% 2) template instead of the (%STRAIGHT% 2) template."""
        '"Whisper"':
            text: """After you perform an attack that hits, you may assign 1 focus to your ship."""
        "Wes Janson":
            text: """After you perform an attack, you may remove 1 focus, evade, or blue target lock token from the defender."""
        "Jek Porkins":
            text: """When you receive a stress token, you may remove it and roll 1 attack die.  On a %HIT% result, deal 1 facedown Damage card to this ship."""
        '"Hobbie" Klivian':
            text: """When you acquire or spend a target lock, you may remove 1 stress token from your ship."""
        "Tarn Mison":
            text: """When an enemy ship declares you as the target of an attack, you may acquire a target lock on that ship."""
        "Jake Farrell":
            text: """After you perform a focus action or are assigned a focus token, you may perform a free boost or barrel roll action."""
        "Gemmer Sojan":
            text: """While you are at Range 1 of at least 1 enemy ship, increase your agility value by 1."""
        "Keyan Farlander":
            text: """When attacking, you may remove 1 stress token to change all of your %FOCUS% results to %HIT%results."""
        "Nera Dantels":
            text: """You can perform %TORPEDO% secondary weapon attacks against enemy ships outside your firing arc."""
        "CR90 Corvette (Fore)":
            text: """When attacking with your primary weapon, you may spend 1 energy to roll 1 additional attack die."""
        # "CR90 Corvette (Crippled Aft)":
        #     text: """You cannot choose or execute (%STRAIGHT% 4), (%BANKLEFT% 2), or (%BANKRIGHT% 2) maneuvers."""
        "Dash Rendar":
            text: """You may ignore obstacles during the Activation phase and when performing actions."""
        '"Leebo"':
            text: """When you are dealt a faceup Damage card, draw 1 additional Damage card, choose 1 to resolve, and discard the other."""
        "Eaden Vrill":
            text: """When performing a primary weapon attack against a stressed ship, roll 1 additional attack die."""
        "Rear Admiral Chiraneau":
            text: """When attacking at Range 1-2, you may change 1 of your %FOCUS% results to a %CRIT% result."""
        "Commander Kenkirk":
            text: """If you have no shields and at least 1 Damage card assigned to you, increase your agility value by 1."""
        "Captain Oicunn":
            text: """After executing a maneuver, each enemy ship you are touching suffers 1 damage."""
        "Prince Xizor":
            text: """When defending, a friendly ship at Range 1 may suffer 1 uncanceled %HIT% or %CRIT% result instead of you."""
        "Guri":
            text: """At the start of the Combat phase, if you are at Range 1 of an enemy ship, you may assign 1 focus token to your ship."""
        "Serissu":
            text: """When another friendly ship at Range 1 is defending, it may reroll 1 defense die."""
        "Laetin A'shera":
            text: """After you defend against an attack, if the attack did not hit, you may assign 1 evade token to your ship."""
        "IG-88A":
            text: """After you perform an attack that destroys the defender, you may recover 1 shield."""
        "IG-88B":
            text: """Once per round, after you perform an attack that does not hit, you may perform an attack with an equipped %CANNON% secondary weapon."""
        "IG-88C":
            text: """After you perform a boost action, you may perform a free evade action."""
        "IG-88D":
            text: """You may execute the (%SLOOPLEFT% 3) or (%SLOOPRIGHT% 3) maneuver using the corresponding (%TURNLEFT% 3) or (%TURNRIGHT% 3) template."""
        "Boba Fett (Scum)":
            text: """When attacking or defending, you may reroll 1 of your dice for each enemy ship at Range 1."""
        "Kath Scarlet (Scum)":
            text: """When attacking a ship inside your auxiliary firing arc, roll 1 additional attack die."""
        "Emon Azzameen":
            text: """When dropping a bomb, you may use the (%TURNLEFT% 3), (%STRAIGHT% 3), or (%TURNRIGHT% 3) template instead of the (%STRAIGHT% 1) template."""
        "Kavil":
            text: """When attacking a ship outside your firing arc, roll 1 additional attack die."""
        "Drea Renthal":
            text: """After you spend a target lock, you may receive 1 stress token to acquire a target lock."""
        "Dace Bonearm":
            text: """When an enemy ship at Range 1-3 receives at least 1 ion token, if you are not stressed, you may receive 1 stress token to cause that ship to suffer 1 damage."""
        "Palob Godalhi":
            text: """At the start of the Combat phase, you may remove 1 focus or evade token from an enemy ship at Range 1-2 and assign it to yourself."""
        "Torkil Mux":
            text: """At the end of the Activation phase, choose 1 enemy ship at Range 1-2. Until the end of the Combat phase, treat that ship's pilot skill value as "0"."""
        "N'Dru Suhlak":
            text: """When attacking, if there are no other friendly ships at Range 1-2, roll 1 additional attack die."""
        "Kaa'to Leeachos":
            text: """At the start of the Combat phase, you may remove 1 focus or evade token from another friendly ship at Range 1-2 and assign it to yourself."""
        "Commander Alozen":
            text: """At the start of the Combat phase, you may acquire a target lock on an enemy ship at Range 1."""
        "Raider-class Corvette (Fore)":
            text: """Once per round, after you perform a primary weapon attack, you may spend 2 energy to perform another primary weapon attack."""
        "Bossk":
            text: """When you perform an attack that hits, before dealing damage, you may cancel 1 of your %CRIT% results to add 2 %HIT% results."""
        "Talonbane Cobra":
            text: """When attacking or defending, double the effect of your range combat bonuses."""
        "Miranda Doni":
            text: """Once per round when attacking, you may either spend 1 shield to roll 1 additional attack die <strong>or</strong> roll 1 fewer attack die to recover 1 shield."""
        '"Redline"':
            text: """You may maintain 2 target locks on the same ship.  When you acquire a target lock, you may acquire a second lock on that ship."""
        '"Deathrain"':
            text: """When dropping a bomb, you may use the front guides of your ship.  After dropping a bomb, you may perform a free barrel roll action."""
        "Juno Eclipse":
            text: """When you reveal your maneuver, you may increase or decrease its speed by 1 (to a minimum of 1)."""
        "Zertik Strom":
            text: """Enemy ships at Range 1 cannot add their range combat bonus when attacking."""
        "Lieutenant Colzet":
            text: """At the start of the End phase, you may spend a target lock you have on an enemy ship to flip 1 random facedown Damage card assigned to it faceup."""
        "Latts Razzi":
            text: """When a friendly ship declares an attack, you may spend a target lock you have on the defender to reduce its agility by 1 for that attack."""
        "Graz the Hunter":
            text: """When defending, if the attacker is inside your firing arc, roll 1 additional defense die."""
        "Esege Tuketu":
            text: """When another friendly ship at Range 1-2 is attacking, it may treat your focus tokens as its own."""
        "Moralo Eval":
            text: """You can perform %CANNON% secondary attacks against ships inside your auxiliary firing arc."""
        'Gozanti-class Cruiser':
            text: """After you execute a maneuver, you may deploy up to 2 attached ships."""
        '"Scourge"':
            text: """When attacking a defender that has 1 or more Damage cards, roll 1 additional attack die."""
        "The Inquisitor":
            text: """When attacking with your primary weapon at Range 2-3, treat the range of the attack as Range 1."""
        "Zuckuss":
            text: """When attacking, you may roll 1 additional attack die.  If you do, the defender rolls 1 additional defense die."""
        "Dengar":
            text: """Once per round after defending, if the attacker is inside your firing arc, you may perform an attack against that ship."""
        # T-70
        "Poe Dameron":
            text: """When attacking or defending, if you have a focus token, you may change 1 of your %FOCUS% results to a %HIT% or %EVADE% result."""
        '"Blue Ace"':
            text: """When performing a boost action, you may use the (%TURNLEFT% 1) or (%TURNRIGHT% 1) template."""
        # TIE/fo
        '"Omega Ace"':
            text: """When attacking, you may spend a focus token and a target lock you have on the defender to change all of your results to %CRIT% results."""
        '"Epsilon Leader"':
            text: """At the start of the Combat phase, remove 1 stress token from each friendly ship at Range 1."""
        '"Zeta Ace"':
            text: """When performing a barrel roll you may use the (%STRAIGHT% 2) template instead of the (%STRAIGHT% 1) template."""
        '"Red Ace"':
            text: '''The first time you remove a shield token from your ship each round, assign 1 evade token to your ship.'''
        '"Omega Leader"':
            text: '''Enemy ships that you have locked cannot modify any dice when attacking you or defending against your attacks.'''
        'Hera Syndulla':
            text: '''When you reveal a green or red maneuver, you may rotate your dial to another maneuver of the same difficulty.'''
        '"Youngster"':
            text: """Friendly TIE fighters at Range 1-3 may perform the action on your equipped %ELITE% Upgrade card."""
        '"Wampa"':
            text: """When attacking, you may cancel all die results.  If you cancel a %CRIT% result, deal 1 facedown Damage card to the defender."""
        '"Chaser"':
            text: """When another friendly ship at Range 1 spends a focus token, assign a focus token to your ship."""
        'Ezra Bridger':
            text: """When defending, if you are stressed, you may change up to 2 of your %FOCUS% results to %EVADE% results."""
        '"Zeta Leader"':
            text: '''When attacking, if you are not stressed, you may receive 1 stress token to roll 1 additional die.'''
        '"Epsilon Ace"':
            text: '''While you do not have any Damage cards, treat your pilot skill value as "12."'''
        "Kanan Jarrus":
            text: """When an enemy ship at Range 1-2 is attacking, you may spend a focus token.  If you do, the attacker rolls 1 fewer attack die."""
        '"Chopper"':
            text: """At the start of the Combat phase, each enemy ship you are touching receives 1 stress token."""
        'Hera Syndulla (Attack Shuttle)':
            text: """When you reveal a green or red maneuver, you may rotate your dial to another maneuver of the same difficulty."""
        'Sabine Wren':
            text: """Immediately before you reveal your maneuver, you may perform a free boost or barrel roll action."""
        '"Zeb" Orrelios':
            text: '''When defending, you may cancel %CRIT% results before %HIT% results.'''
        'Tomax Bren':
            text: '''Once per round, after you discard an %ELITE% Upgrade card, flip that card faceup.'''
        'Ello Asty':
            text: '''While you are not stressed, you may treat your %TROLLLEFT% and %TROLLRIGHT% maneuvers as white maneuvers.'''
        "Valen Rudor":
            text: """After defending, you may perform a free action."""
        "4-LOM":
            text: """At the start of the End phase, you may assign 1 of your stress tokens to another ship at Range 1."""
        "Tel Trevura":
            text: """The first time you would be destroyed, instead cancel any remaining damage, discard all Damage cards, and deal 4 facedown Damage cards to this ship."""
        "Manaroo":
            text: """At the start of the Combat phase, you may assign all focus, evade, and target lock tokens assigned to you to another friendly ship at Range 1."""
        '"Deathfire"':
            text: '''When you reveal your maneuver dial or after you perform an action, you may perform a %BOMB% Upgrade card action as a free action.'''
        "Maarek Stele (TIE Defender)":
            text: """When your attack deals a faceup Damage card to the defender, instead draw 3 Damage cards, choose 1 to deal, and discard the others."""
        "Countess Ryad":
            text: """When you reveal a %STRAIGHT% maneuver, you may treat it as a %KTURN% maneuver."""
        "Poe Dameron (PS9)":
            text: """When attacking or defending, if you have a focus token, you may change 1 of your %FOCUS% results to a %HIT% or %EVADE% result."""
        "Rey":
            text: """When attacking or defending, if the enemy ship is inside of your firing arc, you may reroll up to 2 of your blank results."""
        'Han Solo (TFA)':
            text: '''When you are placed during setup, you can be placed anywhere in the play area beyond Range 3 of enemy ships.'''
        'Chewbacca (TFA)':
            text: '''After another friendly ship at Range 1-3 is destroyed (but has not fled the battlefield), you may perform an attack.'''
        'Norra Wexley':
            text: '''When attacking or defending, you may spend a target lock you have on the enemy ship to add 1 %FOCUS% result to your roll.'''
        'Shara Bey':
            text: '''When another friendly ship at Range 1-2 is attacking, it may treat your blue target lock tokens as its own.'''
        'Thane Kyrell':
            text: '''After an enemy ship in your firing arc at Range 1-3 attacks another friendly ship, you may perform a free action.'''
        'Braylen Stramm':
            text: '''After you execute a maneuver, you may roll an attack die.  On a %HIT% or %CRIT% result, remove 1 stress token from your ship.'''
        '"Quickdraw"':
            text: '''Once per round, when you lose a shield token, you may perform a primary weapon attack.'''
        '"Backdraft"':
            text: '''When attacking a ship inside your auxiliary firing arc, you may add 1 %CRIT% result.'''
        'Fenn Rau':
            text: '''When attacking or defending, if the enemy ship is at Range 1, you may roll 1 additional die.'''
        'Old Teroch':
            text: '''At the start of the Combat phase, you may choose 1 enemy ship at Range 1.  If you are inside its firing arc, it discards all focus and evade tokens.'''
        'Kad Solus':
            text: '''After you execute a red maneuver, assign 2 focus tokens to your ship.'''
        'Ketsu Onyo':
            text: '''At the start of the Combat phase, you may choose a ship at Range 1.  If it is inside your primary <strong>and</strong> mobile firing arcs, assign 1 tractor beam token to it.'''
        'Asajj Ventress':
            text: '''At the start of the Combat phase, you may choose a ship at Range 1-2.  If it is inside your mobile firing arc, assign 1 stress token to it.'''
        'Sabine Wren (Scum)':
            text: '''When defending against an enemy ship inside your mobile firing arc at Range 1-2, you may add 1 %FOCUS% result to your roll.'''
        # Wave X
        'Sabine Wren (TIE Fighter)':
            text: '''Immediately before you reveal your maneuver, you may perform a free boost or barrel roll action.'''
        '"Zeb" Orrelios (TIE Fighter)':
            text: '''When defending, you may cancel %CRIT% results before %HIT% results.'''
        'Kylo Ren':
            text: '''The first time you are hit by an attack each round, deal the "I'll Show You the Dark Side" Condition card to the attacker.'''
        'Unkar Plutt':
            text: '''At the end of the Activation phase, you <strong>must</strong> assign a tractor beam token to each ship you are touching.'''
        'Cassian Andor':
            text: '''At the start of the Activation phase, you may remove 1 stress token from 1 other friendly ship at Range 1-2.'''
        'Bodhi Rook':
            text: '''When a friendly ship acquires a target lock, that ship can lock onto an enemy ship at Range 1-3 of any friendly ship.'''
        'Heff Tobber':
            text: '''After an enemy ship executes a maneuver that causes it to overlap your ship, you may perform a free action.'''
        '''"Duchess"''':
            text: '''While you have the "Adaptive Ailerons" Upgrade card equipped, you may choose to ignore its card ability.'''
        '''"Pure Sabacc"''':
            text: '''When attacking, if you have 1 or fewer Damage cards, roll 1 additional attack die.'''
        '''"Countdown"''':
            text: '''When defending, if you are not stressed, during the "Compare Results" step, you may suffer 1 damage to cancel all dice results.  If you do, receive 1 stress token.'''
        'Nien Nunb':
            text: '''When you receive a stress token, if there is an enemy ship inside your firing arc at Range 1, you may discard that stress token.'''
        '"Snap" Wexley':
            text: '''After you execute a 2-, 3-, or 4-speed maneuver, if you are not touching a ship, you may perform a free boost action.'''
        'Jess Pava':
            text: '''When attacking or defending, you may reroll 1 of your dice for each other friendly ship at Range 1.'''
        'Ahsoka Tano':
            text: '''At the start of the Combat phase, you may spend 1 focus token to choose a friendly ship at Range 1.  It may perform 1 free action.'''
        'Captain Rex':
            text: '''After you perform an attack, assign the "Suppressive Fire" Condition card to the defender.'''
        'Major Stridan':
            text: '''For the purpose of your actions and Upgrade cards, you may treat friendly ships at Range 2-3 as being at Range 1.'''
        'Lieutenant Dormitz':
            text: '''During setup, friendly ships may placed anywhere in the play area at Range 1-2 of you.'''
        'Constable Zuvio':
            text: '''When you reveal a reverse maneuver, you may drop a bomb using your front guides (including a bomb with the "<strong>Action:</strong>" header).'''
        'Sarco Plank':
            text: '''When defending, instead of using your agility value, you may roll a number of defense dice equal to the speed of the maneuver you executed this round.'''
        'Genesis Red':
            text: '''After you acquire a target lock, assign focus and evade tokens to your ship until you have the same number of each token as the locked ship.'''
        'Quinn Jast':
            text: '''At the start of the Combat phase, you may receive a weapons disabled token to flip one of your discarded %TORPEDO% or %MISSILE% Upgrade cards faceup.'''
        'Inaldra':
            text: '''When attacking or defending, you may spend 1 shield to reroll any number of your dice.'''
        'Sunny Bounder':
            text: '''Once per round, after you roll or reroll dice, if you have the same result on each of your dice, add 1 matching result.'''
        'Lieutenant Kestal':
            text: '''When attacking, you may spend 1 focus token to cancel all of the defender's blank and %FOCUS% results.'''
        '"Double Edge"':
            text: '''Once per round, after you perform a secondary weapon attack that does not hit, you may perform an attack with a different weapon.'''
        'Viktor Hel':
            text: '''After defending, if you did not roll exactly 2 defense dice, the attacker receives 1 stress token.'''
        'Lowhhrick':
            text: '''When another friendly ship at Range 1 is defending, you may spend 1 reinforce token. If you do, the defender adds 1 %EVADE% result.'''
        'Wullffwarro':
            text: '''When attacking, if you have no shields and at least 1 Damage card assigned to you, roll 1 additional attack die.'''
        'Captain Nym (Scum)':
            text: '''You may ignore friendly bombs. When a friendly ship is defending, if the attacker measures range through a friendly bomb token, the defender may add 1 %EVADE% result.'''
        'Captain Nym (Rebel)':
            text: '''Once per round, you may prevent a friendly bomb from detonating.'''
        'Sol Sixxa':
            text: '''When dropping a bomb, you may use the (%TURNLEFT% 1) or (%TURNRIGHT% 1) template instead of the (%STRAIGHT% 1) template.'''
        'Dalan Oberos':
            text: '''If you are not stressed, when you reveal a turn, bank, or Segnor's Loop maneuver, you may instead treat it as a red Tallon Roll maneuver of the same direction (left or right) using the template of the original revealed maneuver.'''
        'Thweek':
            text: '''During setup, before the "Place Forces" step, you may choose 1 enemy ship and assign the "Shadowed" or "Mimicked" Condition card to it.'''
        'Captain Jostero':
            text: '''Once per round, after an enemy ship that is not defending against an attack suffers damage or critical damage, you may perform an attack against that ship.'''
        'Major Vynder':
            text: '''When defending, if you have a weapons disabled token, roll 1 additional defense die.'''
        'Lieutenant Karsabi':
            text: '''When you receive a weapons disabled token, if you are not stressed, you may receive 1 stress token to remove it.'''
        'Torani Kulda':
            text: '''After you perform an attack, each enemy ship inside your bullseye firing arc at Range 1-3 must choose to suffer 1 damage or remove all of its focus and evade tokens.'''
        'Dalan Oberos (Kimogila)':
            text: '''At the start of the Combat phase, you may acquire a target lock on an enemy ship inside your bullseye firing arc at Range 1-3 .'''
        'Fenn Rau (Sheathipede)':
            text: '''When an enemy ship inside your firing arc at Range 1-3 becomes the active ship during the Combat phase, if you are not stressed, you may receive 1 stress token.  If you do, that ship cannot spend tokens to modify its dice when attacking this round.'''
        'Ezra Bridger (Sheathipede)':
            text: """When defending, if you are stressed, you may change up to 2 of your %FOCUS% results to %EVADE% results."""
        '"Zeb" Orrelios (Sheathipede)':
            text: '''When defending, you may cancel %CRIT% results before %HIT% results.'''
        'AP-5':
            text: '''When you perform the coordinate action, after you choose a friendly ship and before it performs a free action, you may receive 2 stress tokens to remove 1 stress token from it.'''
        '"Crimson Leader"':
            text: '''When attacking, if the defender is inside your firing arc, you may spend 1 %HIT% or %CRIT% result to assign the "Rattled" Condition to the defender.'''
        '"Crimson Specialist"':
            text: '''When placing a bomb token you dropped after revealing your maneuver dial, you may place the bomb token anywhere on the play area touching your ship.'''
        '"Cobalt Leader"':
            text: '''When attacking, if the defender is at range 1 of a bomb token, the defender rolls 1 fewer defense die, to a minimum of 0.'''
        'Kylo Ren (TIE Silencer)':
            text: '''The first time you are hit by an attack each round, deal the "I'll Show You the Dark Side" Condition card to the attacker.'''
        'Test Pilot "Blackout"':
            text: '''When attacking, if the attack is obstructed, the defender rolls 2 fewer defense dice (to a minimum of 0).'''
        'Kullbee Sperado':
            text: '''After you perform a boost or barrel roll action, you may flip your equipped "Servomotor S-foils" upgrade card.'''
        'Major Vermeil':
            text: '''When attacking, if the defender does not have a focus or evade token, you may change one of your blank or %FOCUS% results to a %HIT% result.'''

    upgrade_translations =
        "Ion Cannon Turret":
            text: """<strong>Attack:</strong> Attack 1 ship (even a ship outside your firing arc).%LINEBREAK%If this attack hits the target ship, the ship suffers 1 damage and receives 1 ion token. If the defender is inside your firing arc, the ship receives an additional 1 ion token. Then cancel all dice results."""
        "Proton Torpedoes":
            text: """<strong>Attack (Target Lock):</strong> Discard this card to perform this attack.%LINEBREAK%You may change 1 of your %FOCUS% results to a %CRIT% result. If this attack hits, you mad add 1 %HIT% result."""
        "R2 Astromech":
            text: """You may treat all 1- and 2-speed maneuvers as green maneuvers."""
        "R2-D2":
            text: """At the end of the End phase, if you have no shields, you may recover 1 shield and roll 1 attack die. On a %HIT% result, randomly flip 1 of your facedown Damage cards faceup and resolve it."""
        "R2-Q2":
            text: """<strong>Action:</strong> Increase your agility value by 1 until the end of this game round."""
        "R2-A3":
            text: """When attacking, if you are not stressed, you may change all of your %FOCUS% results to %HIT% results."""
        "R5-K6":
            text: """After you perform an attack, you may acquire a target lock on the defender."""
        "R5 Astromech":
            text: """During the End phase, you may choose 1 of your faceup Damage cards with the Ship trait and flip it facedown."""
        "Determination":
            text: """When you are dealt a faceup Damage card with the Pilot trait, discard it immediately without resolving its effect."""
        "Strafe":
            text: """Enemy ships inside your firing arc may not resolve abilities beginning with the "<strong>ACTION:</strong>" header on their Damage cards."""
        "Squad Leader":
            text: """<strong>Action:</strong> Choose 1 ship at Range 1-2 that has a lower pilot skill than you. The chosen ship may immediately perform 1 free action."""
        "Expert Handling":
            text: """<strong>Action:</strong> Perform a free barrel roll action.  If you do not have the %BARRELROLL% action icon, receive 1 stress token.%LINEBREAK%You may then, at the beginning of the Combat phase, remove 1 enemy target lock from your ship."""
        "Marksmanship":
            text: """<strong>Action:</strong> When attacking this round, you may change 1 of your %FOCUS% results to a %CRIT% result and all of your other %FOCUS% results to %HIT% results."""
        "Concussion Missiles":
            text: """<strong>Attack (Target Lock):</strong> Discard this card to perform this attack.%LINEBREAK%If this attack hits, the defender suffers 2 damgae. Then cancel <strong>all</strong> dice results."""
        "Cluster Missiles":
            text: """<strong>Attack (Target Lock):</strong> Discard this card to perform this attack twice.%LINEBREAK%Each time this attack hits, the defender suffers 1 %CRIT%. Then cancel <strong>all</strong> dice results."""
        "Chin Cannon Refit":
            text: """After you perform an attack with a primary weapon against a ship at Range 2, if the defender has fewer than 2 stress tokens, that ship receives 1 stress token."""
        "L-s7.2 Cannons":
            text: """When attacking with a primary weapon, you may reroll 1 attack die."""
        "L-s9.3 Cannons":
            text: """When attacking with a primary weapon, you may change 1 of the defender's %EVADE% results into a %FOCUS% result."""
        "Heavy Blaster Cannon Refit":
            text: """When attacking with a primary weapon, When you perform an attack that hits, before dealing damage, you may cancel 1 of your %CRIT% results to add 2 %HIT% results."""
        "Swarm Tactics":
            text: """At the start of the Combat phase, you may choose 1 friendly ship at Range 1. Until the end of this phase, treat the chosen ship as if its pilot skill were equal to your pilot skill."""
        "Sniper":
            text: """When attacking an enemy ship at Range 2-3, your %CRIT% results may only be cancelled if, during the "Compare results" step, the defender spends an %EVADE% token."""
        "Advanced Proton Torpedoes":
            text: """<strong>Attack (Target Lock):</strong> Discard this card to perform this attack.%LINEBREAK%You may change up to 3 of your blank results to %FOCUS% results. If this attack hits, you may add 2 %HIT% results."""
        "Ion Cannon":
            text: """<strong>Attack:</strong> Attack 1 ship.%LINEBREAK%If this attack hits the target ship, the ship suffers 1 damage and receives 2 ion tokens. After dealing damage, remove 1 shield token from the defender. Then cancel all dice results."""
        "L-sf42 Turbolaser":
            text: """<strong>Attack:</strong> Attack 1 ship, then receive 1 ion token. If this attack hits, after dealing damage, deal 1 facedown Damage card."""
        "Seismic Charges":
            text: """When this bomb token detonates, each ship at Range 1-2 of the token suffers 1 damage. Then, each ship at Range 1 of each obstacle at Range 1-2 of the seismic charge token rolls 2 attack dice and suffers any damage %HIT% or critical damage %CRIT% rolled. Do not remove the obstacle tokens. Then discard the seismic charge token."""
        "Electronic Baffle":
            text: """When you receive a stress token or an ion token, you may suffer 1 damage to discard that token."""
        "Sensor Jammer":
            text: """When defending, you may change 1 of the attacker's %HIT% results into a %FOCUS% result. The attacker cannot reroll the die with the changed result."""
        "Proton Bomb":
            text: """When this bomb token detonates, each ship at Range 1 of the token suffers 2 critical damage %CRIT%. Each ship at Range 2 of the token suffers 1 critical damage %CRIT%. Then discard this token."""
        "Advanced Targeting Computer":
            text: """When attacking with your primary weapon, if you have a target lock on the defender, you may change 1 blank result to a 1 %CRIT% result. If you do, you cannot spend target locks during this attack."""
        "Gunner":
            text: """After you perform an attack that does not hit, you may immediately perform a primary weapon attack. You cannot perform another attack this round."""
        "Flight Instructor":
            text: """When defending, you may reroll 1 of your %FOCUS% results. If the attacker's pilot skill value is "4" or lower, you may reroll 1 of your blank results instead."""
        "Weapons Engineer":
            text: """may maintain 2 target locks (only 1 per enemy ship). When you acquire a target lock, you may lock onto 2 different ships."""

    modification_translations =
        "Stealth Device":
            text: """Increase your agility value by 1.  If you are hit by an attack, discard this card."""
        "Shield Upgrade":
            text: """Increase your shield value by 1."""
        "Engine Upgrade":
            text: """Your action bar gains the %BOOST% action icon."""
        "Anti-Pursuit Lasers":
            text: """%LARGESHIPONLY%%LINEBREAK%After an enemy ship executes a maneuver that causes it to overlap your ship, roll 1 attack die.  On a %HIT% or %CRIT% result, the enemy ship suffers 1 damage."""
        "Targeting Computer":
            text: """Your action bar gains the %TARGETLOCK% action icon."""
        "Hull Upgrade":
            text: """Increase your hull value by 1."""
        "Munitions Failsafe":
            text: """When attacking with a secondary weapon that instructs you to discard it to perform the attack, do not discard it unless the attack hits."""
        "Stygium Particle Accelerator":
            text: """When you either decloak or perform a cloak action, you may perform a free evade action."""
        "Advanced Cloaking Device":
            text: """<span class="card-restriction">TIE Phantom only.</span>%LINEBREAK%After you perform an attack, you may perform a free cloak action."""
        "Combat Retrofit":
            text: """<span class="card-restriction">GR-75 only.</span>%LINEBREAK%Increase your hull value by 2 and your shield value by 1."""
        "B-Wing/E2":
            text: """<span class="card-restriction">B-Wing only.</span>%LINEBREAK%Your upgrade bar gains the %CREW% upgrade icon."""
        "Countermeasures":
            text: """%LARGESHIPONLY%%LINEBREAK%At the start of the Combat phase, you may discard this card to increase your agility value by 1 until the end of the round.  Then you may remove 1 enemy target lock from your ship."""
        "Experimental Interface":
            text: """Once per round, after you perform an action, you may perform 1 free action from an equipped Upgrade card with the "<strong>Action:</strong>" header.  Then receive 1 stress token."""
        "Tactical Jammer":
            text: """%LARGESHIPONLY%%LINEBREAK%Your ship can obstruct enemy attacks."""
        "Autothrusters":
            text: """When defending, if you are beyond Range 2 or outside the attacker's firing arc, you may change 1 of your blank results to a %EVADE% result. You can equip this card only if you have the %BOOST% action icon."""
        "Advanced SLAM":
            text: """After performing a SLAM action, if you did not overlap an obstacle or another ship, you may perform a free action on your action bar."""
        "Twin Ion Engine Mk. II":
            text: """<span class="card-restriction">TIE only.</span>%LINEBREAK%You may treat all bank maneuvers (%BANKLEFT% and %BANKRIGHT%) as green maneuvers."""
        "Maneuvering Fins":
            text: """<span class="card-restriction">YV-666 only.</span>%LINEBREAK%When you reveal a turn maneuver (%TURNLEFT% or %TURNRIGHT%), you may rotate your dial to the corresponding bank maneuver (%BANKLEFT% or %BANKRIGHT%) of the same speed."""
        "Ion Projector":
            text: """%LARGESHIPONLY%%LINEBREAK%After an enemy ship executes a maneuver that causes it to overlap your ship, roll 1 attack die.  On a %HIT% or %CRIT% result, the enemy ship receives 1 ion token."""
        'Integrated Astromech':
            text: '''<span class="card-restriction">X-wing only.</span>%LINEBREAK%When you are dealt a Damage card, you may discard 1 of your %ASTROMECH% Upgrade cards to discard that Damage card.'''
        'Optimized Generators':
            text: '''%HUGESHIPONLY%%LINEBREAK%Once per round, when you assign energy to an equipped Upgrade card, gain 2 energy.'''
        'Automated Protocols':
            text: '''%HUGESHIPONLY%%LINEBREAK%Once per round, after you perform an action that is not a recover or reinforce action, you may spend 1 energy to perform a free recover or reinforce action.'''
        'Ordnance Tubes':
            text: '''%HUGESHIPONLY%%LINEBREAK%You may treat each of your %HARDPOINT% upgrade icons as a %TORPEDO% or %MISSILE% icon.%LINEBREAK%When you are instructed to discard a %TORPEDO% or %MISSILE% Upgrade card, do not discard it.'''
        'Long-Range Scanners':
            text: '''You can acquire target locks on ships at Range 3 and beyond.  You cannot acquire target locks on ships at Range 1-2.  You can equip this card only if you have %TORPEDO% and %MISSILE% in your upgrade bar.'''
        "Guidance Chips":
            text: """Once per round, when attacking with a %TORPEDO% or %MISSILE% secondary weapon, you may change 1 die result to a %HIT% result (or a %CRIT% result if your primary weapon value is "3" or higher)."""
        'Vectored Thrusters':
            text: '''%SMALLSHIPONLY%%LINEBREAK%Your action bar gains the %BARRELROLL% action icon.'''
        'Smuggling Compartment':
            text: '''<span class="card-restriction">YT-1300 and YT-2400 only.</span>%LINEBREAK%Your upgrade bar gains the %ILLICIT% upgrade icon.%LINEBREAK%You may equip 1 additional Modification upgrade that costs 3 or fewer squad points.'''
        'Gyroscopic Targeting':
            text: '''<span class="card-restriction">Lancer-class Pursuit Craft only.</span>%LINEBREAK%At the end of the Combat phase, if you executed a 3-, 4-, or 5-speed maneuver this round, you may rotate your mobile firing arc.'''
        'Captured TIE':
            text: '''<span class="card-restriction">TIE Fighter only.</span> %REBELONLY%%LINEBREAK%Enemy ships with a pilot skill value lower than yours cannot declare you as the target of an attack.  After you perform an attack or when you are the only remaining friendly ship, discard this card.'''
        'Spacetug Tractor Array':
            text: '''<span class="card-restriction">Quadjumper only.</span>%LINEBREAK%<strong>Action:</strong> Choose a ship inside your firing arc at Range 1 and assign a tractor beam token to it.  If it is a friendly ship, resolve the effect of the tractor beam token as though it were an enemy ship.'''
        'Lightweight Frame':
            text: '''<span class="card-restriction">TIE only.</span>%LINEBREAK%When defending, after rolling defense dice, if there are more attack dice than defense dice, roll 1 additional defense die.%LINEBREAK%You cannot equip this card if your agility value is "3" or higher.'''
        'Pulsed Ray Shield':
            text: '''<span class="card-restriction">Rebel and Scum only.</span>%LINEBREAK%During the End phase, you may receive 1 ion token to recover 1 shield (up to your shield value). You can equip this card only if your shield value is "1."'''
        'Deflective Plating':
            text: '''<span class="card-restriction">B/SF-17 Bomber only.</span>%LINEBREAK%When a friendly bomb token detonates, you may choose not to suffer its effects.  If you do, roll an attack die.  On a %HIT% result, discard this card.'''

    title_translations =
        "Slave I":
            text: """<span class="card-restriction">Firespray-31 only.</span>%LINEBREAK%Your upgrade bar gains the %TORPEDO% upgrade icon."""
        "Millennium Falcon":
            text: """<span class="card-restriction">YT-1300 only.</span>%LINEBREAK%Your action bar gains the %EVADE% action icon."""
        "Moldy Crow":
            text: """<span class="card-restriction">HWK-290 only.</span>%LINEBREAK%During the End phase, do not remove unused focus tokens from your ship."""
        "ST-321":
            text: """<span class="card-restriction"><em>Lambda</em>-class Shuttle only.</span>%LINEBREAK%When acquiring a target lock, you may lock onto any enemy ship in the play area."""
        "Royal Guard TIE":
            text: """<span class="card-restriction">TIE Interceptor only.</span>%LINEBREAK%You may equip up to 2 different Modification upgrades (instead of 1).%LINEBREAK%You cannot equip this card if your pilot skill value is "4" or lower."""
        "Dodonna's Pride":
            text: """<span class="card-restriction">CR90 fore section only.</span>%LINEBREAK%When you perform a coordinate action, you may choose 2 friendly ships (instead of 1).  Those ships may each perform 1 free action."""
        "A-Wing Test Pilot":
            text: """<span class="card-restriction">A-Wing only.</span>%LINEBREAK%Your upgrade bar gains 1 %ELITE% upgrade icon.%LINEBREAK%You cannot equip 2 of the same %ELITE% Upgrade cards.  You cannot equip this if your pilot skill value is "1" or lower."""
        "Tantive IV":
            text: """<span class="card-restriction">CR90 fore section only.</span>%LINEBREAK%Your fore section upgrade bar gains 1 additional %CREW% and 1 additional %TEAM% upgrade icon."""
        "Bright Hope":
            text: """<span class="card-restriction">GR-75 only.</span>%LINEBREAK%A reinforce action assigned to your fore section adds 2 %EVADE% results (instead of 1)."""
        "Quantum Storm":
            text: """<span class="card-restriction">GR-75 only.</span>%LINEBREAK%At the start of the End phase, if you have 1 or fewer energy tokens, gain 1 energy token."""
        "Dutyfree":
            text: """<span class="card-restriction">GR-75 only.</span>%LINEBREAK%When performing a jam action, you may choose an enemy ship at Range 1-3 (instead of at Range 1-2)."""
        "Jaina's Light":
            text: """<span class="card-restriction">CR90 fore section only.</span>%LINEBREAK%When defending, once per attack, if you are dealt a faceup Damage card, you may discard it and draw another faceup Damage card."""
        "Outrider":
            text: """<span class="card-restriction">YT-2400 only.</span>%LINEBREAK%While you have a %CANNON% Upgrade card equipped, you <strong>cannot</strong> perform primary weapon attacks and you may perform %CANNON% secondary weapon attacks against ships outside your firing arc."""
        "Dauntless":
            text: """<span class="card-restriction">VT-49 Decimator only.</span>%LINEBREAK%After you execute a maneuver that causes you to overlap another ship, you may perform 1 free action.  Then receive 1 stress token."""
        "Virago":
            text: """<span class="card-restriction">StarViper only.</span>%LINEBREAK%Your upgrade bar gains the %SYSTEM% and %ILLICIT% upgrade icons.%LINEBREAK%You cannot equip this card if your pilot skill value is "3" or lower."""
        '"Heavy Scyk" Interceptor (Cannon)':
            text: """<span class="card-restriction">M3-A Interceptor only.</span>%LINEBREAK%Your upgrade bar gains the %CANNON%, %TORPEDO%, or %MISSILE% upgrade icon.%LINEBREAK%Increase your hull value by 1."""
        '"Heavy Scyk" Interceptor (Torpedo)':
            text: """<span class="card-restriction">M3-A Interceptor only.</span>%LINEBREAK%Your upgrade bar gains the %CANNON%, %TORPEDO%, or %MISSILE% upgrade icon.%LINEBREAK%Increase your hull value by 1."""
        '"Heavy Scyk" Interceptor (Missile)':
            text: """<span class="card-restriction">M3-A Interceptor only.</span>%LINEBREAK%Your upgrade bar gains the %CANNON%, %TORPEDO%, or %MISSILE% upgrade icon.%LINEBREAK%Increase your hull value by 1."""
        "IG-2000":
            text: """<span class="card-restriction">Aggressor only.</span> %SCUMONLY%%LINEBREAK%You have the pilot ability of each other friendly ship with the <em>IG-2000</em> Upgrade card (in addition to your own pilot ability)."""
        "BTL-A4 Y-Wing":
            text: """<span class="card-restriction">Y-Wing only.</span>%LINEBREAK%You cannot attack ships outside your firing arc. After you perform a primary weapon attack, you may immediately perform an attack with a %TURRET% secondary weapon."""
        "Andrasta":
            text: """Your upgrade bar gains two additional %BOMB% upgrade icons."""
        "TIE/x1":
            text: """<span class="card-restriction">TIE Advanced only.</span>%LINEBREAK%Your upgrade bar gains the %SYSTEM% upgrade icon.%LINEBREAK%If you equip a %SYSTEM% upgrade, its squad point cost is reduced by 4 (to a minimum of 0)."""
        "Hound's Tooth":
            text: """<span class="card-restriction">YV-666 only.</span>%LINEBREAK%After you are destroyed, before you are removed from the play area, you may <strong>deploy</strong> the <em>Nashtah Pup</em> ship.%LINEBREAK%It cannot attack this round."""
        "Ghost":
            text: """<span class="card-restriction">VCX-100 only.</span>%LINEBREAK%Equip the <em>Phantom</em> title card to a friendly Attack Shuttle and dock it to this ship.%LINEBREAK%After you execute a maneuver, you may deploy it from your rear guides."""
        "Phantom":
            text: """While you are docked, the <em>Ghost</em> can perform primary weapon attacks from its special firing arc, and, at the end of the Combat phase, it may perform an additional attack with an equipped %TURRET%. If it performs this attack, it cannot attack again this round."""
        "TIE/v1":
            text: """<span class="card-restriction">TIE Advanced Prototype only.</span>%LINEBREAK%After you acquire a target lock, you may perform a free evade action."""
        "Mist Hunter":
            text: """<span class="card-restriction">G-1A starfighter only.</span>%LINEBREAK%Your action bar gains the %BARRELROLL% action icon.%LINEBREAK%You <strong>must</strong> equip 1 "Tractor Beam" Upgrade card (paying its squad point cost as normal)."""
        "Punishing One":
            text: """<span class="card-restriction">JumpMaster 5000 only.</span>%LINEBREAK%Increase your primary weapon value by 1."""
        "Assailer":
            text: """<span class="card-restriction"><em>Raider</em>-class corvette aft section only.</span>%LINEBREAK%When defending, if the targeted section has a reinforce token, you may change 1 %FOCUS% result to a %EVADE% result."""
        "Instigator":
            text: """<span class="card-restriction"><em>Raider</em>-class corvette aft section only.</span>%LINEBREAK%After you perform a recover action, recover 1 additional shield."""
        "Impetuous":
            text: """<span class="card-restriction"><em>Raider</em>-class corvette aft section only.</span>%LINEBREAK%After you perform an attack that destroys an enemy ship, you may acquire a target lock."""
        'TIE/x7':
            text: '''<span class="card-restriction">TIE Defender only.</span>%LINEBREAK%Your upgrade bar loses the %CANNON% and %MISSILE% upgrade icons.%LINEBREAK%After executing a 3-, 4-, or 5-speed maneuver, if you did not overlap an obstacle or ship, you may perform a free evade action.'''
        'TIE/D':
            text: '''<span class="card-restriction">TIE Defender only.</span>%LINEBREAK%Once per round, after you perform an attack with a %CANNON% secondary weapon that costs 3 or fewer squad points, you may perform a primary weapon attack.'''
        'TIE Shuttle':
            text: '''<span class="card-restriction">TIE Bomber only.</span>%LINEBREAK%Your upgrade bar loses all %TORPEDO%, %MISSILE%, and %BOMB% upgrade icons and gains 2 %CREW% upgrade icons.  You cannot equip a %CREW% Upgrade card that costs more than 4 squad points.'''
        'Requiem':
            text: '''%GOZANTIONLY%%LINEBREAK%When you deploy a ship, treat its pilot skill value as "8" until the end of the round.'''
        'Vector':
            text: '''%GOZANTIONLY%%LINEBREAK%After you execute a maneuver, you may deploy up to 4 attached ships (instead of 2).'''
        'Suppressor':
            text: '''%GOZANTIONLY%%LINEBREAK%Once per round, after you acquire a target lock, you may remove 1 focus, evade, or blue target lock token from that ship.'''
        'Black One':
            text: '''After you perform a boost or barrel roll action, you may remove 1 enemy target lock from a friendly ship at Range 1.  You cannot equip this card if your pilot skill is "6" or lower.'''
        'Millennium Falcon (TFA)':
            text: '''After you execute a 3-speed bank maneuver (%BANKLEFT% or %BANKRIGHT%), if you are not touching another ship and you are not stressed, you may receive 1 stress token to rotate your ship 180&deg;.'''
        'Alliance Overhaul':
            text: '''<span class="card-restriction">ARC-170 only.</span>%LINEBREAK%When attacking with a primary weapon from your primary firing arc, you may roll 1 additional attack die.  When attacking from your auxiliary firing arc, you may change 1 of your %FOCUS% results to a %CRIT% result.'''
        'Special Ops Training':
            text: '''<span class="card-restriction">TIE/sf only.</span>%LINEBREAK%When attacking with a primary weapon from your primary firing arc, you may roll 1 additional attack die.  If you do not, you may perform an additional attack from your auxiliary firing arc.'''
        'Concord Dawn Protector':
            text: '''<span class="card-restriction">Protectorate Starfighter only.</span>%LINEBREAK%When defending, if you are inside the attacker's firing arc and at Range 1 and the attacker is inside your firing arc, add 1 %EVADE% result.'''
        'Shadow Caster':
            text: '''<span class="card-restriction">Lancer-class Pursuit Craft only.</span>%LINEBREAK%After you perform an attack that hits, if the defender is inside your mobile firing arc and at Range 1-2, you may assign the defender 1 tractor beam token.'''
        # Wave X
        '''Sabine's Masterpiece''':
            text: '''<span class="card-restriction">TIE Fighter only.</span>%REBELONLY%%LINEBREAK%Your upgrade bar gains the %CREW% and %ILLICIT% upgrade icons.'''
        '''Kylo Ren's Shuttle''':
            text: '''<span class="card-restriction">Upsilon-class Shuttle only.</span>%LINEBREAK%At the end of the Combat phase, choose an unstressed enemy ship at Range 1-2.  Its owner must assign a stress token to it or assign a stress token to another ship at Range 1-2 of you that that player controls.'''
        '''Pivot Wing''':
            text: '''<span class="card-restriction">U-Wing only.</span> %DUALCARD%%LINEBREAK%<strong>Side A (Attack):</strong> Increase your agility by 1.%LINEBREAK%After you execute a maneuver, you may flip this card.%LINEBREAK%<strong>Side B (Landing):</strong> When you reveal a (0 %STOP%) maneuver, you may rotate your ship 180&deg;.%LINEBREAK%After you execute a maneuver, you may flip this card.'''
        '''Adaptive Ailerons''':
            text: '''<span class="card-restriction">TIE Striker only.</span>%LINEBREAK%Immediately before you reveal your dial, if you are not stressed, you <strong>must</strong> execute a white (%BANKLEFT% 1), (%STRAIGHT% 1), or (%BANKRIGHT% 1) maneuver.'''
        # C-ROC
        '''Merchant One''':
            text: '''<span class="card-restriction">C-ROC Cruiser only.</span>%LINEBREAK%Your upgrade bar 1 gains additional %CREW% upgrade icon and 1 additional %TEAM% upgrade icon and loses 1 %CARGO% upgrade icon.'''
        '''"Light Scyk" Interceptor''':
            text: '''<span class="card-restriction">M3-A Interceptor only.</span>%LINEBREAK%All Damage cards dealt to you are dealt faceup.  You may treat all bank maneuvers (%BANKLEFT% or %BANKRIGHT%) as green maneuvers.  You cannot equip Modification upgrades.'''
        '''Insatiable Worrt''':
            text: '''After you perform the recover action, gain 3 energy.'''
        '''Broken Horn''':
            text: '''When defending, if you have a reinforce token, you may add 1 additional %EVADE% result.  If you do, after defending, discard your reinforce token.'''
        'Havoc':
            text: '''<span class="card-restriction">Scurrg H-6 Bomber only.</span>%LINEBREAK%Your upgrade bar gains the %SYSTEM% and %SALVAGEDASTROMECH% icons and loses the %CREW% upgrade icon.%LINEBREAK%You cannot equip non-unique %SALVAGEDASTROMECH% Upgrade cards.'''
        'Vaksai':
            text: '''<span class="card-restriction">Kihraxz Fighter only.</span>%LINEBREAK%The squad point cost of each of your equipped upgrades is reduced by 1 (to a minimum of 0).%LINEBREAK%You may equip up to 3 different Modification upgrades.'''
        'StarViper Mk. II':
            text: '''<span class="card-restriction">StarViper only.</span>%LINEBREAK%You may equip up to 2 different title Upgrades.%LINEBREAK%When performing a barrel roll action, you <strong>must</strong> use the (%BANKLEFT% 1) or (%BANKRIGHT% 1) template instead of the (%STRAIGHT% 1) template.'''
        'XG-1 Assault Configuration':
            text: '''<span class="card-restriction">Alpha-class Star Wing only.</span>%LINEBREAK%Your upgrade bar gains 2 %CANNON% icons.%LINEBREAK%You may perform attacks with %CANNON% secondary weapons that cost 2 or fewer points even while you have a weapons disabled token.'''
        'Enforcer':
            text: '''<span class="card-restriction">M12-L Kimogila Fighter only.</span>%LINEBREAK%After defending, if the attacker is inside your bullseye firing arc, the attacker receives 1 stress token.'''
        'Ghost (Phantom II)':
            text: '''<span class="card-restriction">VCX-100 only.</span>%LINEBREAK%Equip the <em>Phantom II</em> title card to a friendly <em>Sheathipede</em>-class shuttle and dock it to this ship.%LINEBREAK%After you execute a maneuver, you may deploy it from your rear guides.'''
        'Phantom II':
            text: '''While you are docked, the <em>Ghost</em> can perform primary weapon attacks from its special firing arc.%LINEBREAK%While you are docked, at the end of the Activation phase, the <em>Ghost</em> may perform a free coordinate action.'''
        'First Order Vanguard':
            text: '''<span class="card-restriction">TIE Silencer only.</span>%LINEBREAK%When attacking, if the defender is the only ship in your firing arc at Range 1-3, you may reroll 1 attack die.%LINEBREAK%When defending, you may discard this card to reroll all of your defense dice.'''
        'Os-1 Arsenal Loadout':
            text: '''<span class="card-restriction">Alpha-class Star Wing only.</span>%LINEBREAK%Your upgrade bar gains the %TORPEDO% and %MISSILE% icons.%LINEBREAK%You may perform attacks with %TORPEDO% and %MISSILE% secondary weapons against ships you have locked even while you have a weapons disabled token.'''
        'Crossfire Formation':
            text: '''<span class="card-restriction">B/SF-17 Bomber only.</span>%LINEBREAK%When defending, if there is at least 1 other friendly Resistance ship at Range 1-2 of the attacker, you may add 1 %FOCUS% result to your roll.'''

    condition_translations =
        '''I'll Show You the Dark Side''':
            text: '''When this card is assigned, if it is not already in play, the player who assigned it searches the Damage deck for 1 Damage card with the <strong><em>Pilot</em></strong> trait and may place it faceup on this card. Then shuffle the damage deck.%LINEBREAK%When you suffer critical damage during an attack, you are instead dealt the chosen faceup Damage card.%LINEBREAK%When there is no Damage card on this card, remove it.'''
        'Suppressive Fire':
            text: '''When attacking a ship other than "Captain Rex," roll 1 fewer attack die.%LINEBREAK% When you declare an attack targeting "Captain Rex" or when "Captain Rex" is destroyed, remove this card.%LINEBREAK%At the end of the Combat phase, if "Captain Rex" did not perform an attack this phase, remove this card.'''
        'Fanatical Devotion':
            text: '''When defending, you cannot spend focus tokens.%LINEBREAK%When attacking, if you spend a focus token to change all %FOCUS% results to %HIT% results, set aside the first %FOCUS% result that you change. The set-aside %HIT% result cannot be canceled by defense dice, but the defender may cancel %CRIT% results before it.%LINEBREAK%During the End phase, remove this card.'''
        'A Debt to Pay':
            text: '''When attacking a ship that has the "A Score to Settle" Upgrade card equipped, you may change 1 %FOCUS% result to a %CRIT% result.'''
        'Shadowed':
            text: '''"Thweek" is treated as having the pilot skill value you had after setup.%LINEBREAK%The pilot skill value of "Thweek" does not change if your pilot skill value changes or you are destroyed.'''
        'Mimicked':
            text: '''"Thweek" is treated as having your pilot ability.%LINEBREAK%"Thweek" cannot apply a Condition card by using your pilot ability.%LINEBREAK%"Thweek" does not lose your pilot ability if you are destroyed.'''
        'Harpooned!':
            text: '''When you are hit by an attack, if there is at least 1 uncanceled %CRIT% result, each other ship at Range 1 suffers 1 damage.  Then discard this card and receive 1 facedown Damage card.%LINEBREAK%When you are destroyed, each ship at Range 1 suffers 1 damage.%LINEBREAK%<strong>Action:</strong> Discard this card.  Then roll 1 attack die.  On a %HIT% or %CRIT% result, suffer 1 damage.'''
        'Rattled':
            text: '''When you suffer damage from a bomb, you suffer 1 additional critical damage. Then, remove this card.%LINEBREAK%<strong>Action:</strong> Roll 1 attack die. On a %FOCUS% or %HIT% result, remove this card.'''
        'Scrambled':
            text: '''When attacking a ship at Range 1 that is equipped with the "Targeting Scrambler" upgrade, you cannot modify attack dice.%LINEBREAK%At the end of the combat phase, remove this card.'''
        'Optimized Prototype':
            text: '''Increase your shield value by 1.%LINEBREAK%Once per round, when performing a primary weapon attack, you may spend 1 die result to remove 1 shield from the defender. ...'''

    chassis_translations =
        "T-65B":
            text: """Before executing a green maneuver, if you are not stressed, you may first execute a white (%BANKLEFT% 1), (%STRAIGHT% 1), or (%BANKRIGHT% 1) maneuver.%LINEBREAK%"""
        "T-65C-A2":
            text: """you may treat all (%STRAIGHT%) maneuvers as green maneuvers.%LINEBREAK%"""
        "T-65BR 'Recon X'":
            text: """At the end of the Planning phase, you may choose an enemy ship at Range 1-3. Guess aloud that ship’s bearing and speed, then look at its dial. If correct, you may rotate your dial to an- other maneuver. %LINEBREAK%<strong>Action:</strong> Destroy this ship. Each ship at Range 1 suffers 1 damage.%LINEBREAK%"""
        "BTL-A4 LP 'LongProbe'":
            text: """You cannot attack ships outside your firing arc. You may treat all speed 1 maneuvers as green maneuvers."""
        "BTL-A4":
            text: """You cannot attack ships outside your firing arc. After you preform a primary weapon attack, you may immediately perform an attack with a %TURRET% secondary weapon.%LINEBREAK%After executing a (3) or (4) speed maneuver, if you did not overlap an obstacle or ship, you may aquire a target lock."""
        "BTL-S3":
            text: """Increase your shield value by 1"""
        "BTL-S3 TS 'Twin'":
            text: """Increase your shield value by 1"""
        "Flight School TIE/LN":
            text: """All damage cards dealt to you are dealt faceup. You may not equip unique %CREW% upgrade cards."""
        "TIE/LN 'S-Type'":
            text: """After preforming a (%STRAIGHT%) maneuver, you may preform a free %BOOST% action. Your action bar gains the %TARGETLOCK% icon."""
        "TIE/M2 'Havoc'":
            text: """Treat all (%TURNLEFT% 1) and (%TURNRIGHT% 1) maneuvers as red maneuvers. Your action bar gains the %TARGETLOCK% icon."""
        "TIE/LN":
            text: """After preforming a (%STRAIGHT% 5) maneuver, you may preform a free %BARRELROLL% or %EVADE% action."""
        "TIE/x2C 'Corona'":
            text: """Your action bar gains the %BOOST% icon. When preforming a %BOOST% action, you may use the (%BANKLEFT% 2) or (%BANKRIGHT% 2) maneuver template."""
        "TIE/x1":
            text: """Once per round, when defending against primary weapon attack, you may cancel one of your %FOCUS% results during the 'Modify Defense Dice' step to assign 1 %FOCUS% token to your ship."""
        "TIE/x1 Prototype":
            text: """<span class="card-restriction">Darth Vader Only</span>%LINEBREAK%Your action bar gains the %BOOST% icon. When performing a primary weapon attack, you may receive one stress token to preform this attack twice."""

    exportObj.setupCardData basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations, condition_translations, chassis_translations