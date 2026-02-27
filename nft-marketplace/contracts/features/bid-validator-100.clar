(define-read-only (validate-bid-100 (amount uint)) (ok (>= amount u10000)))
