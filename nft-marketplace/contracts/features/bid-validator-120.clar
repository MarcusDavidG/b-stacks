(define-read-only (validate-bid-120 (amount uint)) (ok (>= amount u12000)))
