(define-public (apply-for-grant (amount uint) (description (string-utf8 500)))
  (ok (submit-grant-application amount description)))