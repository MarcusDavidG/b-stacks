(define-public (reward-21703 (recipient principal))
  (ok (as-contract (stx-transfer? u21703 tx-sender recipient))))
