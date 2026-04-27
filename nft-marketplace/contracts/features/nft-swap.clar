(define-public (propose-swap (my-nft uint) (their-nft uint))
  (ok (create-swap-offer my-nft their-nft)))