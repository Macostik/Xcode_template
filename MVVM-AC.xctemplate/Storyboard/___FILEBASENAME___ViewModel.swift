//  ___FILEHEADER___

import Foundation
import RxSwift
import RxCocoa
import Action

final class ___FILEBASENAMEASIDENTIFIER___<Element> {
    
    public let dependencies: Dependency
    public let elements: Driver<[Element]>
    public let loadError: Driver<Error>
    public let indicatorViewAnimating: Driver<Bool>
    
    private let loadAction: Action<<#Void#>, <#Void#><Element>>
    private let disposeBag = DisposeBag()
    
    init(dependencies: Dependency) {
        self.dependencies = dependencies
        
        loadAction = Action { page in
            //            var request = baseRequest
            //            request.page = page
            //
            //            return session.rx
            //                .response(request)
            //                .map(AnyPaginationResponse.init)
        }
        
        indicatorViewAnimating = loadAction.executing.asDriver(onErrorJustReturn: false)
        elements = loadAction.elements.asDriver(onErrorDriveWith: .empty())
            .scan([]) { $1.page == 1 ? $1.elements : $0 + $1.elements }
            .startWith([])
        
        loadError = loadAction.errors.asDriver(onErrorDriveWith: .empty())
            .flatMap { error -> Driver<Error> in
                switch error {
                case .underlyingError(let error):
                    return Driver.just(error)
                case .notEnabled:
                    return Driver.empty()
                }
        }
    }
    
    public var <#some#>Observer: Observable<<#Void#>>? {
        willSet {
            newValue?.asObservable()
                .map { _ in 1 }
                .subscribe(loadAction.inputs)
                .disposed(by: disposeBag)
        }
}
