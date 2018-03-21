//  ___FILEHEADER___

import UIKit
import RxSwift
import RxCocoa

class ___FILEBASENAMEASIDENTIFIER___: BaseViewController, StoryboardBased, ViewModelBased {
    
    typealias ViewModel = ___VARIABLE_productName:identifier___ViewModel
    var viewModel: ViewModel?
    private let disposeBag = DisposeBag()

    deinit {

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupBindings()
    }
    
    private func setupUI() {
        
    }
    private func setupBindings() {
        
    }
}
