(define-public (tx-20711 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
