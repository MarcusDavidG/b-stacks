(define-public (schedule-transfer (recipient principal) (amount uint) (block-height uint))
  (ok (add-scheduled-tx recipient amount block-height)))
