(define-public (deposit-asset (token principal) (amount uint))
  (ok (add-to-vault token amount)))