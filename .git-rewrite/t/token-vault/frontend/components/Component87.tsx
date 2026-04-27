interface Props87 { value: number; label: string; onChange: (v: number) => void; }
export const Component87 = ({ value, label, onChange }: Props87) => (
  <div className="component-87">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
