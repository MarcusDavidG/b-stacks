(define-public (tx-20618 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
