//  ___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___Controller: BaseViewController, StoryboardBased, ViewModelBased {
    
    typealias ViewModel = ___VARIABLE_productName:identifier___ViewModel
    var viewModel: ViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindingViewModel()
    }
    
    private func bindingViewModel() {
        
    }
}
