interface Props543 { value: number; label: string; onChange: (v: number) => void; }
export const Component543 = ({ value, label, onChange }: Props543) => (
  <div className="component-543">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
