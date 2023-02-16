//
//  HomeViewController.swift
//  My Organizer
//
//  Created by alumno on 14/02/23.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    var books = [
        Book(bookName: "La ciudad de los ojos invisibles", author: "Armando Vega Gil", numberOfPages: "123", description: "Relatos de la ciudad de mexico"),
        Book(bookName: "Cien años de soledad", author: "Gabriel Garcia Marquez", numberOfPages: "385", description: "Historia de una familia muy extraña"),
        Book(bookName: "La borra del cafe", author: "Mario Benedetti", numberOfPages: "246", description: "La vida es un ciclo interminable"),
        Book(bookName: "La ciudad de los ojos invisibles", author: "Armando Vega Gil", numberOfPages: "123", description: "Relatos de la ciudad de mexico"),
        Book(bookName: "Cien años de soledad", author: "Gabriel Garcia Marquez", numberOfPages: "385", description: "Historia de una familia muy extraña"),
        Book(bookName: "La borra del cafe", author: "Mario Benedetti", numberOfPages: "246", description: "La vida es un ciclo interminable"),
        Book(bookName: "La ciudad de los ojos invisibles", author: "Armando Vega Gil", numberOfPages: "123", description: "Relatos de la ciudad de mexico"),
        Book(bookName: "Cien años de soledad", author: "Gabriel Garcia Marquez", numberOfPages: "385", description: "Historia de una familia muy extraña"),
        Book(bookName: "La borra del cafe", author: "Mario Benedetti", numberOfPages: "246", description: "La vida es un ciclo interminable"),
        Book(bookName: "La ciudad de los ojos invisibles", author: "Armando Vega Gil", numberOfPages: "123", description: "Relatos de la ciudad de mexico"),
        Book(bookName: "Cien años de soledad", author: "Gabriel Garcia Marquez", numberOfPages: "385", description: "Historia de una familia muy extraña"),
        Book(bookName: "La borra del cafe", author: "Mario Benedetti", numberOfPages: "246", description: "La vida es un ciclo interminable"),
        Book(bookName: "La ciudad de los ojos invisibles", author: "Armando Vega Gil", numberOfPages: "123", description: "Relatos de la ciudad de mexico"),
        Book(bookName: "Cien años de soledad", author: "Gabriel Garcia Marquez", numberOfPages: "385", description: "Historia de una familia muy extraña"),
        Book(bookName: "La borra del cafe", author: "Mario Benedetti", numberOfPages: "246", description: "La vida es un ciclo interminable")
    ]
    
    @IBOutlet weak var ContentTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        //setUpUI()
        configTableView()
    }
    
    func configTableView(){
        ContentTableView.register(UINib(nibName: "BookTableViewCell", bundle: .main), forCellReuseIdentifier: "BookTableViewCell")
        //let nibBook = UINib(nibName: "\(BookTableViewCell.self)", bundle: nil)
        //ContentTableView.register(nibBook, forCellReuseIdentifier: "\(BookTableViewCell.self)")
        
        /*let nibMovie = UINib(nibName: "\(MovieTableViewCell.self)", bundle: nil)
        ContentTableView.register(nibMovie, forCellReuseIdentifier: "\(MovieTableViewCell.self)")
        
        let nibSerie = UINib(nibName: "\(SerieTableViewCell.self)", bundle: nil)
        ContentTableView.register(nibSerie, forCellReuseIdentifier: "\(SerieTableViewCell.self)")*/
        
        ContentTableView.delegate = self
        ContentTableView.dataSource = self
        self.title = "Mi contenido"
    }
}

extension HomeViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let bookCell = tableView.dequeueReusableCell(withIdentifier: "BookTableViewCell", for: indexPath) as? BookTableViewCell{
            let book = books[indexPath.row]
            bookCell.setUp(withBook: book)
             return bookCell
             }
            return UITableViewCell()
        }
    }
    
extension HomeViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let book = books[indexPath.row]
            print("Book Selected: \(book.bookName)")
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
}
