interface Props297 { value: number; label: string; onChange: (v: number) => void; }
export const Component297 = ({ value, label, onChange }: Props297) => (
  <div className="component-297">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
