interface Props807 { value: number; label: string; onChange: (v: number) => void; }
export const Component807 = ({ value, label, onChange }: Props807) => (
  <div className="component-807">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
