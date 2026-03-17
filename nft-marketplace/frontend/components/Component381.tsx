interface Props381 { value: number; label: string; onChange: (v: number) => void; }
export const Component381 = ({ value, label, onChange }: Props381) => (
  <div className="component-381">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
