(define-public (tx-20468 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
