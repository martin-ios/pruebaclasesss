//
//  File.swift
//  pruebaclasess
//
//  Created by Martin alonso Gamboa on 01.03.2021.
//

import Foundation

extension SpeechRecognizer {
    
    func firstFilter() {
       
       
        switch self.words {
        case "10" :
            
            if idiomaGSpeech == "Español" { self.onlyLeters = "DIEZ"}
            if idiomaGSpeech == "Ingles" { self.onlyLeters = "TEN" }
            if idiomaGSpeech == "Italiano" { self.onlyLeters = "DIECI"}
            if idiomaGSpeech == "Frances" { self.onlyLeters = "DIX" }
            if idiomaGSpeech == "Aleman" { self.onlyLeters = "ZEHN"}
            if idiomaGSpeech == "Protugues" { self.onlyLeters = "DEZ" }
            
        case "11" :
            if idiomaGSpeech == "Español" { self.onlyLeters = "ONCE"}
            if idiomaGSpeech == "Ingles" { self.onlyLeters = "ELEVEN" }
            if idiomaGSpeech == "Italiano" { self.words = "UNDICI"}
            if idiomaGSpeech == "Frances" { self.onlyLeters = "ONZE" }
            if idiomaGSpeech == "Aleman" { self.onlyLeters = "ELF"}
            if idiomaGSpeech == "Protugues" { self.onlyLeters = "ONZE " }
            
            
        case "12" :
            if idiomaGSpeech == "Español" { self.onlyLeters = "DOCE"}
            if idiomaGSpeech == "Ingles" { self.onlyLeters = "TWELVE" }
            if idiomaGSpeech == "Italiano" { self.words = "DODICI"}
            if idiomaGSpeech == "Frances" { self.onlyLeters = "DOUZE" }
            if idiomaGSpeech == "Aleman" { self.onlyLeters = "ZWÖLF"}
            if idiomaGSpeech == "Protugues" { self.onlyLeters = "DOZE" }
            
        case "13" :
            if idiomaGSpeech == "Español" { self.onlyLeters = "TRECE"}
            if idiomaGSpeech == "Ingles" { self.onlyLeters = "THIRTEEN" }
            if idiomaGSpeech == "Italiano" { self.words = "TREDICI"}
            if idiomaGSpeech == "Frances" { self.onlyLeters = "TREIZE" }
            if idiomaGSpeech == "Aleman" { self.onlyLeters = "DREIZHEN"}
            if idiomaGSpeech == "Protugues" { self.onlyLeters = "TREZE" }
        case "14" :
            if idiomaGSpeech == "Español" { self.onlyLeters = "CATORCE"}
            if idiomaGSpeech == "Ingles" { self.onlyLeters = "FOURTEEN" }
            if idiomaGSpeech == "Italiano" { self.words = "QUATORDICI"}
            if idiomaGSpeech == "Frances" { self.onlyLeters = "QUATORZE" }
            if idiomaGSpeech == "Aleman" { self.onlyLeters = "VIERZEHN"}
            if idiomaGSpeech == "Protugues" { self.onlyLeters = "QUATORZE" }
        case "15" :
            if idiomaGSpeech == "Español" { self.onlyLeters = "QUINCE"}
            if idiomaGSpeech == "Ingles" { self.onlyLeters = "FIFTEEN" }
            if idiomaGSpeech == "Italiano" { self.onlyLeters = "QUINDICI"}
            if idiomaGSpeech == "Frances" { self.onlyLeters = "QUINZE" }
            if idiomaGSpeech == "Aleman" { self.onlyLeters = "FÜNFZEHN"}
            if idiomaGSpeech == "Protugues" { self.onlyLeters = "QUINZE" }
        case "16" :
            if idiomaGSpeech == "Español" { self.onlyLeters = "DIECISEIS"}
            if idiomaGSpeech == "Ingles" { self.onlyLeters = "SIXTEEN" }
            if idiomaGSpeech == "Italiano" { self.onlyLeters = "SEDICI"}
            if idiomaGSpeech == "Frances" { self.onlyLeters = "SEIZE" }
            if idiomaGSpeech == "Aleman" { self.onlyLeters = "SECHZEHN"}
            if idiomaGSpeech == "Protugues" { self.onlyLeters = "DEZESSEIS" }
        case "17" :
            if idiomaGSpeech == "Español" { self.onlyLeters = "DIECISIETE"}
            if idiomaGSpeech == "Ingles" { self.onlyLeters = "SEVENTEEN" }
            if idiomaGSpeech == "Italiano" { self.onlyLeters = "DICIASETTE"}
            if idiomaGSpeech == "Frances" { self.onlyLeters = "DIX-SEPT" }
            if idiomaGSpeech == "Aleman" { self.onlyLeters = "SIEBZEHN"}
            if idiomaGSpeech == "Protugues" { self.onlyLeters = "DEZESSETE" }
        case "18" :
            if idiomaGSpeech == "Español" { self.onlyLeters = "DIECIOCHO"}
            if idiomaGSpeech == "Ingles" { self.onlyLeters = "EIGHTEEN" }
            if idiomaGSpeech == "Italiano" { self.onlyLeters = "DICIAOTTO"}
            if idiomaGSpeech == "Frances" { self.onlyLeters = "DIX-HUIT" }
            if idiomaGSpeech == "Aleman" { self.onlyLeters = "ACHTZEHN"}
            if idiomaGSpeech == "Protugues" { self.onlyLeters = "DEZOITO" }
        case "19" :
            if idiomaGSpeech == "Español" { self.onlyLeters = "DIECINUEVE"}
            if idiomaGSpeech == "Ingles" { self.onlyLeters = "NINETEEN" }
            if idiomaGSpeech == "Italiano" { self.onlyLeters = "DICIANOVE"}
            if idiomaGSpeech == "Frances" { self.onlyLeters = "DIX-NEUF" }
            if idiomaGSpeech == "Aleman" { self.onlyLeters = "NEUNZEHN"}
            if idiomaGSpeech == "Protugues" { self.onlyLeters = "DEZENOVE" }
        case "20" :
            
            if idiomaGSpeech == "Español" { self.onlyLeters = "VEINTE"}
            if idiomaGSpeech == "Ingles" { self.onlyLeters = "TWENTY" }
            if idiomaGSpeech == "Italiano" { self.onlyLeters = "VENTI"}
            if idiomaGSpeech == "Frances" { self.onlyLeters = "VINGT" }
            if idiomaGSpeech == "Aleman" { self.onlyLeters = "ZWANZIG"}
            if idiomaGSpeech == "Protugues" { self.onlyLeters = "VINTE" }
            
        default:
            self.onlyLeters = self.words
        }
  }

}
