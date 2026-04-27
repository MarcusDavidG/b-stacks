(define-public (reward-21335 (recipient principal))
  (ok (as-contract (stx-transfer? u21335 tx-sender recipient))))
