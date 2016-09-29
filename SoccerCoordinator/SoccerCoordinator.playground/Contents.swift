/*  
    TeamTreeouse
    TechDegree - Project 1: SoccerCoordinator
    Bryan Huss 09/26/2016
*/

// ===== VARIABLE INITIALIZATION =====
// Total player data set
let initialPlayerList: [[String : String]] = [
    ["name": "Joe Smith", "height": "42", "experienced": "true", "guardians": "Jim and Jan Smith"],
    ["name": "Jill Tanner", "height": "36", "experienced": "true", "guardians": "Clara Tanner"],
    ["name": "Bill Bon", "height": "43", "experienced": "true", "guardians": "Sara and Jenny Bon"],
    ["name": "Eva Gordon", "height": "45", "experienced": "false", "guardians": "Wendy and Mike Gordon"],
    ["name": "Matt Gill", "height": "40", "experienced": "false", "guardians": "Charles and Sylvia Gill"],
    ["name": "Kimmy Stein", "height": "41", "experienced": "false", "guardians": "Bill and Hillary Stein"],
    ["name": "Sammy Adams", "height": "45", "experienced": "false", "guardians": "Jeff Adams"],
    ["name": "Karl Saygan", "height": "42", "experienced": "true", "guardians": "Heather Bledsoe"],
    ["name": "Suzane Greenberg", "height": "44", "experienced": "true", "guardians": "Henrietta Dumas"],
    ["name": "Sal Dali", "height": "41", "experienced": "false", "guardians": "Gala Dali"],
    ["name": "Joe Kavalier", "height": "39", "experienced": "false", "guardians": "Sam and Elaine Kavalier"],
    ["name": "Ben Finkelstein", "height": "44", "experienced": "false", "guardians": "Aaron and Jill Finkelstein"],
    ["name": "Diego Soto", "height": "41", "experienced": "true", "guardians": "Robin and Sarika Soto"],
    ["name": "Chloe Alaska", "height": "47", "experienced": "false", "guardians": "David and Jamie Alaska"],
    ["name": "Arnold Willis", "height": "43", "experienced": "false", "guardians": "Claire Willis"],
    ["name": "Phillip Helm", "height": "44", "experienced": "true", "guardians": "Thomas Helm and Eva Jones"],
    ["name": "Les Clay", "height": "42", "experienced": "true", "guardians": "Wynonna Brown"],
    ["name": "Herschel Krustofski", "height": "45", "experienced": "true", "guardians": "Hyman and Rachel Krustofski"]
]

// Initialize dictionaries for experienced/inexperienced players
var experiencedPlayers: [[String : String]] = []
var inexperiencedPlayers: [[String : String]] = []
// Initialize dictionaries for teams
var dragons: [[String : String]] = []
var sharks: [[String : String]] = []
var raptors: [[String : String]] = []
// Constants for teams first practice
let dragonsPractice = "March 17, 1pm"
let sharksPractice = "March 17, 3pm"
let raptorsPractice = "March 18, 1pm"


// Sort experienced players from the inexperienced
for player in initialPlayerList {
    if (player["experienced"] == "true") {
        experiencedPlayers.append(player)
    } else {
        inexperiencedPlayers.append(player)
    }
}

// If the experienced players are equal in number to the inexperienced players, assign them to the teams
if (experiencedPlayers.count == inexperiencedPlayers.count) {
    for x in 0...experiencedPlayers.count - 1 {
        if (x % 3 == 0) {
            dragons.append(experiencedPlayers[x])
            dragons.append(inexperiencedPlayers[x])
        }
        else if (x % 3 == 1) {
            sharks.append(experiencedPlayers[x])
            sharks.append(inexperiencedPlayers[x])
        }
        else {
            raptors.append(experiencedPlayers[x])
            raptors.append(inexperiencedPlayers[x])
        }
    }
}

print("LETTERS:\n========")
for player in dragons {
    print("::Dear \(player["guardians"]!). Your child, \(player["name"]!), has been placed on the Dragons team this year. The first practice for this team will be \(dragonsPractice)")
}
for player in sharks {
    print("::Dear \(player["guardians"]!). Your child, \(player["name"]!), has been placed on the Dragons team this year. The first practice for this team will be \(sharksPractice)")
}
for player in raptors {
    print("::Dear \(player["guardians"]!). Your child, \(player["name"]!), has been placed on the Dragons team this year. The first practice for this team will be \(raptorsPractice)")
}