interface Props75 { value: number; label: string; onChange: (v: number) => void; }
export const Component75 = ({ value, label, onChange }: Props75) => (
  <div className="component-75">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
