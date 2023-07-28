{-
4) (2,5) Implemente uma função split em Haskell. Ela deve receber uma string e um
caractere e retornar uma lista de strings com as partes da string original.
Ex: meuSplit &quot;UNIVERSIDADE DE PERNAMBUCO&quot; &#39; &#39; -&gt; [&quot;UNIVERSIDADE&quot;, &quot;DE&quot;,
&quot;PERNAMBUCO&quot;]
-}

meuSplit [] _ = []
meuSplit xs char = takeWhile (/=char) xs : meuSplit pedaco char
    where
        pedaco 
            | dropWhile (/=char) xs /= [] = tail (dropWhile (/=char) xs)
            | otherwise = dropWhile (/=char) xs
