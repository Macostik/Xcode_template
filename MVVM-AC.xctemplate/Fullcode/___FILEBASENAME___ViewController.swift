//  ___FILEHEADER___

import UIKit
import RxSwift
import RxCocoa

class ___FILEBASENAMEASIDENTIFIER___Controller: BaseViewController, StoryboardBased, ViewModelBased {
    
    typealias ViewModel = ___VARIABLE_productName:identifier___ViewModel
    var viewModel: ViewModel?
    
    override func setupUI() {
        
    }
    
    override func setupBindings() {
        viewModel.indicatorViewAnimating.drive(<#drive#>)),
        viewModel.elements.drive(<#drive#>)),
        viewModel.loadError.drive(onNext: {<#drive#>}),
    }
}
