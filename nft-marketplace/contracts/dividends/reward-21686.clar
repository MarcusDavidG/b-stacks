(define-public (reward-21686 (recipient principal))
  (ok (as-contract (stx-transfer? u21686 tx-sender recipient))))
