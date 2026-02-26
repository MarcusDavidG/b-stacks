;; Upgrade Pattern
(define-data-var implementation principal tx-sender)
(define-public (upgrade (new-implementation principal))
    (begin (var-set implementation new-implementation) (ok true)))
