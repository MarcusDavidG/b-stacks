(define-public (submit-multi-sig-price (asset (string-ascii 10)) (price uint) (sig (buff 65)))
  (ok (collect-oracle-sig asset price sig)))