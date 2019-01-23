//  ___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: BaseViewController, StoryboardBased, ViewModelBased {
    
    typealias ViewModel = ___VARIABLE_productName:identifier___ViewModel
    var viewModel: ViewModel?
    
    override func setupUI() {
       
    }
    
    override func setupBindings() {
        viewModel.indicatorViewAnimating.drive(<#drive#>),
        viewModel.elements.drive(<#drive#>),
        viewModel.loadError.drive(onNext: {<#drive#>}),
    }
}
