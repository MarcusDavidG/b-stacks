interface Props555 { value: number; label: string; onChange: (v: number) => void; }
export const Component555 = ({ value, label, onChange }: Props555) => (
  <div className="component-555">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
