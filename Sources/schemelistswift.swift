struct schemelistswift {

    //schme style lists with functional programming
    
    enum lst<T> {
        indirect case a(T, lst)
        case end
    }
    
    //gets the first item of the scheme list
    static func car<T>(input:lst<T>) -> T? {
        switch input {
        case .a(let item, _):
            return item
        case .end:
            return nil
        }
    }
    
    //gets the rest of the scheme list
    static func cdr<T>(input:lst<T>) -> lst<T>? {
        switch input {
        case .a(_, let next):
            return next
        case .end:
            return nil
        }
    }
    
    //make the beginning of a scheme list
    static func makeList<T>(elem:T) -> lst<T> {
        return lst<T>.a(elem, lst<T>.end)
    }
    
    //push an item to the front of the scheme list
    static func pushItem<T>(list:lst<T>, elem:T) -> lst<T> {
        return lst<T>.a(elem, list)
    }
    
    //recursive function to find the length of a scheme list
    static func listLength<T>(list:lst<T>) -> Int {
        switch list {
        case .a(_, let next):
            return 1 + listLength(list: next)
        case .end:
            return 0
        }
    }
    
    //turns a swift array into a scheme list
    static func arrayToList<T>(arr:[T]) -> lst<T> {
        let newlst = makeList(elem: arr.first!)
        var pnt = newlst
        for i in 0..<arr.dropFirst().count {
            pnt = lst<T>.a(arr.dropFirst()[i], pnt)
            switch pnt {
            case .a(_, let next):
                pnt = next
            case .end:
                break
            }
        }
        return newlst
    }
    
    //retrieves some item at an index in the scheme list
    static func itemAt<T>(list:lst<T>, index:Int) -> T? {
        if index == 0 {
            switch list {
            case .a(let item, _):
                return item
            case .end:
                return nil
            }
        }
        else {
            return itemAt(list: list, index:index-1)
        }
    }
}
