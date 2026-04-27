interface Props777 { value: number; label: string; onChange: (v: number) => void; }
export const Component777 = ({ value, label, onChange }: Props777) => (
  <div className="component-777">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
