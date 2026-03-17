interface Props33 { value: number; label: string; onChange: (v: number) => void; }
export const Component33 = ({ value, label, onChange }: Props33) => (
  <div className="component-33">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
