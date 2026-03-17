interface Props549 { value: number; label: string; onChange: (v: number) => void; }
export const Component549 = ({ value, label, onChange }: Props549) => (
  <div className="component-549">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
