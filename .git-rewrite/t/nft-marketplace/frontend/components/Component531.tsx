interface Props531 { value: number; label: string; onChange: (v: number) => void; }
export const Component531 = ({ value, label, onChange }: Props531) => (
  <div className="component-531">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
