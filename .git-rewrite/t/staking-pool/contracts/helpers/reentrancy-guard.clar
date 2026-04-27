;; Reentrancy Guard
(define-constant ERR-REENTRANT (err u300))
(define-data-var locked bool false)

(define-public (non-reentrant-call)
    (begin
        (asserts! (not (var-get locked)) ERR-REENTRANT)
        (var-set locked true)
        (ok true)))
