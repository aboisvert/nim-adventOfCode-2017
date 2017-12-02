
type Pair*[T] = tuple[left, right: T]

proc matchingPair*[T](p: Pair[T]): bool = 
  p.left == p.right
