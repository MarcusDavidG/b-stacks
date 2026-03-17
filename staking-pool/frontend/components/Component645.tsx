interface Props645 { value: number; label: string; onChange: (v: number) => void; }
export const Component645 = ({ value, label, onChange }: Props645) => (
  <div className="component-645">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
