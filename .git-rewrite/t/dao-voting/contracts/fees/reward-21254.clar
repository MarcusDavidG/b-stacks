(define-public (reward-21254 (recipient principal))
  (ok (as-contract (stx-transfer? u21254 tx-sender recipient))))
