;; Math Utilities for Staking Pool
;; Provides safe mathematical operations with overflow protection

(define-constant ERR-OVERFLOW (err u100))
(define-constant ERR-DIVISION-BY-ZERO (err u101))
(define-constant PRECISION u1000000)

;; Safe multiplication with overflow check
(define-read-only (safe-mul (a uint) (b uint))
    (let ((result (* a b)))
        (if (and (> a u0) (> (/ result a) b))
            ERR-OVERFLOW
            (ok result))))

;; Safe division with zero check
(define-read-only (safe-div (a uint) (b uint))
    (if (is-eq b u0)
        ERR-DIVISION-BY-ZERO
        (ok (/ a b))))

;; Calculate percentage with precision
(define-read-only (percentage (amount uint) (percent uint))
    (ok (/ (* amount percent) u100)))

;; Calculate compound interest
(define-read-only (compound-interest (principal uint) (rate uint) (periods uint))
    (ok (/ (* principal (pow (+ PRECISION rate) periods)) (pow PRECISION periods))))
