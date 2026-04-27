(define-public (reward-21704 (recipient principal))
  (ok (as-contract (stx-transfer? u21704 tx-sender recipient))))
