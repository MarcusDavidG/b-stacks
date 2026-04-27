interface Props249 { value: number; label: string; onChange: (v: number) => void; }
export const Component249 = ({ value, label, onChange }: Props249) => (
  <div className="component-249">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
