;; Proposal Management
(define-map proposals uint {proposer: principal, votes-for: uint, votes-against: uint})
(define-data-var proposal-counter uint u0)
(define-public (create-proposal)
    (let ((id (var-get proposal-counter)))
        (map-set proposals id {proposer: tx-sender, votes-for: u0, votes-against: u0})
        (var-set proposal-counter (+ id u1))
        (ok id)))
