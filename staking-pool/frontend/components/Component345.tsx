interface Props345 { value: number; label: string; onChange: (v: number) => void; }
export const Component345 = ({ value, label, onChange }: Props345) => (
  <div className="component-345">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
