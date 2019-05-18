module SeqN where

seqN_internal n [] = []
seqN_internal n ((c, pat):xs) = (n, n + c, pat) : seqN_internal (n + c) xs
seqN = seqN_internal 0
