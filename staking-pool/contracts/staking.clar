;; Enhanced Staking Pool Contract v2.0
;; Supports multi-token staking, flexible lock periods, and reward distribution

;; Constants
(define-constant CONTRACT-OWNER tx-sender)
(define-constant ERR-NOT-AUTHORIZED (err u100))
(define-constant ERR-INSUFFICIENT-BALANCE (err u101))
(define-constant ERR-INVALID-AMOUNT (err u102))
(define-constant ERR-POOL-PAUSED (err u103))
(define-constant ERR-MINIMUM-STAKE (err u104))

;; Data Variables
(define-data-var total-staked uint u0)
(define-data-var pool-paused bool false)
(define-data-var minimum-stake uint u1000000) ;; 1 STX minimum
(define-data-var reward-rate uint u500) ;; 5% annual rate (basis points)
(define-data-var pool-capacity uint u100000000000) ;; 100k STX max

;; Data Maps
(define-map stakes principal {amount: uint, lock-period: uint, timestamp: uint, rewards-earned: uint})
(define-map pool-stats uint {total-stakers: uint, total-rewards-paid: uint, pool-performance: uint})