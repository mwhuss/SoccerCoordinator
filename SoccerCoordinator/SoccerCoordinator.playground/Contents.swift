/*  
    TeamTreeouse
    TechDegree - Project 1: SoccerCoordinator
    Bryan Huss 09/26/2016
 
- You have volunteered to be the Coordinator for your town’s youth soccer league. As part of your job you need to divide the 18 children who have signed up for the league into three even teams - Dragons, Sharks and Raptors. In years’ past, the teams have been unevenly matched, so this year you are doing your best to fix that. For each child, you will have the following information: Name, height (in inches), whether or not they have played soccer before and their guardians’ names.
 
- The project has three major parts. For each part, choose ONLY from the tools we have covered in the courses so far:
 
 1. Native types and collections to store data (Dictionaries, Arrays, Ints, Strings, etc...)
 2. Accessing, appending and counting Arrays
 3. Accessing Dictionaries and Arrays
 4. Creating control flow
 5. Use of comparison operators
 6. String Interpolation
 7. Use of comments
 
- Please don’t employ more advanced tools we haven’t covered yet, even if they are right for the job. (Yes, that means no classes, structs, tuples or filters on Project 1.) However, if you identify a place where a more advanced tool is appropriate, please mention that in a code comment.
 
- Part 1: We have provided information for the 18 players in the Player Info spreadsheet. Please choose an appropriate data type to store the information for each player. In addition, create an empty collection variable to hold all the players’ data. Once you have decided on what tools to use, manually enter the player data so it can be used in Part 2.
 
- Part 2: Create logic that can iterate through all 18 players and assign them to teams such that the number of experienced players on each team are the same. Store each team’s players in its own new collection variable for use in Part 3. (Please note: your logic should work correctly regardless of the initial ordering of the players and should work, if we theoretically had more or less than 18 players, so NO MAGIC NUMBERS!)
 
- Also, if you would like to attain an “exceeds expectations” rating for this project, add logic to ensure that each teams’ average height is within 1.5 inches of the others.
 
- Part 3: Create logic that iterates through all three teams of players and generates a personalized letter to the guardians, letting them know which team their child has been placed on and when they should attend their first team team practice. As long as you provide the necessary information (player name, team name, guardians’ names, practice date/time), feel free to have fun with the content of the letter. The team practice dates/times are as follows: Dragons - March 17, 1pm, Sharks - March 17, 3pm, Raptors - March 18, 1pm
 
- When your complete code is run in a playground the letters should be visible in the right hand pane. If the code is run within an actual Xcode Project, the letters should be visible in the console.
 
- As always, meaningful and concise code comments are expected. Your code should be written and refined in an Xcode playground or Xcode project, but be sure to upload it to GitHub, as per the instructions provided in the Soccer Coordinator Video Instruction, linked below.
 
- Good luck and Happy Coding!
*/

// ===================================
// ===== VARIABLE INITIALIZATION =====
// ===================================

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

// =====================
// ===== FUNCTIONS =====
// =====================

/* Distributes players in passed dictionary evenly between the teams with given arguments:
 -players: Dictionary - Contains players to be distribued
 */
func assignPlayers(players: [[String : String]]) {
    for x in 0..<players.count {
        if (x % numberOfTeams == 0) {
            dragons.append(players[x])
        }
        else if (x % numberOfTeams == 1) {
            sharks.append(players[x])
        }
        else {
            raptors.append(players[x])
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

// ======================
// ===== ASSIGNMENT =====
// ======================

// Sort experienced players from the inexperienced
for player in initialPlayerList {
    if (player["experienced"] == "true") {
        experiencedPlayers.append(player)
    } else {
        inexperiencedPlayers.append(player)
    }
}

// Assign players to teams
assignPlayers(players: experiencedPlayers)
assignPlayers(players: inexperiencedPlayers)

// Print out letters to guardians
printLetters(for: dragons, teamName: "Dragons", firstPractice: "March 17, 1pm")
printLetters(for: sharks, teamName: "Sharks", firstPractice: "March 17, 3pm")
printLetters(for: raptors, teamName: "Raptors", firstPractice: "March 18, 1pm")