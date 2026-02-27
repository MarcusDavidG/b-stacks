(define-public (tx-20687 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
