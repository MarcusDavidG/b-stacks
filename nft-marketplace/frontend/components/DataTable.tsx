import React from 'react';
interface Props { data: any[]; columns: string[]; }
export const DataTable: React.FC<Props> = ({ data, columns }) => (
    <table>
        <thead><tr>{columns.map(c => <th key={c}>{c}</th>)}</tr></thead>
        <tbody>{data.map((r, i) => <tr key={i}>{columns.map(c => <td key={c}>{r[c]}</td>)}</tr>)}</tbody>
    </table>
);
