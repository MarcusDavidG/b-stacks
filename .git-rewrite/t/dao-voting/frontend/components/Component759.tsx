interface Props759 { value: number; label: string; onChange: (v: number) => void; }
export const Component759 = ({ value, label, onChange }: Props759) => (
  <div className="component-759">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
