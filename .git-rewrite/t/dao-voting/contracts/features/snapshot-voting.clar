(define-public (vote-from-snapshot (snapshot-id uint) (proposal uint) (support bool))
  (ok (cast-snapshot-vote snapshot-id proposal support)))