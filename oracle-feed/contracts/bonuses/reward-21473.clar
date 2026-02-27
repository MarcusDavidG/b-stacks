(define-public (reward-21473 (recipient principal))
  (ok (as-contract (stx-transfer? u21473 tx-sender recipient))))
