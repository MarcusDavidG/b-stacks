interface Props417 { value: number; label: string; onChange: (v: number) => void; }
export const Component417 = ({ value, label, onChange }: Props417) => (
  <div className="component-417">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
