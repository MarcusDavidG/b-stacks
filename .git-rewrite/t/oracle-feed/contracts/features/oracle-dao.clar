(define-public (vote-on-oracle (oracle principal) (approve bool))
  (ok (cast-oracle-vote oracle approve)))