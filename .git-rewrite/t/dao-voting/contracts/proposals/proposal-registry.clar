(define-constant ERR-NOT-FOUND (err u404))
(define-constant ERR-ALREADY-EXISTS (err u409))
(define-constant MIN-PROPOSAL-THRESHOLD u100000)
(define-map proposals uint
  { title: (string-utf8 100), description: (string-utf8 500),
    proposer: principal, start-block: uint, end-block: uint,
    yes-votes: uint, no-votes: uint, executed: bool })
(define-data-var proposal-count uint u0)
(define-public (create-proposal (title (string-utf8 100)) (description (string-utf8 500)) (duration uint))
  (let ((id (var-get proposal-count))
        (balance (contract-call? .governance-token get-balance tx-sender)))
    (asserts! (>= balance MIN-PROPOSAL-THRESHOLD) (err u403))
    (map-set proposals id
      { title: title, description: description, proposer: tx-sender,
        start-block: block-height, end-block: (+ block-height duration),
        yes-votes: u0, no-votes: u0, executed: false })
    (var-set proposal-count (+ id u1))
    (ok id)))
(define-read-only (get-proposal (id uint))
  (map-get? proposals id))
(define-read-only (get-proposal-count)
  (var-get proposal-count))
