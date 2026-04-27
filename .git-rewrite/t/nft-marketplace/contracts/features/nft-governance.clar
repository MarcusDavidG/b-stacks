(define-public (vote-with-nft (nft-id uint) (proposal uint))
  (ok (cast-nft-vote nft-id proposal)))