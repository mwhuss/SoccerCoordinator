/*  TeamTreeouse
    TechDegree - Project 1: SoccerCoordinator
    Bryan Huss 09/26/2016
*/

// Initial data set
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
var inexperiencedPlauyers: [[String : String]] = []

// Seperates the players into their respective dictionaries
for player in initialPlayerList {
    if player["experienced"] == "true" {
        experiencedPlayers.append(player)
    }
    else {
        inexperiencedPlauyers.append(player)
    }
}

// Initialize dictionaries for the three seperate teams
var dragons: [[String : String]] = []
var sharks: [[String : String]] = []
var raptors: [[String : String]] = []
