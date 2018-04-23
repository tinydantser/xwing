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
        "A-Wing":
            name: "A-Wing"
            factions: [ "Rebel Alliance" ] 
            attack: 2
            agility: 3
            hull: 2
            shields: 2
            actions: [
                "Focus"
                "Target Lock"
                "Evade"
                "Boost"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 0]
              [ 2, 2, 2, 2, 2, 0]
              [ 1, 1, 2, 1, 1, 3]
              [ 0, 0, 2, 0, 0, 0]
              [ 0, 0, 2, 0, 0, 3]
            ]
        "TIE Interceptor":
            name: "TIE Interceptor"
            factions: [ "Galactic Empire" ] 
            attack: 3
            agility: 3
            hull: 3
            shields: 0
            actions: [
                "Focus"
                "Barrel Roll"
                "Evade"
                "Boost"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 1, 0, 0, 0, 1, 0]
              [ 2, 2, 2, 2, 2, 0]
              [ 1, 1, 2, 1, 1, 3]
              [ 0, 0, 2, 0, 0, 0]
              [ 0, 0, 1, 0, 0, 3]
            ]
        "Fang Fighter":
            name: "Fang Fighter"
            factions: [ "Scum and Villainy" ]
            attack: 3
            agility: 3
            hull: 3
            shields: 0
            actions: [
                "Focus"
                "Barrel Roll"
                "Target Lock"
                "Boost"
            ]
            maneuvers: [
                [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                [ 1, 0, 0, 0, 1, 0, 0, 0, 0, 0 ]
                [ 2, 2, 2, 2, 2, 0, 0, 0, 3, 3 ]
                [ 1, 1, 2, 1, 1, 0, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 3, 0, 0, 0, 0 ]
                [ 0, 0, 1, 0, 0, 0, 0, 0, 0, 0 ]
            ]
        "Z-95 Headhunter":
            name: "Z-95 Headhunter"
            factions: [ "Scum and Villainy" ]
            attack: 2
            agility: 2
            hull: 2
            shields: 2
            actions: [
                "Focus"
                "Target Lock"
            ]
            maneuvers: [
              [ 0, 0, 0, 0, 0, 0]
              [ 0, 1, 2, 1, 0, 0]
              [ 1, 2, 2, 2, 1, 0]
              [ 1, 1, 1, 1, 1, 3]
              [ 0, 0, 1, 0, 0, 0]
              [ 0, 0, 0, 0, 0, 0]
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
            skill: 5
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
            points: 23
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
            points: 27
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
            points: 17
            slots: [ ]
        }
        {
            name: "Avenger Squadron Pilot"
            faction: "Galactic Empire"
            id: 24
            ship: "TIE Interceptor"
            skill: 3
            points: 19
            slots: [
                "Elite" 
            ]
        }
        {
            name: "Saber Squadron Pilot"
            faction: "Galactic Empire"
            id: 25
            ship: "TIE Interceptor"
            skill: 5
            points: 22
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
            skill: 8
            points: 25
            slots: [ 
                "Elite"
            ]
        }
        {
            name: "Turr Phennir"
            faction: "Galactic Empire"
            id: 27
            unique: true
            ship: "TIE Interceptor"
            skill: 8
            points: 26
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
            skill: 10
            points: 28
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
            points: 25
            slots: [
                "Elite"
            ]
        }
        {
            name: "Arvel Crynyd"
            faction: "Rebel Alliance"
            id: 30
            unique: true
            ship: "A-Wing"
            skill: 5
            points: 21
            slots: [
                "Elite"
            ]
        }
        {
            name: "Green Squadron Pilot"
            faction: "Rebel Alliance"
            id: 31
            ship: "A-Wing"
            skill: 3
            points: 16
            slots: [
                "Elite"
            ]
        }
        {
            name: "Prototype Pilot"
            faction: "Rebel Alliance"
            id: 32
            ship: "A-Wing"
            skill: 1
            points: 15
            slots: [ ]
        }
        {
            name: "Concord Dawn Veteran"
            faction: "Scum and Villainy"
            id: 33
            ship: "Fang Fighter"
            skill: 4
            points: 23
            slots: [ 
                "Elite"
            ]
        }
        {
            name: "Kad Solus"
            faction: "Scum and Villainy"
            id: 34
            ship: "Fang Fighter"
            skill: 7
            points: 27
            unique: true
            slots: [ 
                "Elite"
            ]
        }
        {
            name: "Old Teroch"
            faction: "Scum and Villainy"
            id: 35
            ship: "Fang Fighter"
            skill: 7
            points: 27
            unique: true
            slots: [ 
                "Elite"
            ]
        }
        {
            name: "Fenn Rau"
            faction: "Scum and Villainy"
            id: 36
            ship: "Fang Fighter"
            skill: 9
            points: 30
            unique: true
            slots: [ 
                "Elite"
            ]
        }
        {
            name: "Binayre Pirate"
            faction: "Scum and Villainy"
            id: 37
            ship: "Z-95 Headhunter"
            skill: 1
            points: 12
            slots: [ 
            ]
        }
        {
            name: "Black Sun Soldier"
            faction: "Scum and Villainy"
            id: 38
            ship: "Z-95 Headhunter"
            skill: 3
            points: 13
            slots: [
                "Elite"
            ]
        }
        {
            name: "Kaa'to Leachos"
            faction: "Scum and Villainy"
            id: 39
            ship: "Z-95 Headhunter"
            skill: 5
            points: 15
            unique: true
            slots: [
                "Elite"
            ]
        }
        {
            name: "N'Dru Suhlak"
            faction: "Scum and Villainy"
            id: 40
            ship: "Z-95 Headhunter"
            skill: 7
            points: 17
            unique: true
            slots: [
                "Elite"
            ]
        }        
    ]

    upgradesById: [
        {
            name: "Ion Cannon Turret"
            id: 0
            slot: "Turret"
            points: 4
            attack: 3
            range: "1-3"
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
            name: "Placeholder"
            id: 6
            points: 0
            slot: "Elite"
            skip:true
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
            points: 3
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
            points: 2
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
            name: "Proton Bomb"
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
            points: 3
        }
        {
            name: 'Advanced Targeting Computer'
            canonical_name: 'Adv. Targeting Computer'.canonicalize()
            id: 21
            slot: "System"
            points: 4
        }
        {
            name: "Chin Cannon Refit"
            id: 22
            slot: "Armament"
            points: 2
        }
        {
            name: "L-s7.2 Cannons"
            id: 23
            slot: "Armament"
            points: 3
        }
        {
            name: "L-s9.3 Cannons"
            id: 24
            slot: "Armament"
            points: 3
        }
        {
            name: "Heavy Blaster Cannon Refit"
            id: 25
            slot: "Armament"
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
        {
            name: "Reverse Throttle Hop"
            id: 32
            slot: "Elite"
            points: 1
            restriction_func: (ship) ->
                return false if (ship.effectiveStats().skill <= 6)
                true
        }
        {
            name: "Ace of Aces"
            id: 33
            slot: "Elite"
            points: 2
            restriction_func: (ship) ->
                return false if (ship.effectiveStats().skill <= 8)
                true            
        }
        {
            name: "Opportunist"
            id: 34
            slot: "Elite"
            points: 3
            restriction_func: (ship) ->
                return false if (ship.effectiveStats().skill <= 6)
                true
        }
        {
            name: "Booster Blue"
            id: 35
            slot: "Illicit"
            points: 1
        }
        {
            name: "Contraband Cybernetics"
            id: 36
            slot: "Illicit"
            points: 1
        }
        {
            name: "Glitterstim"
            id: 37
            slot: "Illicit"
            points: 2
        }
        {
            name: "Dead Man's Switch"
            id: 38
            slot: "Illicit"
            points: 2
        }       
    ]

    modificationsById: [
        {
            name: "Countermeasures"
            id: 0
            points: 1
        }
        {
            name: "Reinforced Cockpit"
            id: 1
            points: 1
        }
        {
            name: "Targeting Computer"
            id: 2
            points: 2
            modifier_func: (stats) ->
                stats.actions.push 'Target Lock' if 'Target Lock' not in stats.actions
        }
        {
            name: "Hull Upgrade"
            id: 3
            points: 3
            modifier_func: (stats) ->
                stats.hull += 1            
        }
        {
            name: "Shield Upgrade"
            id: 4
            points: 4
            modifier_func: (stats) ->
                stats.shields += 1
        }        
    ]

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
            ]
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
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
            extraTorps: 1
            extraMissiles: 0
            extraBombs: 0
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
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
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
            extraTorps: 1
            extraMissiles: 0
            extraBombs: 0
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
            extraTorps: 1
            extraMissiles: 0
            extraBombs: 1
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
            modifier_func: (stats) ->
                if stats.maneuvers? and stats.maneuvers.length > 0
                    stats.maneuvers[1][1] = 2
                    stats.maneuvers[1][2] = 2
                    stats.maneuvers[1][3] = 2
            extraTorps: 2
            extraMissiles: 0
            extraBombs: 0
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
            extraTorps: 1
            extraMissiles: 0
            extraBombs: 1
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
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
        }
        {
            name: "TIE/LN 'S-Type'"
            id: 8
            points: 3
            ship: "TIE Fighter"
            faction: "Galactic Empire"
            slots: [
                "Armament"
            ]
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
        }
        {
            name: "TIE/M2 'Havoc'"
            id: 9
            points: 2
            ship: "TIE Fighter"
            faction: "Galactic Empire"
            slots: [
                "Cannon"
            ]
            modifier_func: (stats) ->
                if stats.maneuvers? and stats.maneuvers.length > 0
                    stats.maneuvers[1][0] = 3
                    stats.maneuvers[1][4] = 3
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
        }
        {
            name: "TIE/LN"
            id: 10
            points: 1
            ship: "TIE Fighter"
            faction: "Galactic Empire"
            slots: [ ]
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
        }
        {
            name: "TIE/x2C 'Corona'"
            id: 11
            points: 4
            ship: "TIE Advanced"
            faction: "Galactic Empire"
            slots: [ 
                "System"
                "Armament"
                "Missile"
            ]
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
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
                "Armament"
            ]
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
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
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
            restriction_func: (ship) ->
                ship.pilot.name == "Darth Vader"
            modifier_func: (stats) ->
                stats.actions.push 'Boost' if 'Boost' not in stats.actions
        }
        {
            name: "R22 'Spearhead'"
            id: 14
            points: 0
            ship: "A-Wing"
            faction: "Rebel Alliance"
            unique: false
            slots: [
                "Missile"
            ]
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
        }
        {
            name: "RZ-1"
            id: 15
            points: 3
            ship: "A-Wing"
            faction: "Rebel Alliance"
            unique: false
            slots: [
                "Missile"
            ]
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
        }
        {
            name: "RZ-1 Chardaan Refit"
            id: 16
            points: 2
            ship: "A-Wing"
            faction: "Rebel Alliance"
            unique: false
            slots: [
            ]
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
        }
        {
            name: "TIE/IN Mk.I"
            id: 17
            points: 0
            ship: "TIE Interceptor"
            faction: "Galactic Empire"
            unique: false
            slots: [
            ]
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
        }
        {
            name: "TIE/IN Mk.II"
            id: 18
            points: 4
            ship: "TIE Interceptor"
            faction: "Galactic Empire"
            unique: false
            slots: [
                "Armament"
            ]
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
            restriction_func: (ship) ->
                return false if (ship.effectiveStats().skill <= 4)
                true            
        }
        {
            name: "TIE/IN M3 'Warhead'"
            id: 19
            points: 3
            ship: "TIE Interceptor"
            faction: "Galactic Empire"
            unique: false
            slots: [
                "Missile"
            ]
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
            modifier_func: (stats) ->
                stats.shields += 1  
        }
        {
            name: "Protectorate Mk.II"
            id: 20
            points: 0
            ship: "Fang Fighter"
            faction: "Scum and Villainy"
            unique: false
            slots: [
                "Torpedo"
            ]
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
        }
        {
            name: "Protectorate Mk.IV"
            id: 21
            points: 3
            ship: "Fang Fighter"
            faction: "Scum and Villainy"
            unique: false
            slots: [
                "Torpedo"
            ]
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
        }
        {
            name: "Syndicate Fang"
            id: 22
            points: 2
            ship: "Fang Fighter"
            faction: "Scum and Villainy"
            unique: false
            slots: [
                "Illicit"
            ]
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
            modifier_func: (stats) ->
                stats.shields += 1 
        }
        {
            name: "Z-95-AF4"
            id: 23
            points: 0
            ship: "Z-95 Headhunter"
            faction: "Scum and Villainy"
            unique: false
            slots: [
            ]
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
        }
        {
            name: "Z-95-AF4-H"
            id: 24
            points: 1
            ship: "Z-95 Headhunter"
            faction: "Scum and Villainy"
            unique: false
            slots: [
                "Missile"
            ]
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
        }
        {
            name: "Cartel Refit"
            id: 25
            points: 3
            ship: "Z-95 Headhunter"
            faction: "Scum and Villainy"
            unique: false
            slots: [
                "Missile"
                "Illicit"
            ]
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
            modifier_func: (stats) ->
                stats.hull += 1
        }
        {
            name: "Syndicate Pursuit Special"
            id: 26
            points: 2
            ship: "Z-95 Headhunter"
            faction: "Scum and Villainy"
            unique: false
            slots: [
                "Illicit"
            ]
            extraTorps: 0
            extraMissiles: 0
            extraBombs: 0
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
