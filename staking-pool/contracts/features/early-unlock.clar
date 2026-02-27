(define-public (early-unlock (penalty-rate uint))
  (ok (apply-penalty penalty-rate)))
