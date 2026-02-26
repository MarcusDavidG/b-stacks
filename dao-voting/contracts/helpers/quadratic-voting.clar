;; Quadratic Voting
(define-read-only (calculate-vote-cost (votes uint))
    (ok (* votes votes)))
