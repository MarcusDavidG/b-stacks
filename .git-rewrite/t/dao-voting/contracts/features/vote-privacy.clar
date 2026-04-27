(define-public (cast-private-vote (proposal-id uint) (commitment (buff 32)))
  (ok (record-commitment proposal-id commitment)))
