//
//  UpdateViewModel.swift
//  ToDosApp
//
//  Created by HCangir on 26.05.2024.
//

import Foundation
class UpdateViewModel{
    var toDosRepo = ToDosDaoReporistory()
    
    func update(id: Int,name: String){
        toDosRepo.update(id: id, name: name)
    }
}
