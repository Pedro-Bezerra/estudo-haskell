produto [] = 0
produto [a] = a
produto l = head l *  produto (tail l)