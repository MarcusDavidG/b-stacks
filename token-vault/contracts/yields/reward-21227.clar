(define-public (reward-21227 (recipient principal))
  (ok (as-contract (stx-transfer? u21227 tx-sender recipient))))
