(define-public (create-sub-dao (name (string-ascii 50)) (parent uint))
  (ok (spawn-sub-dao name parent)))