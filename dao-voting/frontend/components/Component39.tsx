interface Props39 { value: number; label: string; onChange: (v: number) => void; }
export const Component39 = ({ value, label, onChange }: Props39) => (
  <div className="component-39">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
