(define-public (reward-21278 (recipient principal))
  (ok (as-contract (stx-transfer? u21278 tx-sender recipient))))
