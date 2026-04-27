import React from 'react';
interface Props { currentPage: number; totalPages: number; onPageChange: (p: number) => void; }
export const Pagination: React.FC<Props> = ({ currentPage, totalPages, onPageChange }) => (
    <div>
        <button onClick={() => onPageChange(currentPage - 1)}>Prev</button>
        <span>{currentPage}/{totalPages}</span>
        <button onClick={() => onPageChange(currentPage + 1)}>Next</button>
    </div>
);
