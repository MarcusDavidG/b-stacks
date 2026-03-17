interface Props123 { value: number; label: string; onChange: (v: number) => void; }
export const Component123 = ({ value, label, onChange }: Props123) => (
  <div className="component-123">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
