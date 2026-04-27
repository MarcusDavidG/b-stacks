(define-public (lock-stake (amount uint) (tier uint))
  (ok (apply-tier-reward amount tier)))