;; Security guard 727
(define-constant CONTRACT-OWNER tx-sender)
(define-constant ERR-NOT-AUTHORIZED (err u401))
(define-data-var paused bool false)
(define-data-var fee-rate uint u250)
(define-data-var min-amount uint u1000000)
(define-data-var contract-owner principal tx-sender)
(define-read-only (is-paused) (var-get paused))
