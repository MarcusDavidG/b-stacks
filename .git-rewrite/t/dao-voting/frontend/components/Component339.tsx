interface Props339 { value: number; label: string; onChange: (v: number) => void; }
export const Component339 = ({ value, label, onChange }: Props339) => (
  <div className="component-339">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
