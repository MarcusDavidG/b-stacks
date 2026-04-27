interface Props801 { value: number; label: string; onChange: (v: number) => void; }
export const Component801 = ({ value, label, onChange }: Props801) => (
  <div className="component-801">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
