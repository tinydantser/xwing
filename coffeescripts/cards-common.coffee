# This must be loaded before any of the card language modules!
exportObj = exports ? this

exportObj.unreleasedExpansions = [
    '''Saw's Renegades Expansion Pack'''
    'TIE Reaper Expansion Pack'
]

exportObj.isReleased = (data) ->
    for source in data.sources
        return true if source not in exportObj.unreleasedExpansions
    false

String::canonicalize = ->
    this.toLowerCase()
        .replace(/[^a-z0-9]/g, '')
        .replace(/\s+/g, '-')

exportObj.hugeOnly = (ship) ->
    ship.data.huge ? false

# Returns an independent copy of the data which can be modified by translation
# modules.
exportObj.basicCardData = ->
    ships:
        "X-Wing":
            name: "X-Wing"
            factions: [ "Rebel Alliance", ]
            attack: 3
            agility: 2
            hull: 3
            shields: 2
            actions: [
                "Focus"
                "Target Lock",
                "Barrel Roll"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 0, 2, 2, 2, 0, 0]
              [ 1, 1, 2, 1, 1, 0]
              [ 1, 1, 1, 1, 1, 0]
              [ 0, 0, 1, 0, 0, 3]
            ]
        "Y-Wing":
            name: "Y-Wing"
            factions: [ "Rebel Alliance" ]
            attack: 2
            agility: 1
            hull: 5
            shields: 3
            actions: [
                "Focus"
                "Target Lock"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 0, 1, 2, 1, 0, 0]
              [ 1, 1, 2, 1, 1, 0]
              [ 3, 1, 1, 1, 3, 0]
              [ 0, 0, 3, 0, 0, 3]
            ]
        "TIE Fighter":
            name: "TIE Fighter"
            factions: ["Galactic Empire"]
            attack: 2
            agility: 3
            hull: 3
            shields: 0
            actions: [
                "Focus"
                "Barrel Roll"
                "Evade"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 0]
              [ 1, 2, 2, 2, 1, 0]
              [ 1, 1, 2, 1, 1, 3]
              [ 0, 0, 1, 0, 0, 3]
              [ 0, 0, 1, 0, 0, 0]
            ]
        "TIE Advanced":
            name: "TIE Advanced"
            factions: [ "Galactic Empire", ]
            attack: 3
            agility: 3
            hull: 3
            shields: 2
            actions: [
                "Focus"
                "Target Lock"
                "Barrel Roll"
                "Evade"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 0, 2, 0, 2, 0, 0]
              [ 1, 1, 2, 1, 1, 0]
              [ 1, 1, 2, 1, 1, 0]
              [ 0, 0, 1, 0, 0, 3]
              [ 0, 0, 1, 0, 0, 0]
            ]

    # name field is for convenience only
    pilotsById: [
        {
            name: "Wedge Antilles"
            faction: "Rebel Alliance"
            id: 0
            unique: true
            ship: "X-Wing"
            skill: 10
            points: 29
            slots: [
                "Elite"
            ]
        }
        {
            name: "Garven Dreis"
            faction: "Rebel Alliance"
            id: 1
            unique: true
            ship: "X-Wing"
            skill: 6
            points: 25
            slots: [
                 "Elite"
            ]
        }
        {
            name: "Red Squadron Pilot"
            faction: "Rebel Alliance"
            id: 2
            ship: "X-Wing"
            skill: 4
            points: 22
            slots: [
                 "Elite"
            ]
        }
        {
            name: "Rookie Pilot"
            faction: "Rebel Alliance"
            id: 3
            ship: "X-Wing"
            skill: 2
            points: 20
            slots: [ ]
        }
        {
            name: "Biggs Darklighter"
            faction: "Rebel Alliance"
            id: 4
            unique: true
            ship: "X-Wing"
            skill: 5
            points: 26
            slots: []
        }
        {
            name: "Luke Skywalker"
            faction: "Rebel Alliance"
            id: 5
            unique: true
            ship: "X-Wing"
            skill: 9
            points: 29
            slots: [
                "Elite"
            ]
        }
        {
            name: "Gray Squadron Pilot"
            faction: "Rebel Alliance"
            id: 6
            ship: "Y-Wing"
            skill: 4
            points: 20
            slots: [
                "Elite"
            ]
        }
        {
            name: '"Dutch" Vander'
            faction: "Rebel Alliance"
            id: 7
            unique: true
            ship: "Y-Wing"
            skill: 6
            points: 22
            slots: [
                "Elite"
            ]
        }
        {
            name: "Horton Salm"
            faction: "Rebel Alliance"
            id: 8
            unique: true
            ship: "Y-Wing"
            skill: 8
            points: 24
            slots: [
                 "Elite"
            ]
        }
        {
            name: "Gold Squadron Pilot"
            faction: "Rebel Alliance"
            id: 9
            ship: "Y-Wing"
            skill: 2
            points: 18
            slots: []
        }
        {
            name: "Academy Pilot"
            faction: "Galactic Empire"
            id: 10
            ship: "TIE Fighter"
            skill: 1
            points: 10
            slots: []
        }
        {
            name: "Obsidian Squadron Pilot"
            faction: "Galactic Empire"
            id: 11
            ship: "TIE Fighter"
            skill: 3
            points: 12
            slots: [
                "Elite"
            ]
        }
        {
            name: "Black Squadron Pilot"
            faction: "Galactic Empire"
            id: 12
            ship: "TIE Fighter"
            skill: 5
            points: 13
            slots: [
                "Elite"
            ]
        }
        {
            name: '"Winged Gundark"'
            faction: "Galactic Empire"
            id: 13
            unique: true
            ship: "TIE Fighter"
            skill: 5
            points: 14
            slots: [ ]
        }
        {
            name: '"Night Beast"'
            faction: "Galactic Empire"
            id: 14
            unique: true
            ship: "TIE Fighter"
            skill: 5
            points: 13
            slots: [
                "Elite"
            ]
        }
        {
            name: '"Backstabber"'
            faction: "Galactic Empire"
            id: 15
            unique: true
            ship: "TIE Fighter"
            skill: 6
            points: 15
            slots: [
                "Elite"
            ]
        }
        {
            name: '"Dark Curse"'
            faction: "Galactic Empire"
            id: 16
            unique: true
            ship: "TIE Fighter"
            skill: 6
            points: 17
            slots: [ ]
        }
        {
            name: '"Mauler Mithel"'
            faction: "Galactic Empire"
            id: 17
            unique: true
            ship: "TIE Fighter"
            skill: 7
            points: 16
            slots: [
                "Elite"
            ]
        }
        {
            name: '"Howlrunner"'
            faction: "Galactic Empire"
            id: 18
            unique: true
            ship: "TIE Fighter"
            skill: 8
            points: 18
            slots: [
                "Elite"
            ]
        }
        {
            name: "Maarek Stele"
            faction: "Galactic Empire"
            id: 19
            unique: true
            ship: "TIE Advanced"
            skill: 8
            points: 30
            slots: [
                "Elite"
            ]
        }
        {
            name: "Tempest Squadron Pilot"
            faction: "Galactic Empire"
            id: 20
            ship: "TIE Advanced"
            skill: 2
            points: 25
            slots: []
        }
        {
            name: "Storm Squadron Pilot"
            faction: "Galactic Empire"
            id: 21
            ship: "TIE Advanced"
            skill: 4
            points: 28
            slots: [
                "Elite"
            ]
        }
        {
            name: "Darth Vader"
            faction: "Galactic Empire"
            id: 22
            unique: true
            ship: "TIE Advanced"
            skill: 10
            points: 35
            slots: [
                "Elite"
            ]
        }
        {
            name: "Alpha Squadron Pilot"
            faction: "Galactic Empire"
            id: 23
            ship: "TIE Interceptor"
            skill: 1
            points: 18
            slots: [ ]
        }
        {
            name: "Avenger Squadron Pilot"
            faction: "Galactic Empire"
            id: 24
            ship: "TIE Interceptor"
            skill: 3
            points: 20
            slots: [ ]
        }
        {
            name: "Saber Squadron Pilot"
            faction: "Galactic Empire"
            id: 25
            ship: "TIE Interceptor"
            skill: 4
            points: 21
            slots: [
                "Elite"
            ]
        }
        {
            name: "\"Fel's Wrath\""
            faction: "Galactic Empire"
            id: 26
            unique: true
            ship: "TIE Interceptor"
            skill: 5
            points: 23
            slots: [ ]
        }
        {
            name: "Turr Phennir"
            faction: "Galactic Empire"
            id: 27
            unique: true
            ship: "TIE Interceptor"
            skill: 7
            points: 25
            slots: [
                "Elite"
            ]
        }
        {
            name: "Soontir Fel"
            faction: "Galactic Empire"
            id: 28
            unique: true
            ship: "TIE Interceptor"
            skill: 9
            points: 27
            slots: [
                "Elite"
            ]
        }
        {
            name: "Tycho Celchu"
            faction: "Rebel Alliance"
            id: 29
            unique: true
            ship: "A-Wing"
            skill: 8
            points: 26
            slots: [
                "Elite"
                "Missile"
            ]
        }
        {
            name: "Arvel Crynyd"
            faction: "Rebel Alliance"
            id: 30
            unique: true
            ship: "A-Wing"
            skill: 6
            points: 23
            slots: [
                "Missile"
            ]
        }
        {
            name: "Green Squadron Pilot"
            faction: "Rebel Alliance"
            id: 31
            ship: "A-Wing"
            skill: 3
            points: 19
            slots: [
                "Elite"
                "Missile"
            ]
        }
        {
            name: "Prototype Pilot"
            faction: "Rebel Alliance"
            id: 32
            ship: "A-Wing"
            skill: 1
            points: 17
            slots: [
                "Missile"
            ]
        }
        {
            name: "Outer Rim Smuggler"
            faction: "Rebel Alliance"
            id: 33
            ship: "YT-1300"
            skill: 1
            points: 27
            slots: [
                "Crew"
                "Crew"
            ]
        }
        {
            name: "Chewbacca"
            faction: "Rebel Alliance"
            id: 34
            unique: true
            ship: "YT-1300"
            skill: 5
            points: 42
            slots: [
                "Elite"
                "Missile"
                "Crew"
                "Crew"
            ]
            ship_override:
                attack: 3
                agility: 1
                hull: 8
                shields: 5
        }
        {
            name: "Lando Calrissian"
            faction: "Rebel Alliance"
            id: 35
            unique: true
            ship: "YT-1300"
            skill: 7
            points: 44
            slots: [
                "Elite"
                "Missile"
                "Crew"
                "Crew"
            ]
            ship_override:
                attack: 3
                agility: 1
                hull: 8
                shields: 5
        }
        {
            name: "Han Solo"
            faction: "Rebel Alliance"
            id: 36
            unique: true
            ship: "YT-1300"
            skill: 9
            points: 46
            slots: [
                "Elite"
                "Missile"
                "Crew"
                "Crew"
            ]
            ship_override:
                attack: 3
                agility: 1
                hull: 8
                shields: 5
        }
        {
            name: "Kath Scarlet"
            faction: "Galactic Empire"
            id: 37
            unique: true
            ship: "Firespray-31"
            skill: 7
            points: 38
            slots: [
                "Elite"
                "Cannon"
                "Bomb"
                "Crew"
                "Missile"
            ]
        }
        {
            name: "Boba Fett"
            faction: "Galactic Empire"
            id: 38
            unique: true
            ship: "Firespray-31"
            skill: 8
            points: 39
            slots: [
                "Elite"
                "Cannon"
                "Bomb"
                "Crew"
                "Missile"
            ]
        }
        {
            name: "Krassis Trelix"
            faction: "Galactic Empire"
            id: 39
            unique: true
            ship: "Firespray-31"
            skill: 5
            points: 36
            slots: [
                "Cannon"
                "Bomb"
                "Crew"
                "Missile"
            ]
        }
        {
            name: "Bounty Hunter"
            faction: "Galactic Empire"
            id: 40
            ship: "Firespray-31"
            skill: 3
            points: 33
            slots: [
                "Cannon"
                "Bomb"
                "Crew"
                "Missile"
            ]
        }
        {
            name: "Ten Numb"
            faction: "Rebel Alliance"
            id: 41
            unique: true
            ship: "B-Wing"
            skill: 8
            points: 31
            slots: [
                "Elite"
                "System"
                "Cannon"
                "Torpedo"
                "Torpedo"
            ]
        }
        {
            name: "Ibtisam"
            faction: "Rebel Alliance"
            id: 42
            unique: true
            ship: "B-Wing"
            skill: 6
            points: 28
            slots: [
                "Elite"
                "System"
                "Cannon"
                "Torpedo"
                "Torpedo"
            ]
        }
        {
            name: "Dagger Squadron Pilot"
            faction: "Rebel Alliance"
            id: 43
            ship: "B-Wing"
            skill: 4
            points: 24
            slots: [
                "System"
                "Cannon"
                "Torpedo"
                "Torpedo"
            ]
        }
        {
            name: "Blue Squadron Pilot"
            faction: "Rebel Alliance"
            id: 44
            ship: "B-Wing"
            skill: 2
            points: 22
            slots: [
                "System"
                "Cannon"
                "Torpedo"
                "Torpedo"
            ]
        }
        {
            name: "Rebel Operative"
            faction: "Rebel Alliance"
            id: 45
            ship: "HWK-290"
            skill: 2
            points: 16
            slots: [
                "Turret"
                "Crew"
            ]
        }
        {
            name: "Roark Garnet"
            faction: "Rebel Alliance"
            id: 46
            unique: true
            ship: "HWK-290"
            skill: 4
            points: 19
            slots: [
                "Turret"
                "Crew"
            ]
        }
        {
            name: "Kyle Katarn"
            faction: "Rebel Alliance"
            id: 47
            unique: true
            ship: "HWK-290"
            skill: 6
            points: 21
            slots: [
                "Elite"
                "Turret"
                "Crew"
            ]
        }
        {
            name: "Jan Ors"
            faction: "Rebel Alliance"
            id: 48
            unique: true
            ship: "HWK-290"
            skill: 8
            points: 25
            slots: [
                "Elite"
                "Turret"
                "Crew"
            ]
        }
        {
            name: "Scimitar Squadron Pilot"
            faction: "Galactic Empire"
            id: 49
            ship: "TIE Bomber"
            skill: 2
            points: 16
            slots: [
                "Torpedo"
                "Torpedo"
                "Missile"
                "Missile"
                "Bomb"
            ]
        }
        {
            name: "Gamma Squadron Pilot"
            faction: "Galactic Empire"
            id: 50
            ship: "TIE Bomber"
            skill: 4
            points: 18
            slots: [
                "Torpedo"
                "Torpedo"
                "Missile"
                "Missile"
                "Bomb"
            ]
        }
        {
            name: "Captain Jonus"
            faction: "Galactic Empire"
            id: 51
            unique: true
            ship: "TIE Bomber"
            skill: 6
            points: 22
            slots: [
                "Elite"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Missile"
                "Bomb"
            ]
        }
        {
            name: "Major Rhymer"
            faction: "Galactic Empire"
            id: 52
            unique: true
            ship: "TIE Bomber"
            skill: 7
            points: 26
            slots: [
                "Elite"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Missile"
                "Bomb"
            ]
        }
        {
            name: "Captain Kagi"
            faction: "Galactic Empire"
            id: 53
            unique: true
            ship: "Lambda-Class Shuttle"
            skill: 8
            points: 27
            slots: [
                "System"
                "Cannon"
                "Crew"
                "Crew"
            ]
        }
        {
            name: "Colonel Jendon"
            faction: "Galactic Empire"
            id: 54
            unique: true
            ship: "Lambda-Class Shuttle"
            skill: 6
            points: 26
            slots: [
                "System"
                "Cannon"
                "Crew"
                "Crew"
            ]
        }
        {
            name: "Captain Yorr"
            faction: "Galactic Empire"
            id: 55
            unique: true
            ship: "Lambda-Class Shuttle"
            skill: 4
            points: 24
            slots: [
                "System"
                "Cannon"
                "Crew"
                "Crew"
            ]
        }
        {
            name: "Omicron Group Pilot"
            faction: "Galactic Empire"
            id: 56
            ship: "Lambda-Class Shuttle"
            skill: 2
            points: 21
            slots: [
                "System"
                "Cannon"
                "Crew"
                "Crew"
            ]
        }
        {
            name: "Lieutenant Lorrir"
            faction: "Galactic Empire"
            id: 57
            unique: true
            ship: "TIE Interceptor"
            skill: 5
            points: 23
            slots: [ ]
        }
        {
            name: "Royal Guard Pilot"
            faction: "Galactic Empire"
            id: 58
            ship: "TIE Interceptor"
            skill: 6
            points: 22
            slots: [
                "Elite"
            ]
        }
        {
            name: "Tetran Cowall"
            faction: "Galactic Empire"
            id: 59
            unique: true
            ship: "TIE Interceptor"
            skill: 7
            points: 24
            slots: [
                "Elite"
            ]
            modifier_func: (stats) ->
                # add speed 1 k-turn to table (Interceptor already has 3/5)
                stats.maneuvers[1][5] = 3
        }
        {
            name: "I messed up this pilot, sorry"
            id: 60
            skip: true
        }
        {
            name: "Kir Kanos"
            faction: "Galactic Empire"
            id: 61
            unique: true
            ship: "TIE Interceptor"
            skill: 6
            points: 24
            slots: [ ]
        }
        {
            name: "Carnor Jax"
            faction: "Galactic Empire"
            id: 62
            unique: true
            ship: "TIE Interceptor"
            skill: 8
            points: 26
            slots: [
                "Elite"
            ]
        }
        {
            name: "GR-75 Medium Transport"
            faction: "Rebel Alliance"
            id: 63
            epic: true
            ship: "GR-75 Medium Transport"
            skill: 3
            points: 30
            slots: [
                "Crew"
                "Crew"
                "Cargo"
                "Cargo"
                "Cargo"
            ]
        }
        {
            name: "Bandit Squadron Pilot"
            faction: "Rebel Alliance"
            id: 64
            ship: "Z-95 Headhunter"
            skill: 2
            points: 12
            slots: [
                "Missile"
            ]
        }
        {
            name: "Tala Squadron Pilot"
            faction: "Rebel Alliance"
            id: 65
            ship: "Z-95 Headhunter"
            skill: 4
            points: 13
            slots: [
                "Missile"
            ]
        }
        {
            name: "Lieutenant Blount"
            faction: "Rebel Alliance"
            id: 66
            unique: true
            ship: "Z-95 Headhunter"
            skill: 6
            points: 17
            slots: [
                "Elite"
                "Missile"
            ]
        }
        {
            name: "Airen Cracken"
            faction: "Rebel Alliance"
            id: 67
            unique: true
            ship: "Z-95 Headhunter"
            skill: 8
            points: 19
            slots: [
                "Elite"
                "Missile"
            ]
        }
        {
            name: "Delta Squadron Pilot"
            faction: "Galactic Empire"
            id: 68
            ship: "TIE Defender"
            skill: 1
            points: 30
            slots: [
                "Cannon"
                "Missile"
            ]
        }
        {
            name: "Onyx Squadron Pilot"
            faction: "Galactic Empire"
            id: 69
            ship: "TIE Defender"
            skill: 3
            points: 32
            slots: [
                "Cannon"
                "Missile"
            ]
        }
        {
            name: "Colonel Vessery"
            faction: "Galactic Empire"
            id: 70
            unique: true
            ship: "TIE Defender"
            skill: 6
            points: 35
            slots: [
                "Elite"
                "Cannon"
                "Missile"
            ]
        }
        {
            name: "Rexler Brath"
            faction: "Galactic Empire"
            id: 71
            unique: true
            ship: "TIE Defender"
            skill: 8
            points: 37
            slots: [
                "Elite"
                "Cannon"
                "Missile"
            ]
        }
        {
            name: "Knave Squadron Pilot"
            faction: "Rebel Alliance"
            id: 72
            ship: "E-Wing"
            skill: 1
            points: 27
            slots: [
                "System"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Blackmoon Squadron Pilot"
            faction: "Rebel Alliance"
            id: 73
            ship: "E-Wing"
            skill: 3
            points: 29
            slots: [
                "System"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Etahn A'baht"
            faction: "Rebel Alliance"
            id: 74
            unique: true
            ship: "E-Wing"
            skill: 5
            points: 32
            slots: [
                "Elite"
                "System"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Corran Horn"
            faction: "Rebel Alliance"
            id: 75
            unique: true
            ship: "E-Wing"
            skill: 8
            points: 35
            slots: [
                "Elite"
                "System"
                "Torpedo"
                "Astromech"
            ]
        }
        {
            name: "Sigma Squadron Pilot"
            faction: "Galactic Empire"
            id: 76
            ship: "TIE Phantom"
            skill: 3
            points: 25
            slots: [
                "System"
                "Crew"
            ]
        }
        {
            name: "Shadow Squadron Pilot"
            faction: "Galactic Empire"
            id: 77
            ship: "TIE Phantom"
            skill: 5
            points: 27
            slots: [
                "System"
                "Crew"
            ]
        }
        {
            name: '"Echo"'
            faction: "Galactic Empire"
            id: 78
            unique: true
            ship: "TIE Phantom"
            skill: 6
            points: 30
            slots: [
                "Elite"
                "System"
                "Crew"
            ]
        }
        {
            name: '"Whisper"'
            faction: "Galactic Empire"
            id: 79
            unique: true
            ship: "TIE Phantom"
            skill: 7
            points: 32
            slots: [
                "Elite"
                "System"
                "Crew"
            ]
        }
        {
            name: "CR90 Corvette (Fore)"
            faction: "Rebel Alliance"
            id: 80
            epic: true
            ship: "CR90 Corvette (Fore)"
            skill: 4
            points: 50
            slots: [
                "Crew"
                "Hardpoint"
                "Hardpoint"
                "Team"
                "Team"
                "Cargo"
            ]
        }
        {
            name: "CR90 Corvette (Aft)"
            faction: "Rebel Alliance"
            id: 81
            epic: true
            ship: "CR90 Corvette (Aft)"
            skill: 4
            points: 40
            slots: [
                "Crew"
                "Hardpoint"
                "Team"
                "Cargo"
            ]
        }
        {
            name: "Wes Janson"
            faction: "Rebel Alliance"
            id: 82
            unique: true
            ship: "X-Wing"
            skill: 8
            points: 29
            slots: [
                "Elite"
                "Torpedo"
                "Astromech"
            ]
            skip: true
        }
        {
            name: "Jek Porkins"
            faction: "Rebel Alliance"
            id: 83
            unique: true
            ship: "X-Wing"
            skill: 7
            points: 26
            slots: [
                "Elite"
                "Torpedo"
                "Astromech"
            ]
            skip:true
        }
        {
            name: '"Hobbie" Klivian'
            faction: "Rebel Alliance"
            id: 84
            unique: true
            ship: "X-Wing"
            skill: 5
            points: 25
            slots: [
                "Torpedo"
                "Astromech"
            ]
            skip:true
        }
        {
            name: "Tarn Mison"
            faction: "Rebel Alliance"
            id: 85
            unique: true
            ship: "X-Wing"
            skill: 3
            points: 23
            slots: [
                "Torpedo"
                "Astromech"
            ]
            skip:true
        }
        {
            name: "Jake Farrell"
            faction: "Rebel Alliance"
            id: 86
            unique: true
            ship: "A-Wing"
            skill: 7
            points: 24
            slots: [
                "Elite"
                "Missile"
            ]
        }
        {
            name: "Gemmer Sojan"
            faction: "Rebel Alliance"
            id: 87
            unique: true
            ship: "A-Wing"
            skill: 5
            points: 22
            slots: [
                "Missile"
            ]
        }
        {
            name: "Keyan Farlander"
            faction: "Rebel Alliance"
            id: 88
            unique: true
            ship: "B-Wing"
            skill: 7
            points: 29
            slots: [
                "Elite"
                "System"
                "Cannon"
                "Torpedo"
                "Torpedo"
            ]
        }
        {
            name: "Nera Dantels"
            faction: "Rebel Alliance"
            id: 89
            unique: true
            ship: "B-Wing"
            skill: 5
            points: 26
            slots: [
                "Elite"
                "System"
                "Cannon"
                "Torpedo"
                "Torpedo"
            ]
        }
        {
            name: "CR90 Corvette (Crippled Fore)"
            skip: true
            faction: "Rebel Alliance"
            id: 90
            ship: "CR90 Corvette (Fore)"
            skill: 4
            points: 0
            epic: true
            slots: [
                "Crew"
            ]
            ship_override:
                attack: 2
                agility: 0
                hull: 0
                shields: 0
                actions: []
        }
        {
            name: "CR90 Corvette (Crippled Aft)"
            skip: true
            faction: "Rebel Alliance"
            id: 91
            ship: "CR90 Corvette (Aft)"
            skill: 4
            points: 0
            epic: true
            slots: [
                "Cargo"
            ]
            ship_override:
                energy: 1
                agility: 0
                hull: 0
                shields: 0
                actions: []
            modifier_func: (stats) ->
                stats.maneuvers[2][1] = 0
                stats.maneuvers[2][3] = 0
                stats.maneuvers[4][2] = 0
        }
        {
            name: "Wild Space Fringer"
            faction: "Rebel Alliance"
            id: 92
            ship: "YT-2400"
            skill: 2
            points: 30
            slots: [
                "Cannon"
                "Missile"
                "Crew"
            ]
        }
        {
            name: "Eaden Vrill"
            faction: "Rebel Alliance"
            id: 93
            ship: "YT-2400"
            unique: true
            skill: 3
            points: 32
            slots: [
                "Cannon"
                "Missile"
                "Crew"
            ]
        }
        {
            name: '"Leebo"'
            faction: "Rebel Alliance"
            id: 94
            ship: "YT-2400"
            unique: true
            skill: 5
            points: 34
            slots: [
                "Elite"
                "Cannon"
                "Missile"
                "Crew"
            ]
        }
        {
            name: "Dash Rendar"
            faction: "Rebel Alliance"
            id: 95
            ship: "YT-2400"
            unique: true
            skill: 7
            points: 36
            slots: [
                "Elite"
                "Cannon"
                "Missile"
                "Crew"
            ]
        }
        {
            name: "Patrol Leader"
            faction: "Galactic Empire"
            id: 96
            ship: "VT-49 Decimator"
            skill: 3
            points: 40
            slots: [
                "Torpedo"
                "Crew"
                "Crew"
                "Crew"
                "Bomb"
            ]
        }
        {
            name: "Captain Oicunn"
            faction: "Galactic Empire"
            id: 97
            ship: "VT-49 Decimator"
            skill: 4
            points: 42
            unique: true
            slots: [
                "Elite"
                "Torpedo"
                "Crew"
                "Crew"
                "Crew"
                "Bomb"
            ]
        }
        {
            name: "Commander Kenkirk"
            faction: "Galactic Empire"
            id: 98
            ship: "VT-49 Decimator"
            skill: 6
            points: 44
            unique: true
            slots: [
                "Elite"
                "Torpedo"
                "Crew"
                "Crew"
                "Crew"
                "Bomb"
            ]
        }
        {
            name: "Rear Admiral Chiraneau"
            faction: "Galactic Empire"
            id: 99
            ship: "VT-49 Decimator"
            skill: 8
            points: 46
            unique: true
            slots: [
                "Elite"
                "Torpedo"
                "Crew"
                "Crew"
                "Crew"
                "Bomb"
            ]
        }
        {
            name: "Prince Xizor"
            faction: "Scum and Villainy"
            id: 100
            unique: true
            ship: "StarViper"
            skill: 7
            points: 31
            slots: [
                "Elite"
                "Torpedo"
            ]
        }
        {
            name: "Guri"
            faction: "Scum and Villainy"
            id: 101
            unique: true
            ship: "StarViper"
            skill: 5
            points: 30
            slots: [
                "Elite"
                "Torpedo"
            ]
        }
        {
            name: "Black Sun Vigo"
            faction: "Scum and Villainy"
            id: 102
            ship: "StarViper"
            skill: 3
            points: 27
            slots: [
                "Torpedo"
            ]
        }
        {
            name: "Black Sun Enforcer"
            faction: "Scum and Villainy"
            id: 103
            ship: "StarViper"
            skill: 1
            points: 25
            slots: [
                "Torpedo"
            ]
        }
        {
            name: "Serissu"
            faction: "Scum and Villainy"
            id: 104
            ship: "M3-A Interceptor"
            skill: 8
            points: 20
            unique: true
            slots: [
                "Elite"
            ]
        }
        {
            name: "Laetin A'shera"
            faction: "Scum and Villainy"
            id: 105
            ship: "M3-A Interceptor"
            skill: 6
            points: 18
            unique: true
            slots: [ ]
        }
        {
            name: "Tansarii Point Veteran"
            faction: "Scum and Villainy"
            id: 106
            ship: "M3-A Interceptor"
            skill: 5
            points: 17
            slots: [
                "Elite"
            ]
        }
        {
            name: "Cartel Spacer"
            faction: "Scum and Villainy"
            id: 107
            ship: "M3-A Interceptor"
            skill: 2
            points: 14
            slots: [ ]
        }
        {
            name: "IG-88A"
            faction: "Scum and Villainy"
            id: 108
            unique: true
            ship: "Aggressor"
            skill: 6
            points: 36
            slots: [
                "Elite"
                "System"
                "Cannon"
                "Cannon"
                "Bomb"
                "Illicit"
            ]
        }
        {
            name: "IG-88B"
            faction: "Scum and Villainy"
            id: 109
            unique: true
            ship: "Aggressor"
            skill: 6
            points: 36
            slots: [
                "Elite"
                "System"
                "Cannon"
                "Cannon"
                "Bomb"
                "Illicit"
            ]
        }
        {
            name: "IG-88C"
            faction: "Scum and Villainy"
            id: 110
            unique: true
            ship: "Aggressor"
            skill: 6
            points: 36
            slots: [
                "Elite"
                "System"
                "Cannon"
                "Cannon"
                "Bomb"
                "Illicit"
            ]
        }
        {
            name: "IG-88D"
            faction: "Scum and Villainy"
            id: 111
            unique: true
            ship: "Aggressor"
            skill: 6
            points: 36
            slots: [
                "Elite"
                "System"
                "Cannon"
                "Cannon"
                "Bomb"
                "Illicit"
            ]
        }
        {
            name: "N'Dru Suhlak"
            unique: true
            faction: "Scum and Villainy"
            id: 112
            ship: "Z-95 Headhunter"
            skill: 7
            points: 17
            slots: [
                "Elite"
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Kaa'to Leeachos"
            unique: true
            faction: "Scum and Villainy"
            id: 113
            ship: "Z-95 Headhunter"
            skill: 5
            points: 15
            slots: [
                "Elite"
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Black Sun Soldier"
            faction: "Scum and Villainy"
            id: 114
            ship: "Z-95 Headhunter"
            skill: 3
            points: 13
            slots: [
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Binayre Pirate"
            faction: "Scum and Villainy"
            id: 115
            ship: "Z-95 Headhunter"
            skill: 1
            points: 12
            slots: [
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Boba Fett (Scum)"
            canonical_name: 'Boba Fett'.canonicalize()
            faction: "Scum and Villainy"
            id: 116
            ship: "Firespray-31"
            skill: 8
            points: 39
            unique: true
            slots: [
                "Elite"
                "Cannon"
                "Bomb"
                "Crew"
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Kath Scarlet (Scum)"
            canonical_name: 'Kath Scarlet'.canonicalize()
            unique: true
            faction: "Scum and Villainy"
            id: 117
            ship: "Firespray-31"
            skill: 7
            points: 38
            slots: [
                "Elite"
                "Cannon"
                "Bomb"
                "Crew"
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Emon Azzameen"
            unique: true
            faction: "Scum and Villainy"
            id: 118
            ship: "Firespray-31"
            skill: 6
            points: 36
            slots: [
                "Cannon"
                "Bomb"
                "Crew"
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Mandalorian Mercenary"
            faction: "Scum and Villainy"
            id: 119
            ship: "Firespray-31"
            skill: 5
            points: 35
            slots: [
                "Elite"
                "Cannon"
                "Bomb"
                "Crew"
                "Missile"
                "Illicit"
            ]
        }
        {
            name: "Kavil"
            unique: true
            faction: "Scum and Villainy"
            id: 120
            ship: "Y-Wing"
            skill: 7
            points: 24
            slots: [
                "Elite"
                "Turret"
                "Torpedo"
                "Torpedo"
                "Salvaged Astromech"
            ]
        }
        {
            name: "Drea Renthal"
            unique: true
            faction: "Scum and Villainy"
            id: 121
            ship: "Y-Wing"
            skill: 5
            points: 22
            slots: [
                "Turret"
                "Torpedo"
                "Torpedo"
                "Salvaged Astromech"
            ]
        }
        {
            name: "Hired Gun"
            faction: "Scum and Villainy"
            id: 122
            ship: "Y-Wing"
            skill: 4
            points: 20
            slots: [
                "Turret"
                "Torpedo"
                "Torpedo"
                "Salvaged Astromech"
            ]
        }
        {
            name: "Syndicate Thug"
            faction: "Scum and Villainy"
            id: 123
            ship: "Y-Wing"
            skill: 2
            points: 18
            slots: [
                "Turret"
                "Torpedo"
                "Torpedo"
                "Salvaged Astromech"
            ]
        }
        {
            name: "Dace Bonearm"
            unique: true
            faction: "Scum and Villainy"
            id: 124
            ship: "HWK-290"
            skill: 7
            points: 23
            slots: [
                "Elite"
                "Turret"
                "Crew"
                "Illicit"
            ]
        }
        {
            name: "Palob Godalhi"
            unique: true
            faction: "Scum and Villainy"
            id: 125
            ship: "HWK-290"
            skill: 5
            points: 20
            slots: [
                "Elite"
                "Turret"
                "Crew"
                "Illicit"
            ]
        }
        {
            name: "Torkil Mux"
            unique: true
            faction: "Scum and Villainy"
            id: 126
            ship: "HWK-290"
            skill: 3
            points: 19
            slots: [
                "Turret"
                "Crew"
                "Illicit"
            ]
        }
        {
            name: "Spice Runner"
            faction: "Scum and Villainy"
            id: 127
            ship: "HWK-290"
            skill: 1
            points: 16
            slots: [
                "Turret"
                "Crew"
                "Illicit"
            ]
        }
        {
            name: "Commander Alozen"
            faction: "Galactic Empire"
            id: 128
            ship: "TIE Advanced"
            unique: true
            skill: 5
            points: 25
            slots: [
                "Elite"
                "Missile"
            ]
            skip: true
        }
        {
            name: "Raider-class Corvette (Fore)"
            faction: "Galactic Empire"
            id: 129
            ship: "Raider-class Corvette (Fore)"
            skill: 4
            points: 50
            epic: true
            slots: [
                "Hardpoint"
                "Team"
                "Cargo"
            ]
        }
        {
            name: "Raider-class Corvette (Aft)"
            faction: "Galactic Empire"
            id: 130
            ship: "Raider-class Corvette (Aft)"
            skill: 4
            points: 50
            epic: true
            slots: [
                "Crew"
                "Crew"
                "Hardpoint"
                "Hardpoint"
                "Team"
                "Team"
                "Cargo"
            ]
        }
        {
            name: "Bossk"
            faction: "Scum and Villainy"
            id: 131
            ship: "YV-666"
            unique: true
            skill: 7
            points: 35
            slots: [
                "Elite"
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Crew"
                "Illicit"
            ]
        }
        {
            name: "Moralo Eval"
            faction: "Scum and Villainy"
            id: 132
            ship: "YV-666"
            unique: true
            skill: 6
            points: 34
            slots: [
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Crew"
                "Illicit"
            ]
        }
        {
            name: "Latts Razzi"
            faction: "Scum and Villainy"
            id: 133
            ship: "YV-666"
            unique: true
            skill: 5
            points: 33
            slots: [
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Crew"
                "Illicit"
            ]
        }
        {
            name: "Trandoshan Slaver"
            faction: "Scum and Villainy"
            id: 134
            ship: "YV-666"
            skill: 2
            points: 29
            slots: [
                "Cannon"
                "Missile"
                "Crew"
                "Crew"
                "Crew"
                "Illicit"
            ]
        }
        {
            name: "Talonbane Cobra"
            unique: true
            id: 135
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 9
            slots: [
                "Elite"
                "Missile"
                "Illicit"
            ]
            points: 28
        }
        {
            name: "Graz the Hunter"
            unique: true
            id: 136
            faction: "Scum and Villainy"
            ship: "Kihraxz Fighter"
            skill: 6
            slots: [
                "Missile"
                "Illicit"
            ]
            points: 25
        }
        {
            name: "Black Sun Ace"
            faction: "Scum and Villainy"
            id: 137
            ship: "Kihraxz Fighter"
            skill: 5
            slots: [
                "Elite"
                "Missile"
                "Illicit"
            ]
            points: 23
        }
        {
            name: "Cartel Marauder"
            faction: "Scum and Villainy"
            id: 138
            ship: "Kihraxz Fighter"
            skill: 2
            slots: [
                "Missile"
                "Illicit"
            ]
            points: 20
        }
        {
            name: "Miranda Doni"
            unique: true
            id: 139
            faction: "Rebel Alliance"
            ship: "K-Wing"
            skill: 8
            slots: [
                "Turret"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Crew"
                "Bomb"
                "Bomb"
            ]
            points: 29
        }
        {
            name: "Esege Tuketu"
            unique: true
            id: 140
            faction: "Rebel Alliance"
            ship: "K-Wing"
            skill: 6
            slots: [
                "Turret"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Crew"
                "Bomb"
                "Bomb"
            ]
            points: 28
        }
        {
            name: "Guardian Squadron Pilot"
            faction: "Rebel Alliance"
            id: 141
            ship: "K-Wing"
            skill: 4
            slots: [
                "Turret"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Crew"
                "Bomb"
                "Bomb"
            ]
            points: 25
        }
        {
            name: "Warden Squadron Pilot"
            faction: "Rebel Alliance"
            id: 142
            ship: "K-Wing"
            skill: 2
            slots: [
                "Turret"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Crew"
                "Bomb"
                "Bomb"
            ]
            points: 23
        }
        {
            name: '"Redline"'
            unique: true
            id: 143
            faction: "Galactic Empire"
            ship: "TIE Punisher"
            skill: 7
            slots: [
                "System"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Missile"
                "Bomb"
                "Bomb"
            ]
            points: 27
        }
        {
            name: '"Deathrain"'
            unique: true
            id: 144
            faction: "Galactic Empire"
            ship: "TIE Punisher"
            skill: 6
            slots: [
                "System"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Missile"
                "Bomb"
                "Bomb"
            ]
            points: 26
        }
        {
            name: 'Black Eight Squadron Pilot'
            canonical_name: 'Black Eight Sq. Pilot'.canonicalize()
            faction: "Galactic Empire"
            id: 145
            ship: "TIE Punisher"
            skill: 4
            slots: [
                "System"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Missile"
                "Bomb"
                "Bomb"
            ]
            points: 23
        }
        {
            name: 'Cutlass Squadron Pilot'
            faction: "Galactic Empire"
            id: 146
            ship: "TIE Punisher"
            skill: 2
            slots: [
                "System"
                "Torpedo"
                "Torpedo"
                "Missile"
                "Missile"
                "Bomb"
                "Bomb"
            ]
            points: 21
        }
        {
            name: "Juno Eclipse"
            id: 147
            faction: "Galactic Empire"
            ship: "TIE Advanced"
            unique: true
            skill: 8
            points: 28
            slots: [
                "Elite"
                "Missile"
            ]
            skip: true
        }
        {
            name: "Zertik Strom"
            id: 148
            faction: "Galactic Empire"
            ship: "TIE Advanced"
            unique: true
            skill: 6
            points: 26
            slots: [
                "Elite"
                "Missile"
            ]
            skip: true
        }
        {
            name: "Lieutenant Colzet"
            id: 149
            faction: "Galactic Empire"
            ship: "TIE Advanced"
            unique: true
            skill: 3
            points: 23
            slots: [
                "Missile"
            ]
            skip: true
        }
        {
            name: "Gozanti-class Cruiser"
            id: 150
            faction: "Galactic Empire"
            ship: "Gozanti-class Cruiser"
            skill: 2
            slots: [
                'Crew'
                'Crew'
                'Hardpoint'
                'Team'
                'Cargo'
                'Cargo'
            ]
            points: 40
        }
        {
            name: '"Scourge"'
            id: 151
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 7
            slots: [
                'Elite'
            ]
            points: 17
            skip:true
        }
        {
            name: '"Youngster"'
            id: 152
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 6
            slots: [
                'Elite'
            ]
            points: 15
            skip:true
        }
        {
            name: '"Wampa"'
            id: 153
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 4
            slots: []
            points: 14
            skip:true
        }
        {
            name: '"Chaser"'
            id: 154
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Fighter"
            skill: 3
            slots: []
            points: 14
            skip:true
        }
        {
            name: "Hera Syndulla"
            id: 155
            unique: true
            faction: "Rebel Alliance"
            ship: "VCX-100"
            skill: 7
            slots: [
                'System'
                'Turret'
                'Torpedo'
                'Torpedo'
                'Crew'
                'Crew'
            ]
            points: 40
        }
        {
            name: "Kanan Jarrus"
            id: 156
            unique: true
            faction: "Rebel Alliance"
            ship: "VCX-100"
            skill: 5
            slots: [
                'System'
                'Turret'
                'Torpedo'
                'Torpedo'
                'Crew'
                'Crew'
            ]
            points: 38
        }
        {
            name: '"Chopper"'
            id: 157
            unique: true
            faction: "Rebel Alliance"
            ship: "VCX-100"
            skill: 4
            slots: [
                'System'
                'Turret'
                'Torpedo'
                'Torpedo'
                'Crew'
                'Crew'
            ]
            points: 37
        }
        {
            name: 'Lothal Rebel'
            id: 158
            faction: "Rebel Alliance"
            ship: "VCX-100"
            skill: 3
            slots: [
                'System'
                'Turret'
                'Torpedo'
                'Torpedo'
                'Crew'
                'Crew'
            ]
            points: 35
        }
        {
            name: 'Hera Syndulla (Attack Shuttle)'
            id: 159
            canonical_name: 'Hera Syndulla'.canonicalize()
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 7
            slots: [
                'Elite'
                'Turret'
                'Crew'
            ]
            points: 22
        }
        {
            name: 'Sabine Wren'
            id: 160
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 5
            slots: [
                'Elite'
                'Turret'
                'Crew'
            ]
            points: 21
        }
        {
            name: 'Ezra Bridger'
            id: 161
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 4
            slots: [
                'Elite'
                'Turret'
                'Crew'
            ]
            points: 20
        }
        {
            name: '"Zeb" Orrelios'
            id: 162
            unique: true
            faction: "Rebel Alliance"
            ship: "Attack Shuttle"
            skill: 3
            slots: [
                'Turret'
                'Crew'
            ]
            points: 18
        }
        {
            name: "The Inquisitor"
            id: 163
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced Prototype"
            skill: 8
            slots: [
                'Elite'
                'Missile'
            ]
            points: 25
        }
        {
            name: "Valen Rudor"
            id: 164
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Advanced Prototype"
            skill: 6
            slots: [
                'Elite'
                'Missile'
            ]
            points: 22
        }
        {
            name: "Baron of the Empire"
            id: 165
            faction: "Galactic Empire"
            ship: "TIE Advanced Prototype"
            skill: 4
            slots: [
                'Elite'
                'Missile'
            ]
            points: 19
        }
        {
            name: "Sienar Test Pilot"
            id: 166
            faction: "Galactic Empire"
            ship: "TIE Advanced Prototype"
            skill: 2
            slots: [
                'Missile'
            ]
            points: 16
        }
        {
            name: "Zuckuss"
            id: 167
            unique: true
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 7
            slots: [
                'Elite'
                'Crew'
                'System'
                'Illicit'
            ]
            points: 28
        }
        {
            name: "4-LOM"
            id: 168
            unique: true
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 6
            slots: [
                'Elite'
                'Crew'
                'System'
                'Illicit'
            ]
            points: 27
        }
        {
            name: "Gand Findsman"
            id: 169
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 5
            slots: [
                'Elite'
                'Crew'
                'System'
                'Illicit'
            ]
            points: 25
        }
        {
            name: "Ruthless Freelancer"
            id: 170
            faction: "Scum and Villainy"
            ship: "G-1A Starfighter"
            skill: 3
            slots: [
                'Crew'
                'System'
                'Illicit'
            ]
            points: 23
        }
        {
            name: "Dengar"
            id: 171
            unique: true
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 9
            slots: [
                'Elite'
                'Crew'
                'Illicit'
            ]
            points: 33
        }
        {
            name: "Tel Trevura"
            id: 172
            unique: true
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 7
            slots: [
                'Elite'
                'Crew'
                'Illicit'
            ]
            points: 30
        }
        {
            name: "Manaroo"
            id: 173
            unique: true
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 4
            slots: [
                'Elite'
                'Crew'
                'Illicit'
            ]
            points: 27
        }
        {
            name: "Contracted Scout"
            id: 174
            faction: "Scum and Villainy"
            ship: "JumpMaster 5000"
            skill: 3
            slots: [
                'Elite'
                'Crew'
                'Illicit'
            ]
            points: 25
        }
        # T-70
        {
            name: "Poe Dameron"
            id: 175
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 8
            slots: [
                'Elite'
                'Torpedo'
                'Astromech'
                'Tech'
            ]
            points: 31
        }
        {
            name: '"Blue Ace"'
            id: 176
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 5
            slots: [
                'Torpedo'
                'Astromech'
                'Tech'
            ]
            points: 27
        }
        {
            name: "Red Squadron Veteran"
            id: 177
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 4
            slots: [
                'Elite'
                'Torpedo'
                'Astromech'
                'Tech'
            ]
            points: 26
        }
        {
            name: "Blue Squadron Novice"
            id: 178
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 2
            slots: [
                'Torpedo'
                'Astromech'
                'Tech'
            ]
            points: 24
        }
        # TIE/fo
        {
            name: '"Omega Ace"'
            id: 179
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 7
            slots: [
                'Elite'
                'Tech'
            ]
            points: 20
        }
        {
            name: '"Epsilon Leader"'
            id: 180
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 6
            slots: [
                'Tech'
            ]
            points: 19
        }
        {
            name: '"Zeta Ace"'
            id: 181
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 5
            slots: [
                'Elite'
                'Tech'
            ]
            points: 18
        }
        {
            name: "Omega Squadron Pilot"
            id: 182
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 4
            slots: [
                'Elite'
                'Tech'
            ]
            points: 17
        }
        {
            name: "Zeta Squadron Pilot"
            id: 183
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 3
            slots: [
                'Tech'
            ]
            points: 16
        }
        {
            name: "Epsilon Squadron Pilot"
            id: 184
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 1
            slots: [
                'Tech'
            ]
            points: 15
        }
        {
            name: "Ello Asty"
            id: 185
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 7
            slots: [
                'Elite'
                'Torpedo'
                'Astromech'
                'Tech'
            ]
            points: 30
        }
        {
            name: '"Red Ace"'
            id: 186
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 6
            slots: [
                'Torpedo'
                'Astromech'
                'Tech'
            ]
            points: 29
        }
        {
            name: '"Omega Leader"'
            id: 187
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 8
            slots: [
                'Elite'
                'Tech'
            ]
            points: 21
        }
        {
            name: '"Zeta Leader"'
            id: 188
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 7
            slots: [
                'Elite'
                'Tech'
            ]
            points: 20
        }
        {
            name: '"Epsilon Ace"'
            id: 189
            unique: true
            faction: "First Order"
            ship: "TIE/fo Fighter"
            skill: 4
            slots: [
                'Tech'
            ]
            points: 17
        }
        {
            name: "Tomax Bren"
            id: 190
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Bomber"
            skill: 8
            slots: [
                'Elite'
                'Torpedo'
                'Torpedo'
                'Missile'
                'Missile'
                'Bomb'
            ]
            points: 24
        }
        {
            name: "Gamma Squadron Veteran"
            id: 191
            faction: "Galactic Empire"
            ship: "TIE Bomber"
            skill: 5
            slots: [
                'Elite'
                'Torpedo'
                'Torpedo'
                'Missile'
                'Missile'
                'Bomb'
            ]
            points: 19
        }
        {
            name: '"Deathfire"'
            id: 192
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Bomber"
            skill: 3
            slots: [
                'Torpedo'
                'Torpedo'
                'Missile'
                'Missile'
                'Bomb'
            ]
            points: 17
        }
        {
            name: "Maarek Stele (TIE Defender)"
            canonical_name: 'maarekstele'
            id: 193
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 7
            slots: [
                'Elite'
                'Cannon'
                'Missile'
            ]
            points: 35
        }
        {
            name: "Glaive Squadron Pilot"
            id: 194
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 6
            slots: [
                'Elite'
                'Cannon'
                'Missile'
            ]
            points: 34
        }
        {
            name: "Countess Ryad"
            id: 195
            unique: true
            faction: "Galactic Empire"
            ship: "TIE Defender"
            skill: 5
            slots: [
                'Elite'
                'Cannon'
                'Missile'
            ]
            points: 34
        }
        {
            name: "Poe Dameron (PS9)"
            canonical_name: "poedameron-swx57"
            id: 196
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 9
            slots: [
                'Elite'
                'Torpedo'
                'Astromech'
                'Tech'
            ]
            points: 33
        }
        {
            name: 'Nien Nunb'
            id: 197
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 7
            slots: [
                'Elite'
                'Torpedo'
                'Astromech'
                'Tech'
            ]
            points: 29
        }
        {
            name: '''"Snap" Wexley'''
            id: 198
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 6
            slots: [
                'Elite'
                'Torpedo'
                'Astromech'
                'Tech'
            ]
            points: 28
        }
        {
            name: 'Jess Pava'
            id: 199
            unique: true
            faction: "Resistance"
            ship: "T-70 X-Wing"
            skill: 3
            slots: [
                'Torpedo'
                'Astromech'
                'Tech'
            ]
            points: 25
        }
        {
            name: "Han Solo (TFA)"
            canonical_name: "hansolo-swx57"
            id: 200
            unique: true
            faction: "Resistance"
            ship: "YT-1300"
            skill: 9
            points: 46
            slots: [
                "Elite"
                "Missile"
                "Crew"
                "Crew"
            ]
            ship_override:
                attack: 3
                agility: 1
                hull: 8
                shields: 5
        }
        {
            name: "Rey"
            id: 201
            unique: true
            faction: "Resistance"
            ship: "YT-1300"
            skill: 8
            points: 45
            slots: [
                "Elite"
                "Missile"
                "Crew"
                "Crew"
            ]
            ship_override:
                attack: 3
                agility: 1
                hull: 8
                shields: 5
        }
        {
            name: "Chewbacca (TFA)"
            canonical_name: "chewbacca-swx57"
            id: 202
            unique: true
            faction: "Resistance"
            ship: "YT-1300"
            skill: 5
            points: 42
            slots: [
                "Elite"
                "Missile"
                "Crew"
                "Crew"
            ]
            ship_override:
                attack: 3
                agility: 1
                hull: 8
                shields: 5
        }
        {
            name: "Resistance Sympathizer"
            id: 203
            faction: "Resistance"
            ship: "YT-1300"
            skill: 3
            points: 38
            slots: [
                "Missile"
                "Crew"
                "Crew"
            ]
            ship_override:
                attack: 3
                agility: 1
                hull: 8
                shields: 5
        }
        {
            name: 'Norra Wexley'
            id: 204
            unique: true
            faction: 'Rebel Alliance'
            ship: 'ARC-170'
            skill: 7
            slots: [
                'Elite'
                'Torpedo'
                'Crew'
                'Astromech'
            ]
            points: 29
        }
        {
            name: 'Shara Bey'
            id: 205
            unique: true
            faction: 'Rebel Alliance'
            ship: 'ARC-170'
            skill: 6
            slots: [
                'Elite'
                'Torpedo'
                'Crew'
                'Astromech'
            ]
            points: 28
        }
        {
            name: 'Thane Kyrell'
            id: 206
            unique: true
            faction: 'Rebel Alliance'
            ship: 'ARC-170'
            skill: 4
            slots: [
                'Torpedo'
                'Crew'
                'Astromech'
            ]
            points: 26
        }
        {
            name: 'Braylen Stramm'
            id: 207
            unique: true
            faction: 'Rebel Alliance'
            ship: 'ARC-170'
            skill: 3
            slots: [
                'Torpedo'
                'Crew'
                'Astromech'
            ]
            points: 25
        }
        {
            name: '"Quickdraw"'
            id: 208
            unique: true
            faction: 'Galactic Empire'
            ship: 'TIE/sf Fighter'
            skill: 9
            slots: [
                'Elite'
                'System'
                'Missile'
                'Tech'
            ]
            points: 29
        }
        {
            name: '"Backdraft"'
            id: 209
            unique: true
            faction: 'Galactic Empire'
            ship: 'TIE/sf Fighter'
            skill: 7
            slots: [
                'Elite'
                'System'
                'Missile'
                'Tech'
            ]
            points: 27
        }
        {
            name: 'Omega Specialist'
            id: 210
            faction: 'Galactic Empire'
            ship: 'TIE/sf Fighter'
            skill: 5
            slots: [
                'Elite'
                'System'
                'Missile'
                'Tech'
            ]
            points: 25
        }
        {
            name: 'Zeta Specialist'
            id: 211
            faction: 'Galactic Empire'
            ship: 'TIE/sf Fighter'
            skill: 3
            slots: [
                'System'
                'Missile'
                'Tech'
            ]
            points: 23
        }
        {
            name: 'Fenn Rau'
            id: 212
            unique: true
            faction: 'Scum and Villainy'
            ship: 'Protectorate Starfighter'
            skill: 9
            slots: [
                'Elite'
                'Torpedo'
            ]
            points: 28
        }
        {
            name: 'Old Teroch'
            id: 213
            unique: true
            faction: 'Scum and Villainy'
            ship: 'Protectorate Starfighter'
            skill: 7
            slots: [
                'Elite'
                'Torpedo'
            ]
            points: 26
        }
        {
            name: 'Kad Solus'
            id: 214
            unique: true
            faction: 'Scum and Villainy'
            ship: 'Protectorate Starfighter'
            skill: 6
            slots: [
                'Elite'
                'Torpedo'
            ]
            points: 25
        }
        {
            name: 'Concord Dawn Ace'
            id: 215
            faction: 'Scum and Villainy'
            ship: 'Protectorate Starfighter'
            skill: 5
            slots: [
                'Elite'
                'Torpedo'
            ]
            points: 23
        }
        {
            name: 'Concord Dawn Veteran'
            id: 216
            faction: 'Scum and Villainy'
            ship: 'Protectorate Starfighter'
            skill: 3
            slots: [
                'Elite'
                'Torpedo'
            ]
            points: 22
        }
        {
            name: 'Zealous Recruit'
            id: 217
            faction: 'Scum and Villainy'
            ship: 'Protectorate Starfighter'
            skill: 1
            slots: [
                'Torpedo'
            ]
            points: 20
        }
        {
            name: 'Ketsu Onyo'
            id: 218
            unique: true
            faction: 'Scum and Villainy'
            ship: 'Lancer-class Pursuit Craft'
            skill: 7
            slots: [
                'Elite'
                'Crew'
                'Illicit'
                'Illicit'
            ]
            points: 38
        }
        {
            name: 'Asajj Ventress'
            id: 219
            unique: true
            faction: 'Scum and Villainy'
            ship: 'Lancer-class Pursuit Craft'
            skill: 6
            slots: [
                'Elite'
                'Crew'
                'Illicit'
                'Illicit'
            ]
            points: 37
        }
        {
            name: 'Sabine Wren (Scum)'
            canonical_name: "sabinewren"
            id: 220
            unique: true
            faction: 'Scum and Villainy'
            ship: 'Lancer-class Pursuit Craft'
            skill: 5
            slots: [
                'Crew'
                'Illicit'
                'Illicit'
            ]
            points: 35
        }
        {
            name: 'Shadowport Hunter'
            id: 221
            faction: 'Scum and Villainy'
            ship: 'Lancer-class Pursuit Craft'
            skill: 2
            slots: [
                'Crew'
                'Illicit'
                'Illicit'
            ]
            points: 33
        }
        {
            name: 'Ahsoka Tano'
            id: 222
            unique: true
            faction: 'Rebel Alliance'
            ship: 'TIE Fighter'
            skill: 7
            slots: [
                'Elite'
            ]
            points: 17
        }
        {
            name: 'Sabine Wren (TIE Fighter)'
            id: 223
            canonical_name: "sabinewren"
            unique: true
            faction: 'Rebel Alliance'
            ship: 'TIE Fighter'
            skill: 5
            slots: [
                'Elite'
            ]
            points: 15
        }
        {
            name: 'Captain Rex'
            id: 224
            unique: true
            faction: 'Rebel Alliance'
            ship: 'TIE Fighter'
            skill: 4
            slots: []
            points: 14
            applies_condition: 'Suppressive Fire'.canonicalize()
        }
        {
            name: '"Zeb" Orrelios (TIE Fighter)'
            id: 225
            canonical_name: '"Zeb" Orrelios'.canonicalize()
            unique: true
            faction: 'Rebel Alliance'
            ship: 'TIE Fighter'
            skill: 3
            slots: []
            points: 13
        }
        {
            name: 'Kylo Ren'
            id: 226
            unique: true
            faction: 'First Order'
            ship: 'Upsilon-class Shuttle'
            skill: 6
            slots: [
                'Elite'
                'System'
                'Crew'
                'Crew'
                'Tech'
                'Tech'
            ]
            points: 34
            applies_condition: '''I'll Show You the Dark Side'''.canonicalize()
        }
        {
            name: 'Major Stridan'
            id: 227
            unique: true
            faction: 'First Order'
            ship: 'Upsilon-class Shuttle'
            skill: 4
            slots: [
                'System'
                'Crew'
                'Crew'
                'Tech'
                'Tech'
            ]
            points: 32
        }
        {
            name: 'Lieutenant Dormitz'
            id: 228
            unique: true
            faction: 'First Order'
            ship: 'Upsilon-class Shuttle'
            skill: 3
            slots: [
                'System'
                'Crew'
                'Crew'
                'Tech'
                'Tech'
            ]
            points: 31
        }
        {
            name: 'Starkiller Base Pilot'
            id: 229
            faction: 'First Order'
            ship: 'Upsilon-class Shuttle'
            skill: 2
            slots: [
                'System'
                'Crew'
                'Crew'
                'Tech'
                'Tech'
            ]
            points: 30
        }
        {
            name: 'Constable Zuvio'
            id: 230
            unique: true
            faction: 'Scum and Villainy'
            ship: 'Quadjumper'
            skill: 7
            slots: [
                'Elite'
                'Crew'
                'Bomb'
                'Tech'
                'Illicit'
            ]
            points: 19
        }
        {
            name: 'Sarco Plank'
            id: 231
            unique: true
            faction: 'Scum and Villainy'
            ship: 'Quadjumper'
            skill: 5
            slots: [
                'Elite'
                'Crew'
                'Bomb'
                'Tech'
                'Illicit'
            ]
            points: 18
        }
        {
            name: 'Unkar Plutt'
            id: 232
            unique: true
            faction: 'Scum and Villainy'
            ship: 'Quadjumper'
            skill: 3
            slots: [
                'Crew'
                'Bomb'
                'Tech'
                'Illicit'
            ]
            points: 17
        }
        {
            name: 'Jakku Gunrunner'
            id: 233
            faction: 'Scum and Villainy'
            ship: 'Quadjumper'
            skill: 1
            slots: [
                'Crew'
                'Bomb'
                'Tech'
                'Illicit'
            ]
            points: 15
        }
        {
            name: 'Cassian Andor'
            id: 234
            unique: true
            faction: 'Rebel Alliance'
            ship: 'U-Wing'
            skill: 6
            slots: [
                'Elite'
                'System'
                'Torpedo'
                'Crew'
                'Crew'
            ]
            points: 27
        }
        {
            name: 'Bodhi Rook'
            id: 235
            unique: true
            faction: 'Rebel Alliance'
            ship: 'U-Wing'
            skill: 4
            slots: [
                'System'
                'Torpedo'
                'Crew'
                'Crew'
            ]
            points: 25
        }
        {
            name: 'Heff Tobber'
            id: 236
            unique: true
            faction: 'Rebel Alliance'
            ship: 'U-Wing'
            skill: 3
            slots: [
                'System'
                'Torpedo'
                'Crew'
                'Crew'
            ]
            points: 24
        }
        {
            name: 'Blue Squadron Pathfinder'
            id: 237
            faction: 'Rebel Alliance'
            ship: 'U-Wing'
            skill: 2
            slots: [
                'System'
                'Torpedo'
                'Crew'
                'Crew'
            ]
            points: 23
        }
        {
            name: '"Duchess"'
            id: 238
            unique: true
            faction: 'Galactic Empire'
            ship: 'TIE Striker'
            skill: 8
            slots: [
                'Elite'
            ]
            points: 23
        }
        {
            name: '"Pure Sabacc"'
            id: 239
            unique: true
            faction: 'Galactic Empire'
            ship: 'TIE Striker'
            skill: 6
            slots: [
                'Elite'
            ]
            points: 22
        }
        {
            name: '"Countdown"'
            id: 240
            unique: true
            faction: 'Galactic Empire'
            ship: 'TIE Striker'
            skill: 5
            slots: [
            ]
            points: 20
        }
        {
            name: 'Black Squadron Scout'
            id: 241
            faction: 'Galactic Empire'
            ship: 'TIE Striker'
            skill: 4
            slots: [
                'Elite'
            ]
            points: 20
        }
        {
            name: 'Scarif Defender'
            id: 242
            faction: 'Galactic Empire'
            ship: 'TIE Striker'
            skill: 3
            slots: [
            ]
            points: 18
        }
        {
            name: 'Imperial Trainee'
            id: 243
            faction: 'Galactic Empire'
            ship: 'TIE Striker'
            skill: 1
            slots: [
            ]
            points: 17
        }
        {
            name: 'C-ROC Cruiser'
            id: 244
            faction: 'Scum and Villainy'
            ship: 'C-ROC Cruiser'
            skill: 1
            slots: [
                'Crew'
                'Crew'
                'Hardpoint'
                'Team'
                'Cargo'
                'Cargo'
                'Cargo'
            ]
            points: 35
        }
        {
            name: 'Genesis Red'
            id: 245
            unique: true
            faction: 'Scum and Villainy'
            ship: 'M3-A Interceptor'
            skill: 7
            slots: [
                'Elite'
            ]
            points: 19
        }
        {
            name: 'Quinn Jast'
            id: 246
            unique: true
            faction: 'Scum and Villainy'
            ship: 'M3-A Interceptor'
            skill: 6
            slots: [
                'Elite'
            ]
            points: 18
        }
        {
            name: 'Inaldra'
            id: 247
            unique: true
            faction: 'Scum and Villainy'
            ship: 'M3-A Interceptor'
            skill: 3
            slots: [
                'Elite'
            ]
            points: 15
        }
        {
            name: 'Sunny Bounder'
            id: 248
            unique: true
            faction: 'Scum and Villainy'
            ship: 'M3-A Interceptor'
            skill: 1
            slots: [ ]
            points: 14
        }
        {
            name: 'Kashyyyk Defender'
            id: 249
            faction: 'Rebel Alliance'
            ship: 'Auzituck Gunship'
            skill: 1
            slots: [
                'Crew'
                'Crew'
            ]
            points: 24
        }
        {
            name: 'Wookiee Liberator'
            id: 250
            faction: 'Rebel Alliance'
            ship: 'Auzituck Gunship'
            skill: 3
            slots: [
                'Elite'
                'Crew'
                'Crew'
            ]
            points: 26
        }
        {
            name: 'Lowhhrick'
            id: 251
            unique: true
            faction: 'Rebel Alliance'
            ship: 'Auzituck Gunship'
            skill: 5
            slots: [
                'Elite'
                'Crew'
                'Crew'
            ]
            points: 28
        }
        {
            name: 'Wullffwarro'
            id: 252
            faction: 'Rebel Alliance'
            unique: true
            ship: 'Auzituck Gunship'
            skill: 7
            slots: [
                'Elite'
                'Crew'
                'Crew'
            ]
            points: 30
        }
        {
            name: 'Captain Nym (Scum)'
            id: 253
            canonical_name: 'Captain Nym'.canonicalize()
            unique: true
            faction: 'Scum and Villainy'
            ship: 'Scurrg H-6 Bomber'
            skill: 8
            slots: [
                'Elite'
                'Turret'
                'Torpedo'
                'Missile'
                'Crew'
                'Bomb'
                'Bomb'
            ]
            points: 30
        }
        {
            name: 'Captain Nym (Rebel)'
            id: 254
            canonical_name: 'Captain Nym'.canonicalize()
            unique: true
            faction: 'Rebel Alliance'
            ship: 'Scurrg H-6 Bomber'
            skill: 8
            slots: [
                'Elite'
                'Turret'
                'Torpedo'
                'Missile'
                'Crew'
                'Bomb'
                'Bomb'
            ]
            points: 30
        }
        {
            name: 'Sol Sixxa'
            id: 255
            faction: 'Scum and Villainy'
            unique: true
            ship: 'Scurrg H-6 Bomber'
            skill: 6
            slots: [
                'Elite'
                'Turret'
                'Torpedo'
                'Missile'
                'Crew'
                'Bomb'
                'Bomb'
            ]
            points: 28
        }
        {
            name: 'Lok Revenant'
            id: 256
            faction: 'Scum and Villainy'
            ship: 'Scurrg H-6 Bomber'
            skill: 3
            slots: [
                'Elite'
                'Turret'
                'Torpedo'
                'Missile'
                'Crew'
                'Bomb'
                'Bomb'
            ]
            points: 26
        }
        {
            name: 'Karthakk Pirate'
            id: 257
            faction: 'Scum and Villainy'
            ship: 'Scurrg H-6 Bomber'
            skill: 1
            slots: [
                'Turret'
                'Torpedo'
                'Missile'
                'Crew'
                'Bomb'
                'Bomb'
            ]
            points: 24
        }
        {
            name: 'Sienar Specialist'
            id: 258
            faction: 'Galactic Empire'
            ship: 'TIE Aggressor'
            skill: 2
            slots: [
                'Turret'
                'Missile'
                'Missile'
            ]
            points: 17
        }
        {
            name: 'Onyx Squadron Escort'
            id: 259
            faction: 'Galactic Empire'
            ship: 'TIE Aggressor'
            skill: 5
            slots: [
                'Turret'
                'Missile'
                'Missile'
            ]
            points: 19
        }
        {
            name: '"Double Edge"'
            id: 260
            unique: true
            faction: 'Galactic Empire'
            ship: 'TIE Aggressor'
            skill: 4
            slots: [
                'Elite'
                'Turret'
                'Missile'
                'Missile'
            ]
            points: 19
        }
        {
            name: 'Lieutenant Kestal'
            id: 261
            unique: true
            faction: 'Galactic Empire'
            ship: 'TIE Aggressor'
            skill: 7
            slots: [
                'Elite'
                'Turret'
                'Missile'
                'Missile'
            ]
            points: 22
        }
        {
            name: 'Viktor Hel'
            id: 262
            faction: 'Scum and Villainy'
            unique: true
            ship: 'Kihraxz Fighter'
            skill: 7
            slots: [
                'Elite'
                'Missile'
                'Illicit'
            ]
            points: 25
        }
        {
            name: 'Captain Jostero'
            id: 263
            skill: 4
            faction: 'Scum and Villainy'
            unique: true
            ship: 'Kihraxz Fighter'
            slots: [
                'Elite'
                'Missile'
                'Illicit'
            ]
            points: 24
        }
        {
            name: 'Dalan Oberos'
            id: 264
            faction: 'Scum and Villainy'
            unique: true
            ship: 'StarViper'
            skill: 6
            slots: [
                'Elite'
                'Torpedo'
            ]
            points: 30
        }
        {
            name: 'Thweek'
            id: 265
            faction: 'Scum and Villainy'
            unique: true
            ship: 'StarViper'
            skill: 4
            slots: [
                'Torpedo'
            ]
            points: 28
            applies_condition: ['Shadowed'.canonicalize(), 'Mimicked'.canonicalize()]
        }
        {
            name: 'Black Sun Assassin'
            id: 266
            faction: 'Scum and Villainy'
            ship: 'StarViper'
            skill: 5
            slots: [
                'Elite'
                'Torpedo'
            ]
            points: 28
        }
        {
            name: 'Major Vynder'
            id: 267
            unique: true
            faction: 'Galactic Empire'
            ship: 'Alpha-class Star Wing'
            skill: 7
            slots: [
                'Elite'
                'Torpedo'
                'Missile'
            ]
            points: 26
        }
        {
            name: 'Lieutenant Karsabi'
            id: 268
            unique: true
            faction: 'Galactic Empire'
            ship: 'Alpha-class Star Wing'
            skill: 5
            slots: [
                'Elite'
                'Torpedo'
                'Missile'
            ]
            points: 24
        }
        {
            name: 'Rho Squadron Veteran'
            id: 269
            faction: 'Galactic Empire'
            ship: 'Alpha-class Star Wing'
            skill: 4
            slots: [
                'Elite'
                'Torpedo'
                'Missile'
            ]
            points: 21
        }
        {
            name: 'Nu Squadron Pilot'
            id: 270
            faction: 'Galactic Empire'
            ship: 'Alpha-class Star Wing'
            skill: 2
            slots: [
                'Torpedo'
                'Missile'
            ]
            points: 18
        }
        {
            name: 'Torani Kulda'
            id: 271
            unique: true
            faction: 'Scum and Villainy'
            ship: 'M12-L Kimogila Fighter'
            skill: 8
            slots: [
                'Elite'
                'Torpedo'
                'Missile'
                'Salvaged Astromech'
                'Illicit'
            ]
            points: 27
        }
        {
            name: 'Dalan Oberos (Kimogila)'
            canonical_name: "dalanoberos"
            id: 272
            unique: true
            faction: 'Scum and Villainy'
            ship: 'M12-L Kimogila Fighter'
            skill: 7
            slots: [
                'Elite'
                'Torpedo'
                'Missile'
                'Salvaged Astromech'
                'Illicit'
            ]
            points: 25
        }
        {
            name: 'Cartel Executioner'
            id: 273
            faction: 'Scum and Villainy'
            ship: 'M12-L Kimogila Fighter'
            skill: 5
            slots: [
                'Elite'
                'Torpedo'
                'Missile'
                'Salvaged Astromech'
                'Illicit'
            ]
            points: 24
        }
        {
            name: 'Cartel Brute'
            id: 274
            faction: 'Scum and Villainy'
            ship: 'M12-L Kimogila Fighter'
            skill: 3
            slots: [
                'Torpedo'
                'Missile'
                'Salvaged Astromech'
                'Illicit'
            ]
            points: 22
        }
        {
            name: 'Fenn Rau (Sheathipede)'
            id: 275
            canonical_name: 'Fenn Rau'.canonicalize()
            unique: true
            faction: 'Rebel Alliance'
            ship: 'Sheathipede-class Shuttle'
            skill: 9
            slots: [
                'Elite'
                'Crew'
                'Astromech'
            ]
            points: 20
        }
        {
            name: '"Zeb" Orrelios (Sheathipede)'
            id: 276
            canonical_name: '"Zeb" Orrelios'.canonicalize()
            unique: true
            faction: 'Rebel Alliance'
            ship: 'Sheathipede-class Shuttle'
            skill: 3
            slots: [
                'Crew'
                'Astromech'
            ]
            points: 16
        }
        {
            name: 'Ezra Bridger (Sheathipede)'
            id: 277
            canonical_name: 'Ezra Bridger'.canonicalize()
            unique: true
            faction: 'Rebel Alliance'
            ship: 'Sheathipede-class Shuttle'
            skill: 5
            slots: [
                'Elite'
                'Crew'
                'Astromech'
            ]
            points: 17
        }
        {
            name: 'AP-5'
            id: 278
            faction: 'Rebel Alliance'
            unique: true
            ship: 'Sheathipede-class Shuttle'
            skill: 1
            slots: [
                'Crew'
                'Astromech'
            ]
            points: 15
        }
        {
            name: 'Crimson Squadron Pilot'
            id: 279
            faction: 'Resistance'
            ship: 'B/SF-17 Bomber'
            skill: 1
            slots: [
                'System'
                'Bomb'
                'Bomb'
                'Tech'
            ]
            points: 25
        }
        {
            name: '"Crimson Specialist"'
            id: 280
            faction: 'Resistance'
            unique: true
            ship: 'B/SF-17 Bomber'
            skill: 4
            slots: [
                'System'
                'Bomb'
                'Bomb'
                'Tech'
            ]
            points: 27
        }
        {
            name: '"Cobalt Leader"'
            id: 281
            faction: 'Resistance'
            unique: true
            ship: 'B/SF-17 Bomber'
            skill: 6
            slots: [
                'System'
                'Bomb'
                'Bomb'
                'Tech'
            ]
            points: 28
        }
        {
            name: '"Crimson Leader"'
            id: 282
            faction: 'Resistance'
            unique: true
            ship: 'B/SF-17 Bomber'
            skill: 7
            slots: [
                'System'
                'Bomb'
                'Bomb'
                'Tech'
            ]
            points: 29
            applies_condition: 'Rattled'.canonicalize()
        }
        {
            name: 'Sienar-Jaemus Analyst'
            id: 283
            faction: 'First Order'
            ship: 'TIE Silencer'
            skill: 4
            slots: [
                'System'
                'Tech'
            ]
            points: 26
        }
        {
            name: 'First Order Test Pilot'
            id: 284
            faction: 'First Order'
            ship: 'TIE Silencer'
            skill: 6
            slots: [
                'Elite'
                'System'
                'Tech'
            ]
            points: 29
        }
        {
            name: 'Test Pilot "Blackout"'
            id: 285
            faction: 'First Order'
            unique: true
            ship: 'TIE Silencer'
            skill: 7
            slots: [
                'Elite'
                'System'
                'Tech'
            ]
            points: 31
        }
        {
            name: 'Kylo Ren (TIE Silencer)'
            id: 286
            canonical_name: 'Kylo Ren'.canonicalize()
            faction: 'First Order'
            unique: true
            ship: 'TIE Silencer'
            skill: 9
            slots: [
                'Elite'
                'System'
                'Tech'
            ]
            points: 35
            applies_condition: '''I'll Show You the Dark Side'''.canonicalize()
        }
        {
            name: 'Saw Gerrera'
            id: 287
            unique: true
            faction: 'Rebel Alliance'
            ship: 'U-Wing'
            skill: 6
            slots: [
                'System'
                'Torpedo'
                'Crew'
                'Crew'
            ]
            points: 100
        }
        {
            name: 'Unspoiled PS5 U-Wing Pilot'
            id: 288
            unique: true
            faction: 'Rebel Alliance'
            ship: 'U-Wing'
            skill: 5
            slots: [
                'System'
                'Torpedo'
                'Crew'
                'Crew'
            ]
            points: 100
        }
        {
            name: 'Edrio ???'
            id: 289
            unique: true
            faction: 'Rebel Alliance'
            ship: 'X-Wing'
            skill: 4
            slots: [
                'Torpedo'
                'Astromech'
            ]
            points: 100
            skip: true
        }
        {
            name: 'Lee???'
            id: 290
            unique: true
            faction: 'Rebel Alliance'
            ship: 'X-Wing'
            skill: 5
            slots: [
                'Torpedo'
                'Astromech'
            ]
            points: 100
            skip: true
        }
        {
            name: 'Kullbee Sperado'
            id: 291
            unique: true
            faction: 'Rebel Alliance'
            ship: 'X-Wing'
            skill: 7
            slots: [
                'Elite'
                'Torpedo'
                'Astromech'
            ]
            points: 26
            skip: true
        }
        {
            name: 'Major Vermeil'
            id: 292
            unique: true
            faction: 'Galactic Empire'
            ship: 'TIE Reaper'
            skill: 6
            slots: [
                'Elite'
                'Crew'
                'Crew'
            ]
            points: 26
        }
        {
            name: 'Capta???'
            id: 293
            unique: true
            faction: 'Galactic Empire'
            ship: 'TIE Reaper'
            skill: 4
            slots: [
                'Crew'
                'Crew'
            ]
            points: 100
        }
        {
            name: '"V???"'
            id: 294
            unique: true
            faction: 'Galactic Empire'
            ship: 'TIE Reaper'
            skill: 3
            slots: [
                'Crew'
                'Crew'
            ]
            points: 100
        }
        {
            name: 'Unspoiled PS1 TIE Reaper Pilot'
            id: 295
            faction: 'Galactic Empire'
            ship: 'TIE Reaper'
            skill: 1
            slots: [
                'Crew'
                'Crew'
            ]
            points: 100
        }
        {
            name: 'Cavern Angels Zealot'
            id: 296
            faction: 'Rebel Alliance'
            ship: 'X-Wing'
            skill: 1
            slots: [
                'Torpedo'
                'Astromech'
            ]
            points: 100
            skip: true
        }
    ]

    upgradesById: [
        {
            name: "Ion Cannon Turret"
            id: 0
            slot: "Turret"
            points: 4
            attack: 3
            range: "1-2"
        }
        {
            name: "Proton Torpedoes"
            id: 1
            slot: "Torpedo"
            points: 3
            attack: 3
            range: "2-3"
        }
        {
            name: "R2 Astromech"
            id: 2
            slot: "Astromech"
            points: 3
            modifier_func: (stats) ->
                if stats.maneuvers? and stats.maneuvers.length > 0
                    for turn in [0 ... stats.maneuvers[1].length]
                        if stats.maneuvers[1][turn] > 0
                            stats.maneuvers[1][turn] = 2
                        if stats.maneuvers[2][turn] > 0
                            stats.maneuvers[2][turn] = 2
        }
        {
            name: "R2-D2"
            canonical_name: 'r2d2'
            id: 3
            unique: true
            slot: "Astromech"
            points: 4
        }
        {
            name: "R5-K6"
            id: 4
            unique: true
            slot: "Astromech"
            points: 3
        }
        {
            name: "R5 Astromech"
            id: 5
            slot: "Astromech"
            points: 0
        }
        {
            name: "Determination"
            id: 6
            slot: "Elite"
            points: 1
        }
        {
            name: "Swarm Tactics"
            id: 7
            slot: "Elite"
            points: 2
        }
        {
            name: "Squad Leader"
            id: 8
            unique: true
            slot: "Elite"
            points: 1
        }
        {
            name: "Expert Handling"
            id: 9
            slot: "Elite"
            points: 3
        }
        {
            name: "Marksmanship"
            id: 10
            slot: "Elite"
            points: 1
        }
        {
            name: "Concussion Missiles"
            id: 11
            slot: "Missile"
            points: 2
            attack: 4
            range: "2-3"
        }
        {
            name: "Cluster Missiles"
            id: 12
            slot: "Missile"
            points: 4
            attack: 3
            range: "1-2"
        }
        {
            name: "Gunner"
            id: 13
            slot: "Crew"
            points: 6
        }
        {
            name: "Ion Cannon"
            id: 14
            slot: "Cannon"
            points: 4
            attack: 3
            range: "1-3"
        }
        {
            name: "Seismic Charges"
            id: 15
            slot: "Bomb"
            points: 3
        }
        {
            name: "Weapons Engineer"
            id: 16
            slot: "Crew"
            points: 3
        }
        {
            name: "Advanced Proton Torpedoes"
            canonical_name: 'Adv. Proton Torpedoes'.canonicalize()
            id: 17
            slot: "Torpedo"
            attack: 3
            range: "1-2"
            points: 4
        }
        {
            name: "Proton Bombs"
            id: 18
            slot: "Bomb"
            points: 2
        }
        {
            name: "Sensor Jammer"
            id: 19
            slot: "System"
            points: 3
        }
        {
            name: "Flight Instructor"
            id: 20
            slot: "Crew"
            points: 4
        }
        {
            name: 'Advanced Targeting Computer'
            canonical_name: 'Adv. Targeting Computer'.canonicalize()
            id: 21
            slot: "System"
            points: 5
        }
        {
            name: "Chin Cannon Refit"
            id: 22
            slot: "Refit"
            points: 2
        }
        {
            name: "L-s7.2 Cannons"
            id: 23
            slot: "Refit"
            points: 3
        }
        {
            name: "L-s9.3 Cannons"
            id: 24
            slot: "Refit"
            points: 3
        }
        {
            name: "Heavy Blaster Cannon Refit"
            id: 25
            slot: "Refit"
            points: 3
        }
        {
            name: "R2-Q2"
            id: 26
            slot: "Astromech"
            points: 3
            unique: true
        }
        {
            name: "R2-A3"
            id: 27
            slot: "Astromech"
            points: 4
            unique: true
        }
        {
            name: "L-SF42 Turbolaser"
            id: 28
            slot: "Cannon"
            points: 4
            unique: true
        }
        {
            name: "Strafe"
            id: 29
            slot: "Elite"
            points: 1
        }
        {
            name: "Sniper"
            id: 30
            slot: "Elite"
            points: 4
        }
        {
            name: "Electronic Baffle"
            id: 31
            slot: "System"
            points: 1
        }
    ]

    modificationsById: [ ]

    titlesById: [ ]

    conditionsById: [ ]

    chassisById: [
        {
            name: "T-65B"
            id: 0
            points: 0
            ship: "X-Wing"
            faction: "Rebel Alliance"
            slots: [
                "Torpedo"
                "Astromech"
                "Modification"
            ]
            redSlots: [ ]
            blueSlots: [ ]
        }
        {
            name: "T-65C-A2"
            id: 1
            points: 1
            ship: "X-Wing"
            faction: "Rebel Alliance"
            slots: [
                "Torpedo"
                "Astromech"
            ]
            redSlots: [
                "Torpedo"
            ]
            blueSlots: [ ]
            modifier_func: (stats) ->
                if stats.maneuvers? and stats.maneuvers.length > 0
                    stats.maneuvers[3][2] = 2
                    stats.maneuvers[4][2] = 2
        }
        {
            name: "T-65BR 'Recon X'"
            id: 2
            points: 2
            ship: "X-Wing"
            faction: "Rebel Alliance"
            slots: [
                "Astromech"
            ]
            redSlots: [ ]
            blueSlots: [ ]
        }
        {
            name: "BTL-A4"
            id: 3
            points: 2
            ship: "Y-Wing"
            faction: "Rebel Alliance"
            slots: [
                "Turret"
                "Torpedo"
                "Bomb"
                "Astromech"
            ]
            redSlots: [
                "Torpedo"
            ]
            blueSlots: [ ]
        }
        {
            name: "BTL-S3"
            id: 4
            points: 0
            ship: "Y-Wing"
            faction: "Rebel Alliance"
            slots: [
                "Turret"
                "Torpedo"
                "Bomb"
                "Astromech"
            ]
            redSlots: [
                "Torpedo"
                "Bomb"
            ]
            blueSlots: [ ]
            modifier_func: (stats) ->
                stats.shields += 1
        }
        {
            name: "BTL-A4 LP 'LongProbe'"
            id: 5
            points: 0
            ship: "Y-Wing"
            faction: "Rebel Alliance"
            slots: [
                "Turret"
                "System"
                "Torpedo"
                "Astromech"
            ]
            redSlots: [ ]
            blueSlots: [ 
               "Torpedo"
            ]
        }
        {
            name: "BTL-S3 TS 'Twin'"
            id: 6
            points: 0
            ship: "Y-Wing"
            faction: "Rebel Alliance"
            slots: [
                "Crew"
                "Torpedo"
                "Bomb"
                "Astromech"
            ]
            redSlots: [ ]
            blueSlots: [ 
               "Torpedo"
               "Bomb"
            ]
            modifier_func: (stats) ->
                stats.shields += 1            
        }
        {
            name: "Flight School TIE/LN"
            id: 7
            points: 0
            ship: "TIE Fighter"
            faction: "Galactic Empire"
            slots: [
                "Crew"
            ]
            redSlots: [ ]
            blueSlots: [ ]
        }
        {
            name: "TIE/LN 'S-Type'"
            id: 8
            points: 3
            ship: "TIE Fighter"
            faction: "Galactic Empire"
            slots: [
                "Refit"
            ]
            redSlots: [ ]
            blueSlots: [ ]
        }
        {
            name: "TIE/M2 'Havoc'"
            id: 9
            points: 3
            ship: "TIE Fighter"
            faction: "Galactic Empire"
            slots: [
                "Cannon"
            ]
            redSlots: [ ]
            blueSlots: [ ]
        }
        {
            name: "TIE/LN"
            id: 10
            points: 1
            ship: "TIE Fighter"
            faction: "Galactic Empire"
            slots: [ ]
            redSlots: [ ]
            blueSlots: [ ]
        }
        {
            name: "TIE/x2C 'Corona'"
            id: 11
            points: 4
            ship: "TIE Advanced"
            faction: "Galactic Empire"
            slots: [ 
                "System"
                "Refit"
                "Missile"
            ]
            redSlots: [ ]
            blueSlots: [ ]
            modifier_func: (stats) ->
                stats.actions.push 'Boost' if 'Boost' not in stats.actions
        }
        {
            name: "TIE/x1"
            id: 12
            points: 0
            ship: "TIE Advanced"
            faction: "Galactic Empire"
            slots: [ 
                "System"
                "Refit"
            ]
            redSlots: [ ]
            blueSlots: [ ]
            modifier_func: (stats) ->
                stats.actions.push 'Boost' if 'Boost' not in stats.actions
        }
        {
            name: "TIE/x1 Prototype"
            id: 13
            points: 10
            ship: "TIE Advanced"
            faction: "Galactic Empire"
            unique: true
            slots: [ 
                "System"
                "Missile"
            ]
            redSlots: [ ]
            blueSlots: [ ]
            restriction_func: (ship) ->
                ship.pilot.name == "Darth Vader"
            modifier_func: (stats) ->
                stats.actions.push 'Boost' if 'Boost' not in stats.actions
        }
    ]

exportObj.setupCardData = (basic_cards, pilot_translations, upgrade_translations, modification_translations, title_translations, condition_translations, chassis_translations) ->
    # assert that each ID is the index into BLAHById (should keep this, in general)
    for pilot_data, i in basic_cards.pilotsById
        if pilot_data.id != i
            throw new Error("ID mismatch: pilot at index #{i} has ID #{pilot_data.id}")
    for upgrade_data, i in basic_cards.upgradesById
        if upgrade_data.id != i
            throw new Error("ID mismatch: upgrade at index #{i} has ID #{upgrade_data.id}")
    for title_data, i in basic_cards.titlesById
        if title_data.id != i
            throw new Error("ID mismatch: title at index #{i} has ID #{title_data.id}")
    for modification_data, i in basic_cards.modificationsById
        if modification_data.id != i
            throw new Error("ID mismatch: modification at index #{i} has ID #{modification_data.id}")
    for condition_data, i in basic_cards.conditionsById
        if condition_data.id != i
            throw new Error("ID mismatch: condition at index #{i} has ID #{condition_data.id}")
    for chassis_data, i in basic_cards.chassisById
        if chassis_data.id != i
            throw new Error("ID mismatch: chassis at index #{i} has ID #{chassis_data.id}")


    exportObj.pilots = {}
    # Assuming a given pilot is unique by name...
    for pilot_data in basic_cards.pilotsById
        unless pilot_data.skip?
            pilot_data.sources = []
            pilot_data.english_name = pilot_data.name
            pilot_data.english_ship = pilot_data.ship
            pilot_data.canonical_name = pilot_data.english_name.canonicalize() unless pilot_data.canonical_name?
            exportObj.pilots[pilot_data.name] = pilot_data
    # pilot_name is the English version here as it's the common index into
    # basic card info
    for pilot_name, translations of pilot_translations
        for field, translation of translations
            try
                exportObj.pilots[pilot_name][field] = translation
            catch e

    exportObj.upgrades = {}
    for upgrade_data in basic_cards.upgradesById
        unless upgrade_data.skip?
            upgrade_data.sources = []
            upgrade_data.english_name = upgrade_data.name
            upgrade_data.canonical_name = upgrade_data.english_name.canonicalize() unless upgrade_data.canonical_name?
            exportObj.upgrades[upgrade_data.name] = upgrade_data
    for upgrade_name, translations of upgrade_translations
        for field, translation of translations
            try
                exportObj.upgrades[upgrade_name][field] = translation
            catch e

    exportObj.modifications = {}
    for modification_data in basic_cards.modificationsById
        unless modification_data.skip?
            modification_data.sources = []
            modification_data.english_name = modification_data.name
            modification_data.canonical_name = modification_data.english_name.canonicalize() unless modification_data.canonical_name?
            exportObj.modifications[modification_data.name] = modification_data
    for modification_name, translations of modification_translations
        for field, translation of translations
            try
                exportObj.modifications[modification_name][field] = translation
            catch e

    exportObj.titles = {}
    for title_data in basic_cards.titlesById
        unless title_data.skip?
            title_data.sources = []
            title_data.english_name = title_data.name
            title_data.canonical_name = title_data.english_name.canonicalize() unless title_data.canonical_name?
            exportObj.titles[title_data.name] = title_data
    for title_name, translations of title_translations
        for field, translation of translations
            try
                exportObj.titles[title_name][field] = translation
            catch e

    exportObj.conditions = {}
    for condition_data in basic_cards.conditionsById
        unless condition_data.skip?
            condition_data.sources = []
            condition_data.english_name = condition_data.name
            condition_data.canonical_name = condition_data.english_name.canonicalize() unless condition_data.canonical_name?
            exportObj.conditions[condition_data.name] = condition_data
    for condition_name, translations of condition_translations
        for field, translation of translations
            try
                exportObj.conditions[condition_name][field] = translation
            catch e

    exportObj.chassis = {}
    for chassis_data in basic_cards.chassisById
        unless chassis_data.skip?
            chassis_data.sources = []
            chassis_data.english_name = chassis_data.name
            chassis_data.canonical_name = chassis_data.english_name.canonicalize() unless chassis_data.canonical_name?
            exportObj.chassis[chassis_data.name] = chassis_data
    # pilot_name is the English version here as it's the common index into
    # basic card info
    for chassis_name, translations of chassis_translations
        for field, translation of translations
            try
                exportObj.chassis[chassis_name][field] = translation
            catch e

    for ship_name, ship_data of basic_cards.ships
        ship_data.english_name ?= ship_name
        ship_data.canonical_name ?= ship_data.english_name.canonicalize()

    # Set sources from manifest
    for expansion, cards of exportObj.manifestByExpansion
        for card in cards
            continue if card.skipForSource # heavy scyk special case :(
            try
                switch card.type
                    when 'pilot'
                        exportObj.pilots[card.name].sources.push expansion
                    when 'upgrade'
                        exportObj.upgrades[card.name].sources.push expansion
                    when 'modification'
                        exportObj.modifications[card.name].sources.push expansion
                    when 'title'
                        exportObj.titles[card.name].sources.push expansion
                    when 'ship'
                        # Not used for sourcing
                        ''
                    else
                        throw new Error("Unexpected card type #{card.type} for card #{card.name} of #{expansion}")
            catch e

    for name, card of exportObj.pilots
        card.sources = card.sources.sort()
    for name, card of exportObj.upgrades
        card.sources = card.sources.sort()
    for name, card of exportObj.modifications
        card.sources = card.sources.sort()
    for name, card of exportObj.titles
        card.sources = card.sources.sort()

    exportObj.expansions = {}

    exportObj.pilotsById = {}
    exportObj.pilotsByLocalizedName = {}
    for pilot_name, pilot of exportObj.pilots
        exportObj.fixIcons pilot
        exportObj.pilotsById[pilot.id] = pilot
        exportObj.pilotsByLocalizedName[pilot.name] = pilot
        for source in pilot.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.pilotsById).length != Object.keys(exportObj.pilots).length
        throw new Error("At least one pilot shares an ID with another")

    exportObj.pilotsByFactionCanonicalName = {}
    # uniqueness can't be enforced just be canonical name, but by the base part
    exportObj.pilotsByUniqueName = {}
    for pilot_name, pilot of exportObj.pilots
        ((exportObj.pilotsByFactionCanonicalName[pilot.faction] ?= {})[pilot.canonical_name] ?= []).push pilot
        (exportObj.pilotsByUniqueName[pilot.canonical_name.getXWSBaseName()] ?= []).push pilot
        # Hack until we need to disambiguate same name pilots by subfaction
        switch pilot.faction
            when 'Resistance'
                ((exportObj.pilotsByFactionCanonicalName['Rebel Alliance'] ?= {})[pilot.canonical_name] ?= []).push pilot
            when 'First Order'
                ((exportObj.pilotsByFactionCanonicalName['Galactic Empire'] ?= {})[pilot.canonical_name] ?= []).push pilot

    exportObj.upgradesById = {}
    exportObj.upgradesByLocalizedName = {}
    for upgrade_name, upgrade of exportObj.upgrades
        exportObj.fixIcons upgrade
        exportObj.upgradesById[upgrade.id] = upgrade
        exportObj.upgradesByLocalizedName[upgrade.name] = upgrade
        for source in upgrade.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.upgradesById).length != Object.keys(exportObj.upgrades).length
        throw new Error("At least one upgrade shares an ID with another")

    exportObj.upgradesBySlotCanonicalName = {}
    exportObj.upgradesBySlotUniqueName = {}
    for upgrade_name, upgrade of exportObj.upgrades
        (exportObj.upgradesBySlotCanonicalName[upgrade.slot] ?= {})[upgrade.canonical_name] = upgrade
        (exportObj.upgradesBySlotUniqueName[upgrade.slot] ?= {})[upgrade.canonical_name.getXWSBaseName()] = upgrade

    exportObj.modificationsById = {}
    exportObj.modificationsByLocalizedName = {}
    for modification_name, modification of exportObj.modifications
        exportObj.fixIcons modification
        # Modifications cannot be added to huge ships unless specifically allowed
        if modification.huge?
            unless modification.restriction_func?
                modification.restriction_func = exportObj.hugeOnly
        else unless modification.restriction_func?
            modification.restriction_func = (ship) ->
                not (ship.data.huge ? false)
        exportObj.modificationsById[modification.id] = modification
        exportObj.modificationsByLocalizedName[modification.name] = modification
        for source in modification.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.modificationsById).length != Object.keys(exportObj.modifications).length
        throw new Error("At least one modification shares an ID with another")

    exportObj.modificationsByCanonicalName = {}
    exportObj.modificationsByUniqueName = {}
    for modification_name, modification of exportObj.modifications
        (exportObj.modificationsByCanonicalName ?= {})[modification.canonical_name] = modification
        (exportObj.modificationsByUniqueName ?= {})[modification.canonical_name.getXWSBaseName()] = modification

    exportObj.titlesById = {}
    exportObj.titlesByLocalizedName = {}
    for title_name, title of exportObj.titles
        exportObj.fixIcons title
        exportObj.titlesById[title.id] = title
        exportObj.titlesByLocalizedName[title.name] = title
        for source in title.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.titlesById).length != Object.keys(exportObj.titles).length
        throw new Error("At least one title shares an ID with another")

    exportObj.conditionsById = {}
    for condition_name, condition of exportObj.conditions
        exportObj.fixIcons condition
        exportObj.conditionsById[condition.id] = condition
        for source in condition.sources
            exportObj.expansions[source] = 1 if source not of exportObj.expansions
    if Object.keys(exportObj.conditionsById).length != Object.keys(exportObj.conditions).length
        throw new Error("At least one condition shares an ID with another")

    exportObj.titlesByShip = {}
    for title_name, title of exportObj.titles
        if title.ship not of exportObj.titlesByShip
            exportObj.titlesByShip[title.ship] = []
        exportObj.titlesByShip[title.ship].push title

    exportObj.chassisByShip = {}
    for chassis_name, chassis of exportObj.chassis
        if chassis.ship not of exportObj.chassisByShip
            exportObj.chassisByShip[chassis.ship] = []
        exportObj.chassisByShip[chassis.ship].push chassis

    exportObj.chassisById = {}
    exportObj.chassisByLocalizedName = {}
    for chassis_name, chassis of exportObj.chassis
        exportObj.fixIcons chassis
        exportObj.chassisById[chassis.id] = chassis
        exportObj.chassisByLocalizedName[chassis.name] = chassis

    exportObj.titlesByCanonicalName = {}
    exportObj.titlesByUniqueName = {}
    for title_name, title of exportObj.titles
        # Special cases :(
        if title.canonical_name == '"Heavy Scyk" Interceptor'.canonicalize()
            ((exportObj.titlesByCanonicalName ?= {})[title.canonical_name] ?= []).push title
            ((exportObj.titlesByUniqueName ?= {})[title.canonical_name.getXWSBaseName()] ?= []).push title
        else
            (exportObj.titlesByCanonicalName ?= {})[title.canonical_name] = title
            (exportObj.titlesByUniqueName ?= {})[title.canonical_name.getXWSBaseName()] = title

    exportObj.conditionsByCanonicalName = {}
    for condition_name, condition of exportObj.conditions
        (exportObj.conditionsByCanonicalName ?= {})[condition.canonical_name] = condition

    exportObj.expansions = Object.keys(exportObj.expansions).sort()

exportObj.fixIcons = (data) ->
    if data.text?
        data.text = data.text
            .replace(/%ASTROMECH%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-astromech"></i>')
            .replace(/%BANKLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-bankleft"></i>')
            .replace(/%BANKRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-bankright"></i>')
            .replace(/%BARRELROLL%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-barrelroll"></i>')
            .replace(/%BOMB%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-bomb"></i>')
            .replace(/%BOOST%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-boost"></i>')
            .replace(/%CANNON%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-cannon"></i>')
            .replace(/%CARGO%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-cargo"></i>')
            .replace(/%CLOAK%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-cloak"></i>')
            .replace(/%COORDINATE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-coordinate"></i>')
            .replace(/%CRIT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-crit"></i>')
            .replace(/%CREW%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-crew"></i>')
            .replace(/%DUALCARD%/g, '<span class="card-restriction">Dual card.</span>')
            .replace(/%ELITE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-elite"></i>')
            .replace(/%EVADE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-evade"></i>')
            .replace(/%FOCUS%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-focus"></i>')
            .replace(/%HARDPOINT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-hardpoint"></i>')
            .replace(/%HIT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-hit"></i>')
            .replace(/%ILLICIT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-illicit"></i>')
            .replace(/%JAM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-jam"></i>')
            .replace(/%KTURN%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-kturn"></i>')
            .replace(/%MISSILE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-missile"></i>')
            .replace(/%RECOVER%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-recover"></i>')
            .replace(/%REINFORCE%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-reinforce"></i>')
            .replace(/%SALVAGEDASTROMECH%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-salvagedastromech"></i>')
            .replace(/%SLAM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-slam"></i>')
            .replace(/%SLOOPLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-sloopleft"></i>')
            .replace(/%SLOOPRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-sloopright"></i>')
            .replace(/%STRAIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-straight"></i>')
            .replace(/%STOP%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-stop"></i>')
            .replace(/%SYSTEM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-system"></i>')
            .replace(/%TARGETLOCK%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-targetlock"></i>')
            .replace(/%TEAM%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-team"></i>')
            .replace(/%TECH%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-tech"></i>')
            .replace(/%TORPEDO%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-torpedo"></i>')
            .replace(/%TROLLLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-trollleft"></i>')
            .replace(/%TROLLRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-trollright"></i>')
            .replace(/%TURNLEFT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turnleft"></i>')
            .replace(/%TURNRIGHT%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turnright"></i>')
            .replace(/%TURRET%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-turret"></i>')
            .replace(/%UTURN%/g, '<i class="xwing-miniatures-font xwing-miniatures-font-kturn"></i>')
            .replace(/%HUGESHIPONLY%/g, '<span class="card-restriction">Huge ship only.</span>')
            .replace(/%LARGESHIPONLY%/g, '<span class="card-restriction">Large ship only.</span>')
            .replace(/%SMALLSHIPONLY%/g, '<span class="card-restriction">Small ship only.</span>')
            .replace(/%REBELONLY%/g, '<span class="card-restriction">Rebel only.</span>')
            .replace(/%IMPERIALONLY%/g, '<span class="card-restriction">Imperial only.</span>')
            .replace(/%SCUMONLY%/g, '<span class="card-restriction">Scum only.</span>')
            .replace(/%LIMITED%/g, '<span class="card-restriction">Limited.</span>')
            .replace(/%LINEBREAK%/g, '<br /><br />')
            .replace(/%DE_HUGESHIPONLY%/g, '<span class="card-restriction">Nur für riesige Schiffe.</span>')
            .replace(/%DE_LARGESHIPONLY%/g, '<span class="card-restriction">Nur für grosse Schiffe.</span>')
            .replace(/%DE_REBELONLY%/g, '<span class="card-restriction">Nur für Rebellen.</span>')
            .replace(/%DE_IMPERIALONLY%/g, '<span class="card-restriction">Nur für das Imperium.</span>')
            .replace(/%DE_SCUMONLY%/g, '<span class="card-restriction">Nur für Abschaum & Kriminelle.</span>')
            .replace(/%DE_GOZANTIONLY%/g, '<span class="card-restriction">Nur für Kreuzer der <em>Gozanti</em>-Klasse.</span>')
            .replace(/%DE_LIMITED%/g, '<span class="card-restriction">Limitiert.</span>')
            .replace(/%DE_SMALLSHIPONLY%/g, '<span class="card-restriction">Nur für kleine Schiffe.</span>')
            .replace(/%FR_HUGESHIPONLY%/g, '<span class="card-restriction">Vaisseau immense uniquement.</span>')
            .replace(/%FR_LARGESHIPONLY%/g, '<span class="card-restriction">Grand vaisseau uniquement.</span>')
            .replace(/%FR_REBELONLY%/g, '<span class="card-restriction">Rebelle uniquement.</span>')
            .replace(/%FR_IMPERIALONLY%/g, '<span class="card-restriction">Impérial uniquement.</span>')
            .replace(/%FR_SCUMONLY%/g, '<span class="card-restriction">Racailles uniquement.</span>')
            .replace(/%GOZANTIONLY%/g, '<span class="card-restriction"><em>Gozanti</em>-class cruiser only.</span>')

exportObj.canonicalizeShipNames = (card_data) ->
    for ship_name, ship_data of card_data.ships
        ship_data.english_name = ship_name
        ship_data.canonical_name ?= ship_data.english_name.canonicalize()

exportObj.renameShip = (english_name, new_name) ->
    exportObj.ships[new_name] = exportObj.ships[english_name]
    exportObj.ships[new_name].name = new_name
    exportObj.ships[new_name].english_name = english_name
    delete exportObj.ships[english_name]
