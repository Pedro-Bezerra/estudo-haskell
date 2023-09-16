import System.IO

obterLinha :: IO String
obterLinha = do x <- obterChar
                if x == '\n' then
                    do putChar x
                       return []
                else
                    if x == '\DEL' then
                        do return ['\DEL']
                    else 
                        do putChar x
                           xs <- obterLinha
                           if xs == ['\DEL'] then
                              do putChar '\b' 
                                 putChar ' '
                                 putChar '\b'
                                 obterLinha
                           else
                              do return (x:xs)

obterChar:: IO Char
obterChar = do hSetEcho stdin False
               x <- getChar
               hSetEcho stdin True
               return x