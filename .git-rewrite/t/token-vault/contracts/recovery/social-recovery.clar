(define-constant RECOVERY-THRESHOLD u3)
(define-constant RECOVERY-DELAY u1008) ;; ~1 week
(define-map guardians principal bool)
(define-map recovery-requests principal { new-owner: principal, approvals: uint, initiated-at: uint })
(define-public (add-guardian (guardian principal))
  (begin
    (map-set guardians guardian true)
    (ok true)))
(define-public (initiate-recovery (vault-owner principal) (new-owner principal))
  (begin
    (asserts! (default-to false (map-get? guardians tx-sender)) (err u401))
    (map-set recovery-requests vault-owner
      { new-owner: new-owner, approvals: u1, initiated-at: block-height })
    (ok true)))
(define-public (approve-recovery (vault-owner principal))
  (let ((req (unwrap! (map-get? recovery-requests vault-owner) (err u404))))
    (asserts! (default-to false (map-get? guardians tx-sender)) (err u401))
    (let ((new-approvals (+ (get approvals req) u1)))
      (map-set recovery-requests vault-owner (merge req { approvals: new-approvals }))
      (ok (>= new-approvals RECOVERY-THRESHOLD)))))
