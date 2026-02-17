;; Advanced DAO Governance v2.0
;; Supports quadratic voting, delegation, and multi-stage proposals

;; Constants
(define-constant CONTRACT-OWNER tx-sender)
(define-constant ERR-NOT-AUTHORIZED (err u100))
(define-constant ERR-PROPOSAL-NOT-FOUND (err u101))
(define-constant ERR-VOTING-ENDED (err u102))
(define-constant ERR-ALREADY-VOTED (err u103))
(define-constant ERR-INSUFFICIENT-TOKENS (err u104))

;; Governance Parameters
(define-data-var proposal-counter uint u0)
(define-data-var voting-period uint u144) ;; ~24 hours in blocks
(define-data-var quorum-threshold uint u1000) ;; 10% of total supply
(define-data-var proposal-threshold uint u100) ;; Min tokens to propose

;; Data Maps
(define-map proposals uint {
    proposer: principal,
    title: (string-ascii 100),
    description: (string-ascii 500),
    voting-starts: uint,
    voting-ends: uint,
    for-votes: uint,
    against-votes: uint,
    abstain-votes: uint,
    executed: bool,
    proposal-type: (string-ascii 20)
})

(define-map votes {proposal-id: uint, voter: principal} {
    vote-power: uint,
    vote-choice: (string-ascii 10),
    delegated-from: (optional principal)
})

(define-map delegations principal principal)