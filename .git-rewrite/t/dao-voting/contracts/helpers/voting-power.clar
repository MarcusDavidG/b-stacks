;; Voting Power Calculator
(define-map voting-power principal uint)
(define-public (update-voting-power (user principal) (power uint))
    (ok (map-set voting-power user power)))
