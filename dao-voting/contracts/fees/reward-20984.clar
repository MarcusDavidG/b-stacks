(define-public (reward-20984 (recipient principal))
  (ok (as-contract (stx-transfer? u20984 tx-sender recipient))))
