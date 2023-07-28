data NestedList a = Elem a | List [NestedList a]

flatten (List []) = []
flatten (Elem a) = [a]
flatten (List (a:as)) = flatten a ++ flatten (List as)
