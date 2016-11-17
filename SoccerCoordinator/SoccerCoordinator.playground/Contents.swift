var players: [[String: Any]] = []
players.append(["name": "Joe Smith", "heightInInches": 42, "soccerExperience": true, "guardianNames": "Jim and Jan Smith"])
players.append(["name": "Jill Tanner", "heightInInches": 36, "soccerExperience": true, "guardianNames": "Clara Tanner"])
players.append(["name": "Bill Bon", "heightInInches": 43, "soccerExperience": true, "guardianNames": "Sara and Jenny Bon"])
players.append(["name": "Eva Gordon", "heightInInches": 45, "soccerExperience": false, "guardianNames": "Wendy and Mike Gordon"])
players.append(["name": "Matt Gill", "heightInInches": 40, "soccerExperience": false, "guardianNames": "Charles and Sylvia Gill"])
players.append(["name": "Kimmy Stein", "heightInInches": 41, "soccerExperience": false, "guardianNames": "Bill and Hillary Stein"])
players.append(["name": "Sammy Adams", "heightInInches": 45, "soccerExperience": false, "guardianNames": "Jeff Adams"])
players.append(["name": "Karl Saygan", "heightInInches": 42, "soccerExperience": true, "guardianNames": "Heather Bledsoe"])
players.append(["name": "Suzane Greenberg", "heightInInches": 44, "soccerExperience": true, "guardianNames": "Henrietta Dumas"])
players.append(["name": "Sal Dali", "heightInInches": 41, "soccerExperience": false, "guardianNames": "Gala Dali"])
players.append(["name": "Joe Kavalier", "heightInInches": 39, "soccerExperience": false, "guardianNames": "Sam and Elaine Kavalier"])
players.append(["name": "Ben Finkelstein", "heightInInches": 44, "soccerExperience": false, "guardianNames": "Aaron and Jill Finkelstein"])
players.append(["name": "Diego Soto", "heightInInches": 41, "soccerExperience": true, "guardianNames": "Robin and Sarika Soto"])
players.append(["name": "Chloe Alaska", "heightInInches": 47, "soccerExperience": false, "guardianNames": "David and Jamie Alaska"])
players.append(["name": "Arnold Willis", "heightInInches": 43, "soccerExperience": false, "guardianNames": "Claire Willis"])
players.append(["name": "Phillip Helm", "heightInInches": 44, "soccerExperience": true, "guardianNames": "Thomas Helm and Eva Jones"])
players.append(["name": "Les Clay", "heightInInches": 42, "soccerExperience": true, "guardianNames": "Wynonna Brown"])
players.append(["name": "Herschel Krustofski", "heightInInches": 45, "soccerExperience": true, "guardianNames": "Hyman and Rachel Krustofski"])

let numberOfTeams = 3

var teamNum1: [[String: Any]] = []
var teamNum2: [[String: Any]] = []
var teamNum3: [[String: Any]] = []

var teamIndicatorWithExp = 1
var teamIndicatorWithoutExp = 1

for player in players {
    
    let playerIsExperienced = player["soccerExperience"] as! Bool
    
    if playerIsExperienced {
        
        switch teamIndicatorWithExp {
        case 1: teamNum1.append(player)
        case 2: teamNum2.append(player)
        case 3: teamNum3.append(player)
        default:
            teamNum1.append(player)
            teamIndicatorWithExp = 1
        }
        
        teamIndicatorWithExp += 1
        
    } else {
        
        switch teamIndicatorWithoutExp {
        case 1: teamNum1.append(player)
        case 2: teamNum2.append(player)
        case 3: teamNum3.append(player)
        default:
            teamNum1.append(player)
            teamIndicatorWithoutExp = 1
        }
        
        teamIndicatorWithoutExp += 1
        
    }
    
}