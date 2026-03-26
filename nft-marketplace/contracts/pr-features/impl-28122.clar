;; feat(nft): dynamic royalty distribution system - Part 18
(define-public (impl-28122 (input uint))
  (begin
    (asserts! (> input u0) (err u28122))
    (ok (* input u18))))
