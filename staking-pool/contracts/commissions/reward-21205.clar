(define-public (reward-21205 (recipient principal))
  (ok (as-contract (stx-transfer? u21205 tx-sender recipient))))
