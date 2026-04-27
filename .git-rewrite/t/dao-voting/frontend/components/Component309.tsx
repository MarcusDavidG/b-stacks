interface Props309 { value: number; label: string; onChange: (v: number) => void; }
export const Component309 = ({ value, label, onChange }: Props309) => (
  <div className="component-309">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
