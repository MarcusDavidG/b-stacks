interface Props387 { value: number; label: string; onChange: (v: number) => void; }
export const Component387 = ({ value, label, onChange }: Props387) => (
  <div className="component-387">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
