interface Props3 { value: number; label: string; onChange: (v: number) => void; }
export const Component3 = ({ value, label, onChange }: Props3) => (
  <div className="component-3">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
