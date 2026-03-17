interface Props735 { value: number; label: string; onChange: (v: number) => void; }
export const Component735 = ({ value, label, onChange }: Props735) => (
  <div className="component-735">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
