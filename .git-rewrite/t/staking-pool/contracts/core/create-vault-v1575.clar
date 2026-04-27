;; create-vault implementation v1575
;; Project: staking-pool

(define-data-var initialized bool false)

(define-public (create-vault (amount uint) (recipient principal))
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
