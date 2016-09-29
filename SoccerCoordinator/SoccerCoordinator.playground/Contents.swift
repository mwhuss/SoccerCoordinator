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
// Number of teams in league
let numberOfTeams: Int = 3


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
        if (x % numberOfTeams == 0) {
            dragons.append(experiencedPlayers[x])
            dragons.append(inexperiencedPlayers[x])
        }
        else if (x % numberOfTeams == 1) {
            sharks.append(experiencedPlayers[x])
            sharks.append(inexperiencedPlayers[x])
        }
        else {
            raptors.append(experiencedPlayers[x])
            raptors.append(inexperiencedPlayers[x])
        }
    }
}

/* Prints letters to guardians with given arguments:
-for team: Dictionary - Contains players for team
-teamName name: String - Name of team
-firstPractice date: String - Date of first practice
 */
func printLetters(for team: [[String : String]], teamName name: String, firstPractice date: String) {
    print("LETTERS FOR TEAM: \(name)")
    for player in team {
        print("Dear \(player["guardians"]!). Your child, \(player["name"]!), has been placed on the \(name) team this year. The first will be held on \(date).")
    }
}

// Calls function to print out letters to guardians
printLetters(for: dragons, teamName: "Dragons", firstPractice: "March 17, 1pm")
printLetters(for: sharks, teamName: "Sharks", firstPractice: "March 17, 3pm")
printLetters(for: raptors, teamName: "Raptors", firstPractice: "March 18, 1pm")