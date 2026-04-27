interface Props585 { value: number; label: string; onChange: (v: number) => void; }
export const Component585 = ({ value, label, onChange }: Props585) => (
  <div className="component-585">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
