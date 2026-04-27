import React from 'react';
interface Props { label: string; onClick: () => void; variant?: string; }
export const Button: React.FC<Props> = ({ label, onClick, variant = 'primary' }) => (
    <button className={`btn-${variant}`} onClick={onClick}>{label}</button>
);
