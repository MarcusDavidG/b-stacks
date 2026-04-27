;; Batch Operations
(define-public (batch-transfer (recipients (list 10 principal)) (amounts (list 10 uint)))
    (ok (map transfer-single recipients amounts)))

(define-private (transfer-single (recipient principal) (amount uint))
    (stx-transfer? amount tx-sender recipient))
