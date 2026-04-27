(define-public (claim-oracle-reward (oracle principal))
  (ok (distribute-oracle-reward oracle)))