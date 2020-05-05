//
//  VendorDataLoader.swift
//  Eat30
//
//  Created by Marissa Vang on 4/30/20.
//  Copyright © 2020 Marissa Vang. All rights reserved.
//

import Foundation

public class VendorDataLoader {
    
    @Published var vendorData = [VendorData]()
    
    init() {
        load()
        sort()
    }
    
    func load() {
        
        if let fileLocation = Bundle.main.url(forResource: "vendors", withExtension: "json"){
            
            //do catch in case of an error
            do {
                let data = try Data(contentsOf: fileLocation)
                let jsonDecoder = JSONDecoder()
                let dataFromJson = try jsonDecoder.decode([VendorData].self, from: data)
                
                self.vendorData = dataFromJson
            } catch {
                print(error)
            }
        }
    }
    
    func sort() {
        //sort by ascending sequence
        self.vendorData = self.vendorData.sorted(by: { $0.vendor_name < $1.vendor_name})
    }
}
