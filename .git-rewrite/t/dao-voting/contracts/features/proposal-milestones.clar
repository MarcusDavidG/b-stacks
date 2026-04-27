(define-public (set-milestones (proposal-id uint) (milestones (list 5 uint)))
  (ok (configure-milestones proposal-id milestones)))
