interface Props45 { value: number; label: string; onChange: (v: number) => void; }
export const Component45 = ({ value, label, onChange }: Props45) => (
  <div className="component-45">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
