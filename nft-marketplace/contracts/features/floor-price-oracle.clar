(define-public (update-floor-price (collection uint) (price uint))
  (ok (set-floor collection price)))