;; Advanced Voting Mechanisms for DAO

(define-constant ERR-VOTING-ENDED (err u601))
(define-constant ERR-ALREADY-VOTED (err u602))

(define-map quadratic-votes { proposal-id: uint, voter: principal } uint)
(define-map vote-weights principal uint)

(define-public (quadratic-vote (proposal-id uint) (vote-power uint))
  (let ((existing-votes (default-to u0 (map-get? quadratic-votes { proposal-id: proposal-id, voter: tx-sender })))
        (total-cost (* vote-power vote-power)))
    (asserts! (is-none (map-get? quadratic-votes { proposal-id: proposal-id, voter: tx-sender })) ERR-ALREADY-VOTED)
    (map-set quadratic-votes { proposal-id: proposal-id, voter: tx-sender } vote-power)
    (ok vote-power)))

(define-public (delegate-vote (delegate principal) (weight uint))
  (begin
    (map-set vote-weights delegate (+ (default-to u0 (map-get? vote-weights delegate)) weight))
    (ok true)))

(define-read-only (get-vote-weight (voter principal))
  (default-to u1 (map-get? vote-weights voter)))