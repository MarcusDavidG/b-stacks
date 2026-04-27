(define-public (submit-signature (sig (buff 65)) (tx-hash (buff 32)))
  (ok (collect-signature sig tx-hash)))