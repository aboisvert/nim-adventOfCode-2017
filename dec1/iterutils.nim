
proc filter*[T](iter: iterator(): T, pred: proc (x: T): bool): iterator(): T =
  let i = iter
  return iterator (): T =
    while true:
      let x = i()
      if finished(i): break
      if pred(x): 
        yield x


proc map*[T, U](iter: iterator(): T, p: proc (x: T): U): iterator(): U =
  let i = iter
  return iterator (): U =
    while true:
      let x = i()
      if finished(i): break
      yield p(x)

proc sum*(iter: iterator(): int): int = 
  for x in iter(): 
    inc(result, x)
