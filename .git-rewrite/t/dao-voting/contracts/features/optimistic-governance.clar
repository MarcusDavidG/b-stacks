(define-public (submit-optimistic-proposal (data (string-utf8 500)))
  (ok (create-optimistic-proposal data)))