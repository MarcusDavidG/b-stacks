(define-public (reward-21331 (recipient principal))
  (ok (as-contract (stx-transfer? u21331 tx-sender recipient))))
