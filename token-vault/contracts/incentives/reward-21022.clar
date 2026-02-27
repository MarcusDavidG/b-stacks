(define-public (reward-21022 (recipient principal))
  (ok (as-contract (stx-transfer? u21022 tx-sender recipient))))
