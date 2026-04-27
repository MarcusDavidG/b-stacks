(define-public (add-currency (token-contract principal))
  (ok (map-set supported-tokens token-contract true)))
