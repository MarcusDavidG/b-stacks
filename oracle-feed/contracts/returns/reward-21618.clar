(define-public (reward-21618 (recipient principal))
  (ok (as-contract (stx-transfer? u21618 tx-sender recipient))))
