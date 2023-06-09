//
//  Question.swift
//  iQuiz
//
//  Created by Amandha W. Barok on 6/6/23.
//

import Foundation

struct Question {
    var title: String
    var responses: [String]
    var correctResponse: Int
}

let questions: [Question] = [
    Question(title: "Who are Harry’s two best friends in the world?", responses: ["The Dursleys", "Ron Weasley and Hermione Granger", "Emma Watson and Ron Weasley"], correctResponse: 1),
    
    Question(title: "Where did Harry and Ron meet?", responses: ["At Hogwards", "Number 4 Privet Drive, Little Whinging, Surrey", "King’s Cross Station"], correctResponse: 2),
    
    Question(title: "What animal can Harry speak to?", responses: ["Frog", "Owl", "Snake"], correctResponse: 2),
    
    Question(title: "What animal can Remus Lupin turn into?", responses: ["Werewolf", "Wolf", "Snake"], correctResponse: 0),
    
    Question(title: "Who pretended to be Mad Eye Moody in the Goblet of Fire?", responses: ["Bartemius Crouch", "Bartemius Crouch Junior", "Petter Pettigrew"], correctResponse: 1),
    
    Question(title: "What is Harry’s Patronus?", responses: ["Stag", "Phoenix", "Cat"], correctResponse: 0),

    Question(title: "What position does Harry play on the Gryffindor Quidditch team?", responses: ["Keeper", "Seeker", "Chaser"], correctResponse: 1),

    Question(title: "What is Voldemort’s full, real name?", responses: ["Lord Voldemort", "Tom Riddle", "Tom Marvolo Riddle"], correctResponse: 2),
    
    Question(title: "What is the main ingredient in Harry Potter’s wand?", responses: ["Phoenix feather", "Wood", "Phoenix"], correctResponse: 0),
    
    Question(title: "Who is the first victim to be petrified by the basilisk? ", responses: ["Justin Finch-Fletchley", "Hermione Granger", "Filch’s cat, Mrs. Norris"], correctResponse: 2),
]
