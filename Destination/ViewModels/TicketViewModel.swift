//
//  TicketViewModel.swift
//  Destination
//
//  Created by Julian Chin A Foeng on 13/07/2023.
//

import Foundation

class TicketViewModel: ObservableObject{
    @Published var tickets: [Ticket] = []
    func fetchTicket(){
        
        guard let url = Bundle.main.url(forResource: "Tickets", withExtension: "json") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _,
            error in
            guard let data = data, error == nil else{
                return
            }

            do {
                let tickets = try JSONDecoder().decode([Ticket].self, from: data)
                DispatchQueue.main.async {
                    self?.tickets = tickets
                }
            }
            catch{
                print(error)
            }
        }
        task.resume()
    }
}

