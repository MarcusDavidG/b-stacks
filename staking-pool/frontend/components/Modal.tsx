import React, { ReactNode } from 'react';
interface Props { isOpen: boolean; onClose: () => void; children: ReactNode; }
export const Modal: React.FC<Props> = ({ isOpen, onClose, children }) => 
    isOpen ? <div className="modal" onClick={onClose}>{children}</div> : null;
