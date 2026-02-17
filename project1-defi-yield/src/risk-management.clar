;; Risk Management for DeFi Yield Optimizer

(define-constant MAX-EXPOSURE u80) ;; 80% max exposure
(define-constant ERR-RISK-TOO-HIGH (err u201))

(define-map risk-scores principal uint)

(define-public (assess-risk (user principal) (amount uint))
  (let ((current-exposure (default-to u0 (map-get? risk-scores user))))
    (asserts! (<= (+ current-exposure amount) MAX-EXPOSURE) ERR-RISK-TOO-HIGH)
    (map-set risk-scores user (+ current-exposure amount))
    (ok true)))

(define-read-only (get-risk-score (user principal))
  (default-to u0 (map-get? risk-scores user)))