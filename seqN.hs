module SeqN where

seqN_internal n [] = []
seqN_internal n ((c, pat):xs) = (n, n + c, pat) : seqN_internal (n + c) xs
seqN l = seqP $ seqN_internal 0 l
