//
//  DataSource.swift
//  CodePath P2
//
//  Created by Sun Jang on 2023/03/07.
//

import Foundation

struct Movie {
    let original_title: String
    let overview: String
    let poster_path: URL
    let vote_average: Double
}

extension Movie {

    /// An array of mock tracks
    static var mockMovies: [Movie]  = [
        Movie(original_title: "Knock at the Cabin",
                 overview: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.",
                 poster_path: URL(string:"/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg")!,
                 vote_average: 6.6),
        Movie(original_title: "Puss in Boots: The Last Wish",
              overview: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.",
              poster_path: URL(string: "/kuf6dutpsT0vSVehic3EZIqkOBt.jpg")!, vote_average: 8.4),
                
        Movie( original_title: "Black Panther: Wakanda Forever",
               overview: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.",
               poster_path: URL(string: "/sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!,
               vote_average: 7.4)
    ]

    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}
