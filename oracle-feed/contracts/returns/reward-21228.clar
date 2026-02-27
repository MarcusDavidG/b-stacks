(define-public (reward-21228 (recipient principal))
  (ok (as-contract (stx-transfer? u21228 tx-sender recipient))))
