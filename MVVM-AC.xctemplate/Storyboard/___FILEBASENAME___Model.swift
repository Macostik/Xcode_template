//  ___FILEHEADER___

import Foundation

struct ___FILEBASENAMEASIDENTIFIER___ {
    var <#property#>: <#PropertyType#>
}

extension ___FILEBASENAMEASIDENTIFIER___ {
    init?(from json: [String: Any]) {
        guard
            let <#property#> = json["<#key#>"] as? <#Type#>
            else { return nil }
        
        self.init(<#property#>: <#property#>)
    }
}
