//
//  ViewController.swift
//  MagicSDK-Demo
//
//  Created by KISHAN_RAJA on 08/06/21.
//

import UIKit
import MagicSDK
import MagicSDK_Web3

class ViewController: UIViewController {
    
    let magic = Magic.shared
    
    let web3 = Web3(provider: Magic.shared.rpcProvider)
    
    var account: EthereumAddress?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func readContract(_ sender: UIButton) {
        let contract = self.getContract()
        
        /// contract call
        contract?["getArts"]?().call(completion: { (response, error) in
            if let response = response {
                var message: String = ""
                if let data = response[""] as? String {
                    message = data
                } else if let data = response[""] as? BigUInt {
                    message = data.description
                }
                print(message)
            } else {
                print(error?.localizedDescription ?? "")
            }
        })
    }
    
    private func getContract() -> DynamicContract? {
        do {
            /// contract instance
            let contractABI = """
                      [
                        {
                          "inputs": [
                            {
                              "internalType": "uint256",
                              "name": "",
                              "type": "uint256"
                            }
                          ],
                          "name": "arts",
                          "outputs": [
                            {
                              "internalType": "string",
                              "name": "",
                              "type": "string"
                            }
                          ],
                          "stateMutability": "view",
                          "type": "function"
                        },
                        {
                          "inputs": [
                            
                          ],
                          "name": "getArts",
                          "outputs": [
                            {
                              "internalType": "string[]",
                              "name": "",
                              "type": "string[]"
                            }
                          ],
                          "stateMutability": "view",
                          "type": "function"
                        },
                        {
                          "inputs": [
                            {
                              "internalType": "string",
                              "name": "_art",
                              "type": "string"
                            }
                          ],
                          "name": "storeArt",
                          "outputs": [
                            
                          ],
                          "stateMutability": "nonpayable",
                          "type": "function"
                        }
                      ]
            """.data(using: .utf8)!
            
            let contract = try web3.eth.Contract(json: contractABI, abiKey: nil, address: EthereumAddress(ethereumValue: "0x86F000449934Ac9Bf0c137f5A7c14F4950344Cb2"))
            
            return contract
        } catch {
            print("Failed ----------------------------------")
            print(error.localizedDescription)
        }
        return nil
    }
}
