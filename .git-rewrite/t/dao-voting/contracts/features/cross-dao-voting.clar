(define-public (vote-across-dao (dao principal) (proposal uint) (support bool))
  (ok (cast-cross-dao-vote dao proposal support)))