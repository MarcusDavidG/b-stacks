interface Props393 { value: number; label: string; onChange: (v: number) => void; }
export const Component393 = ({ value, label, onChange }: Props393) => (
  <div className="component-393">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
