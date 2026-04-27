(define-public (create-custom-feed (name (string-ascii 50)))
  (ok (register-feed name tx-sender)))
