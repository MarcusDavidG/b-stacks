interface Props507 { value: number; label: string; onChange: (v: number) => void; }
export const Component507 = ({ value, label, onChange }: Props507) => (
  <div className="component-507">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
