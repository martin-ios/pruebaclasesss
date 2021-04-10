//
//  ViewController.swift
//  pruebaclasess
//
//  Created by Martin alonso Gamboa on 26.10.2020.
//

import UIKit
import AVFoundation

class LangueagesCell: UITableViewCell {
    
    
    @IBOutlet weak var languagesNameLbl: UILabel!
    
}

class ViewController: UIViewController, AVAudioPlayerDelegate, UITableViewDataSource, UITableViewDelegate {

    
    let codeLanguage = ["es-ES", "en-US", "it-IT", "fr-FR", "de-DE", "pt-BR"]
    let languages = ["Español", "Ingles","Italiano", "Frances", "Aleman", "Portugues"]

    var languageNumbers = [["Cero", "Uno ", "Dos", "Tres", "Cuatro", "Cinco", "Seis", "Siete", "Ocho", "Nueve", "Diez", "Once", "Doce", "Trece", "Catorce", "Quince", "Dieciseis", "Diecisiete","Dieciocho", "Diecinueve", "Veinte"],
                           ["Zero ","One","Two","Three","Four", "Five","Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen","Eighteen", "Nineteen", "Twenty" ],
                           ["Zero", "Uno", "Due", "Tre", "Quattro", "Cinque", "Sei", "Sette","Otto", "Nove", "Dieci","Unidici","Dodici", "Tredici", "Quatordici", "Quindici", "Sedici", "Diciasette", "Diciotto", "Dicianove", "Venti" ] ,
                           ["Zéro", "Un", "Deux", "Trois", "Quatre", "Cinq", "Six ", "Sept", "Huit", "Neuf", "Dix", "Onze", "Douze", "Treize", "Quatorze", "Quinze", "Seize", "Dix-Sept", "Dix-Huit","Dix-Neuf", "Vingt"],
                           [ "Null","Eins", "Zwei", "Drei", "Vier", "Fünf", "Sechs", "Sieben", "Acht", "Neun", "Zehn", "Elf", "Zwölf", "Dreizhen", "Vierzehn", "Fünfzehn", "Sechzehn", "Siebzehn", "Achtzehn","Neunzehn", "Zwanzig"],
                           ["Zero  ", "Um", "Dois", "Três", "Quatro", "Cinco ", "Seis ", "Sete", "Oito", "Nove", "Dez", "Onze ", "Doze", "Treze", "Quatorze ", "Quinze ", "Dezesseis", "Dezessete", "Dezoito", "Dezenove", "Vinte"]
                                                                                            
                           ]
    
                                             
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = UIColor(named: "CustomGrayLight")
        
        super.viewDidLoad()
               tableView.dataSource = self
        tableView.frame = view.bounds
               tableView.delegate = self
               tableView.reloadData()
        
        
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return languages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellid", for: indexPath) as! LangueagesCell
        cell.languagesNameLbl.text = languages[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc2 = self.storyboard?.instantiateViewController(identifier: "GeneryUIViewController") as! UnicaViewController
        vc2.idiomaG = languages[indexPath.row]
        vc2.codeSpeechUnica = codeLanguage[indexPath.row]
       vc2.descriptionG = languageNumbers[indexPath.row]
        self.navigationController?.pushViewController(vc2, animated: true)
    
    }    
}

