;; Staking Pool Reward Calculator
;; Advanced reward calculation with compound interest and bonuses

;; Constants
(define-constant SECONDS-PER-YEAR u31536000)
(define-constant BASIS-POINTS u10000)

;; Calculate compound rewards
(define-read-only (calculate-compound-reward (principal-amount uint) (rate uint) (time-staked uint))
    (let ((annual-rate (/ rate BASIS-POINTS))
          (time-factor (/ time-staked SECONDS-PER-YEAR)))
        (* principal-amount (pow (+ u1 annual-rate) time-factor))))

;; Calculate early withdrawal penalty
(define-read-only (calculate-penalty (amount uint) (lock-period uint) (time-elapsed uint))
    (if (>= time-elapsed lock-period)
        u0
        (let ((remaining-time (- lock-period time-elapsed))
              (penalty-rate (/ remaining-time lock-period)))
            (* amount penalty-rate))))

;; Calculate loyalty bonus
(define-read-only (calculate-loyalty-bonus (base-reward uint) (stake-duration uint))
    (let ((bonus-multiplier (if (>= stake-duration u31536000) ;; 1 year
                               u150 ;; 1.5x bonus
                               (if (>= stake-duration u15768000) ;; 6 months
                                   u125 ;; 1.25x bonus
                                   u100)))) ;; no bonus
        (/ (* base-reward bonus-multiplier) u100)))
