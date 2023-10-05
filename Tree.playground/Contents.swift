class Queue<T>{
    
    private var queue: [T] = []
    
    public var count: Int{
        return queue.count
    }
    public var isEmpty: Bool{
        return queue.isEmpty
    }
    public func enqueue(_ element: T){
        queue.append(element)
    }
    public func dequeue() -> T?{
        return queue.isEmpty ? nil : queue.removeLast()
    }
}
class Node{
    var num: Int
    var left: Node?
    var right: Node?
    
    init(num: Int){
        self.num = num
    }
}

func preorder(node: Node?){
    guard let node = node else {return}
    print(node.num)
    preorder(node: node.left)
    preorder(node: node.right)
}

func add(newNode: Node, to node: Node){
    var queue = Queue<Int>()
}


