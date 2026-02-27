(define-public (reward-21575 (recipient principal))
  (ok (as-contract (stx-transfer? u21575 tx-sender recipient))))
