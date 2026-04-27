interface Props525 { value: number; label: string; onChange: (v: number) => void; }
export const Component525 = ({ value, label, onChange }: Props525) => (
  <div className="component-525">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
