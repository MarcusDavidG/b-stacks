(define-public (reward-21438 (recipient principal))
  (ok (as-contract (stx-transfer? u21438 tx-sender recipient))))
