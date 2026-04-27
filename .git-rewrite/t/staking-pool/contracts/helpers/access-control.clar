;; Access Control Module
;; Implements role-based access control for contracts

(define-constant ERR-NOT-AUTHORIZED (err u200))
(define-constant ERR-ROLE-EXISTS (err u201))

(define-constant ROLE-ADMIN u1)
(define-constant ROLE-OPERATOR u2)
(define-constant ROLE-USER u3)

(define-map roles principal uint)
(define-map role-permissions uint (list 10 (string-ascii 20)))

(define-data-var contract-owner principal tx-sender)

;; Grant role to address
(define-public (grant-role (user principal) (role uint))
    (begin
        (asserts! (is-eq tx-sender (var-get contract-owner)) ERR-NOT-AUTHORIZED)
        (ok (map-set roles user role))))

;; Check if user has role
(define-read-only (has-role (user principal) (role uint))
    (is-eq (default-to u0 (map-get? roles user)) role))

;; Revoke role
(define-public (revoke-role (user principal))
    (begin
        (asserts! (is-eq tx-sender (var-get contract-owner)) ERR-NOT-AUTHORIZED)
        (ok (map-delete roles user))))
