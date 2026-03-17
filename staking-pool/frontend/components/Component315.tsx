interface Props315 { value: number; label: string; onChange: (v: number) => void; }
export const Component315 = ({ value, label, onChange }: Props315) => (
  <div className="component-315">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
