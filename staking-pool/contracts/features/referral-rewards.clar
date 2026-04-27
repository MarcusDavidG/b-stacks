(define-public (claim-referral-reward (referrer principal))
  (ok (distribute-referral referrer)))