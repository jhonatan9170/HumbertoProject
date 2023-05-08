//
//  NetworkingProvider.swift
//  AlquilaYa
//
//  Created by Tismart on 7/05/23.
//

import Foundation
import Alamofire
class NetworkingProvider{
    
    static let shared = NetworkingProvider()
    
    private let baseurl = "https://jsonplaceholder.typicode.com/users/"
    private let kStatusOk = 200...299
    
    func getContacto(id:Int, success: @escaping(_ contacto:Contacto)->(),failure: @escaping(_ error:Error?)->()){
        
     let url = "\(baseurl)\(id)"
     AF.request(url, method: .get).validate(statusCode: kStatusOk).responseDecodable (of: ContactoResponse.self){ response in
         
         if let contacto = response.value?.address {
                success(contacto)
            }else{
               
                failure(response.error)
            }
            
        }
        
    }
}
