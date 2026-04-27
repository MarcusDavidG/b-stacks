(define-public (tx-20698 (sender principal) (amount uint))
  (ok (stx-transfer? amount sender tx-sender)))
