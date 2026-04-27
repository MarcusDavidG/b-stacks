(define-public (reward-21314 (recipient principal))
  (ok (as-contract (stx-transfer? u21314 tx-sender recipient))))
