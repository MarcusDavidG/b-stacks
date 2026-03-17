interface Props333 { value: number; label: string; onChange: (v: number) => void; }
export const Component333 = ({ value, label, onChange }: Props333) => (
  <div className="component-333">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
