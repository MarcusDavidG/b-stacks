import React from 'react';
interface Props { data: number[]; labels: string[]; }
export const Chart: React.FC<Props> = ({ data, labels }) => (
    <svg width="400" height="200">
        {data.map((v, i) => <rect key={i} x={i*40} y={200-v} width="30" height={v} fill="#4CAF50" />)}
    </svg>
);
