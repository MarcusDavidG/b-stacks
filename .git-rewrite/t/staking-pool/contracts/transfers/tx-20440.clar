(define-public (tx-20440 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
