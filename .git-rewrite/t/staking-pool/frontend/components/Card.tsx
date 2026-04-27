import React, { ReactNode } from 'react';
interface Props { title: string; children: ReactNode; }
export const Card: React.FC<Props> = ({ title, children }) => (
    <div className="card"><h3>{title}</h3><div>{children}</div></div>
);
