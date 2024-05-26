//
//  MainViewModel.swift
//  ToDosApp
//
//  Created by HCangir on 26.05.2024.
//

import Foundation
import RxSwift
class MainViewModel{
    private var toDosRepo = ToDosDaoReporistory()
    
    var toDosList = BehaviorSubject<[ToDos]>(value: [ToDos]())
    
    init(){//Siniftan nesne olusturuldugunda çalisir.
        toDosList = toDosRepo.toDoList
    }
        
    func delete(id:Int){
        toDosRepo.delete(id: id)
        loadToDos()
    }
    func search(searchText: String){
        toDosRepo.search(searchText: searchText)
    }
    
    func loadToDos(){
        toDosRepo.loadToDos()
    }
}
