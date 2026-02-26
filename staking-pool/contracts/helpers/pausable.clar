;; Pausable Contract
(define-data-var paused bool false)
(define-data-var pauser principal tx-sender)

(define-public (pause)
    (begin
        (asserts! (is-eq tx-sender (var-get pauser)) (err u400))
        (var-set paused true)
        (ok true)))

(define-read-only (is-paused) (var-get paused))
