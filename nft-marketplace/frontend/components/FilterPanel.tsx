import React from 'react';
interface Props { filters: any; onChange: (f: any) => void; }
export const FilterPanel: React.FC<Props> = ({ filters, onChange }) => (
    <div className="filters">
        {Object.keys(filters).map(key => (
            <label key={key}>{key}: <input type="checkbox" checked={filters[key]} onChange={e => onChange({...filters, [key]: e.target.checked})} /></label>
        ))}
    </div>
);
