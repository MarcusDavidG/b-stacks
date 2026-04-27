;; Proposal validation
(define-read-only (is-valid-proposal (quorum uint))
  (>= quorum u1000))
