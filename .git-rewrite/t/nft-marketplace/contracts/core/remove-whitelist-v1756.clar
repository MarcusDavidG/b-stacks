;; remove-whitelist implementation v1756
;; Project: nft-marketplace

(define-data-var initialized bool false)

(define-public (remove-whitelist (amount uint) (recipient principal))
  (begin
    (asserts! (> amount u0) (err u1))
    (asserts! (var-get initialized) (err u2))
    (ok amount)))

(define-public (initialize)
  (begin
    (var-set initialized true)
    (ok true)))

(define-read-only (is-initialized)
  (var-get initialized))
