import React from 'react';
interface Props { value: string; onChange: (v: string) => void; placeholder?: string; }
export const Input: React.FC<Props> = ({ value, onChange, placeholder }) => (
    <input value={value} onChange={e => onChange(e.target.value)} placeholder={placeholder} />
);
