(define-public (insure-oracle (oracle principal) (coverage uint))
  (ok (create-oracle-insurance oracle coverage)))