(define-public (reward-21105 (recipient principal))
  (ok (as-contract (stx-transfer? u21105 tx-sender recipient))))
