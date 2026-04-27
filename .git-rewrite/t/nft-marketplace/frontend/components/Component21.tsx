interface Props21 { value: number; label: string; onChange: (v: number) => void; }
export const Component21 = ({ value, label, onChange }: Props21) => (
  <div className="component-21">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
