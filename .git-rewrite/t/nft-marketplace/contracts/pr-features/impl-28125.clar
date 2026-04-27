;; feat(nft): dynamic royalty distribution system - Part 21
(define-public (impl-28125 (input uint))
  (begin
    (asserts! (> input u0) (err u28125))
    (ok (* input u21))))
