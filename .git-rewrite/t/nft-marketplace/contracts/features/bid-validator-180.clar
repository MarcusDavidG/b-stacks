(define-read-only (validate-bid-180 (amount uint)) (ok (>= amount u18000)))
