(define-public (tx-20866 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
