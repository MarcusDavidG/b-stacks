;; Rewards Calculator
(define-constant BLOCKS-PER-YEAR u52560)
(define-read-only (calculate-rewards (amount uint) (apy uint) (blocks uint))
    (ok (/ (* (* amount apy) blocks) (* u100 BLOCKS-PER-YEAR))))
