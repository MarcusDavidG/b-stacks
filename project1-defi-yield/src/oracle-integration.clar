;; Price Oracle Integration

(define-constant ERR-ORACLE-UNAVAILABLE (err u301))
(define-data-var oracle-contract principal 'SP000000000000000000002Q6VF78)

(define-public (get-stx-price)
  (match (contract-call? .price-oracle get-price "STX")
    success (ok success)
    error ERR-ORACLE-UNAVAILABLE))

(define-public (update-oracle (new-oracle principal))
  (begin
    (var-set oracle-contract new-oracle)
    (ok true)))