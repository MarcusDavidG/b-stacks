(define-public (reward-21023 (recipient principal))
  (ok (as-contract (stx-transfer? u21023 tx-sender recipient))))
