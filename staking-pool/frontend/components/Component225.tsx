interface Props225 { value: number; label: string; onChange: (v: number) => void; }
export const Component225 = ({ value, label, onChange }: Props225) => (
  <div className="component-225">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
