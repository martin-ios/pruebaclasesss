//
//  File.swift
//  pruebaclasess
//
//  Created by Martin alonso Gamboa on 01.03.2021.
//

import Foundation

extension SpeechRecognizer {
    
    func firstFilter() {
        
   //  Speech Recognizer always return a number when value is > than 10. This function convert the number to words (letters)
        
       guard self.words != nil  else {
            
            return
        } 
        switch self.words {
        case "10" :
            
            if idiomaGSpeech == "Español" { self.onlyLetters = "DIEZ"}
            if idiomaGSpeech == "Ingles" { self.onlyLetters = "TEN" }
            if idiomaGSpeech == "Italiano" { self.onlyLetters = "DIECI"}
            if idiomaGSpeech == "Frances" { self.onlyLetters = "DIX" }
            if idiomaGSpeech == "Aleman" { self.onlyLetters = "ZEHN"}
            if idiomaGSpeech == "Protugues" { self.onlyLetters = "DEZ" }
            
        case "11" :
            if idiomaGSpeech == "Español" { self.onlyLetters = "ONCE"}
            if idiomaGSpeech == "Ingles" { self.onlyLetters = "ELEVEN" }
            if idiomaGSpeech == "Italiano" { self.words = "UNDICI"}
            if idiomaGSpeech == "Frances" { self.onlyLetters = "ONZE" }
            if idiomaGSpeech == "Aleman" { self.onlyLetters = "ELF"}
            if idiomaGSpeech == "Protugues" { self.onlyLetters = "ONZE " }
            
            
        case "12" :
            if idiomaGSpeech == "Español" { self.onlyLetters = "DOCE"}
            if idiomaGSpeech == "Ingles" { self.onlyLetters = "TWELVE" }
            if idiomaGSpeech == "Italiano" { self.words = "DODICI"}
            if idiomaGSpeech == "Frances" { self.onlyLetters = "DOUZE" }
            if idiomaGSpeech == "Aleman" { self.onlyLetters = "ZWÖLF"}
            if idiomaGSpeech == "Protugues" { self.onlyLetters = "DOZE" }
            
        case "13" :
            if idiomaGSpeech == "Español" { self.onlyLetters = "TRECE"}
            if idiomaGSpeech == "Ingles" { self.onlyLetters = "THIRTEEN" }
            if idiomaGSpeech == "Italiano" { self.words = "TREDICI"}
            if idiomaGSpeech == "Frances" { self.onlyLetters = "TREIZE" }
            if idiomaGSpeech == "Aleman" { self.onlyLetters = "DREIZHEN"}
            if idiomaGSpeech == "Protugues" { self.onlyLetters = "TREZE" }
        case "14" :
            if idiomaGSpeech == "Español" { self.onlyLetters = "CATORCE"}
            if idiomaGSpeech == "Ingles" { self.onlyLetters = "FOURTEEN" }
            if idiomaGSpeech == "Italiano" { self.words = "QUATORDICI"}
            if idiomaGSpeech == "Frances" { self.onlyLetters = "QUATORZE" }
            if idiomaGSpeech == "Aleman" { self.onlyLetters = "VIERZEHN"}
            if idiomaGSpeech == "Protugues" { self.onlyLetters = "QUATORZE" }
        case "15" :
            if idiomaGSpeech == "Español" { self.onlyLetters = "QUINCE"}
            if idiomaGSpeech == "Ingles" { self.onlyLetters = "FIFTEEN" }
            if idiomaGSpeech == "Italiano" { self.onlyLetters = "QUINDICI"}
            if idiomaGSpeech == "Frances" { self.onlyLetters = "QUINZE" }
            if idiomaGSpeech == "Aleman" { self.onlyLetters = "FÜNFZEHN"}
            if idiomaGSpeech == "Protugues" { self.onlyLetters = "QUINZE" }
        case "16" :
            if idiomaGSpeech == "Español" { self.onlyLetters = "DIECISEIS"}
            if idiomaGSpeech == "Ingles" { self.onlyLetters = "SIXTEEN" }
            if idiomaGSpeech == "Italiano" { self.onlyLetters = "SEDICI"}
            if idiomaGSpeech == "Frances" { self.onlyLetters = "SEIZE" }
            if idiomaGSpeech == "Aleman" { self.onlyLetters = "SECHZEHN"}
            if idiomaGSpeech == "Protugues" { self.onlyLetters = "DEZESSEIS" }
        case "17" :
            if idiomaGSpeech == "Español" { self.onlyLetters = "DIECISIETE"}
            if idiomaGSpeech == "Ingles" { self.onlyLetters = "SEVENTEEN" }
            if idiomaGSpeech == "Italiano" { self.onlyLetters = "DICIASETTE"}
            if idiomaGSpeech == "Frances" { self.onlyLetters = "DIX-SEPT" }
            if idiomaGSpeech == "Aleman" { self.onlyLetters = "SIEBZEHN"}
            if idiomaGSpeech == "Protugues" { self.onlyLetters = "DEZESSETE" }
        case "18" :
            if idiomaGSpeech == "Español" { self.onlyLetters = "DIECIOCHO"}
            if idiomaGSpeech == "Ingles" { self.onlyLetters = "EIGHTEEN" }
            if idiomaGSpeech == "Italiano" { self.onlyLetters = "DICIAOTTO"}
            if idiomaGSpeech == "Frances" { self.onlyLetters = "DIX-HUIT" }
            if idiomaGSpeech == "Aleman" { self.onlyLetters = "ACHTZEHN"}
            if idiomaGSpeech == "Protugues" { self.onlyLetters = "DEZOITO" }
        case "19" :
            if idiomaGSpeech == "Español" { self.onlyLetters = "DIECINUEVE"}
            if idiomaGSpeech == "Ingles" { self.onlyLetters = "NINETEEN" }
            if idiomaGSpeech == "Italiano" { self.onlyLetters = "DICIANOVE"}
            if idiomaGSpeech == "Frances" { self.onlyLetters = "DIX-NEUF" }
            if idiomaGSpeech == "Aleman" { self.onlyLetters = "NEUNZEHN"}
            if idiomaGSpeech == "Protugues" { self.onlyLetters = "DEZENOVE" }
        case "20" :
            
            if idiomaGSpeech == "Español" { self.onlyLetters = "VEINTE"}
            if idiomaGSpeech == "Ingles" { self.onlyLetters = "TWENTY" }
            if idiomaGSpeech == "Italiano" { self.onlyLetters = "VENTI"}
            if idiomaGSpeech == "Frances" { self.onlyLetters = "VINGT" }
            if idiomaGSpeech == "Aleman" { self.onlyLetters = "ZWANZIG"}
            if idiomaGSpeech == "Protugues" { self.onlyLetters = "VINTE" }
            
        default:
            self.onlyLetters = self.words!
        }
  }

}
