//
//  ToDosDaoReporistorys.swift
//  ToDosApp
//
//  Created by HCangir on 26.05.2024.
//

import Foundation
import RxSwift
class ToDosDaoReporistory{
    
    var toDoList = BehaviorSubject<[ToDos]>(value: [ToDos]())
    
    func save (name:String){
        print ("ToDo Save : \(name)")
    }
    
    func update(id: Int,name: String){
        print("id \(id) - name: \(name)")
    }
    
    func delete(id:Int){
        print ("ToDo Delete : \(id)")
    }
    
    func search(searchText: String){
        print("search: \(searchText)")
    }
    
    func loadToDos(){
        var list = [ToDos]()
        let todo1 = ToDos(id: 1, name: "kitap oku")
        let todo2 = ToDos(id: 2, name: "spor yap")
        let todo3 = ToDos(id: 3, name: "odev yap")
        
        list.append(todo1)
        list.append(todo2)
        list.append(todo3)
        toDoList.onNext(list)
    }
}
