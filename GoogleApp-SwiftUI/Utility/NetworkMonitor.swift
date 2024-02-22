//
//  NetworkMonitor.swift
//  GoogleApp-SwiftUI
//
//  Created by Singh, Ankit on 2024-02-07
//
        

import Network
import SwiftUI

enum NetworkStatus: String {
    case connected
    case disconnected
}

class Monitor: ObservableObject {
    private let monitor = NWPathMonitor()
    private let queue = DispatchQueue(label: "Monitor")
    
    @Published var status: NetworkStatus = .connected
    
    init() {
        monitor.pathUpdateHandler = { [weak self] path in
            guard let self = self else { return }
            DispatchQueue.main.async {
                if path.status == .satisfied {
                    self.status = .connected  
                } else {
                    self.status = .disconnected
                }
            }
        }
        monitor.start(queue: queue)
    }
}
