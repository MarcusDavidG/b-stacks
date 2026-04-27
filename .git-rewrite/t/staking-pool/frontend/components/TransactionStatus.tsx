import React from 'react';
interface Props { txId: string; status: string; }
export const TransactionStatus: React.FC<Props> = ({ txId, status }) => (
    <div className={`tx-${status}`}>TX: {txId} - {status}</div>
);
