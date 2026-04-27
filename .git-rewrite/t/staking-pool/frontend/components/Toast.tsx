import React from 'react';
interface Props { message: string; type: string; }
export const Toast: React.FC<Props> = ({ message, type }) => (
    <div className={`toast-${type}`}>{message}</div>
);
