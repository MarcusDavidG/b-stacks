interface Props753 { value: number; label: string; onChange: (v: number) => void; }
export const Component753 = ({ value, label, onChange }: Props753) => (
  <div className="component-753">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
