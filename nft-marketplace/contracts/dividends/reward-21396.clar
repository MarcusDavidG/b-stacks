(define-public (reward-21396 (recipient principal))
  (ok (as-contract (stx-transfer? u21396 tx-sender recipient))))
