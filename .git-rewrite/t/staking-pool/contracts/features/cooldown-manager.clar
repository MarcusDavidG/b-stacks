(define-public (start-cooldown (user principal))
  (ok (map-set cooldowns user block-height)))