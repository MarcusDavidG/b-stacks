(define-read-only (validate-bid-200 (amount uint)) (ok (>= amount u20000)))
