(define-public (make-collection-offer (collection-id uint) (amount uint))
  (ok (create-offer collection-id amount)))
