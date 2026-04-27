;; DAO Treasury Management

(define-constant ERR-INSUFFICIENT-FUNDS (err u701))
(define-constant ERR-UNAUTHORIZED (err u702))

(define-data-var treasury-balance uint u0)
(define-map approved-expenditures uint { amount: uint, recipient: principal, approved: bool })

(define-public (deposit-to-treasury (amount uint))
  (begin
    (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))
    (var-set treasury-balance (+ (var-get treasury-balance) amount))
    (ok true)))

(define-public (propose-expenditure (expenditure-id uint) (amount uint) (recipient principal))
  (begin
    (map-set approved-expenditures expenditure-id {
      amount: amount,
      recipient: recipient,
      approved: false
    })
    (ok true)))

(define-public (execute-expenditure (expenditure-id uint))
  (let ((expenditure (unwrap! (map-get? approved-expenditures expenditure-id) ERR-UNAUTHORIZED)))
    (asserts! (get approved expenditure) ERR-UNAUTHORIZED)
    (asserts! (>= (var-get treasury-balance) (get amount expenditure)) ERR-INSUFFICIENT-FUNDS)
    (try! (as-contract (stx-transfer? (get amount expenditure) tx-sender (get recipient expenditure))))
    (var-set treasury-balance (- (var-get treasury-balance) (get amount expenditure)))
    (map-delete approved-expenditures expenditure-id)
    (ok true)))

(define-read-only (get-treasury-balance)
  (var-get treasury-balance))