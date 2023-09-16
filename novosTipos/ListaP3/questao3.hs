data Arvore a = Folha a | No (Arvore a) (Arvore a) deriving Show

qtdFolha (Folha a) = 1;
qtdFolha (No esq dir) = qtdFolha esq + qtdFolha dir

balanceada (Folha a) = True
balanceada (No esq dir) = qtdFolha esq == qtdFolha dir || qtdFolha esq + 1 == qtdFolha dir || qtdFolha esq == qtdFolha dir +1