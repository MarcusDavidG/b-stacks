(define-public (mint-liquid-token (amount uint))
  (ok (mint-lst amount tx-sender)))
