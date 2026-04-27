interface Props615 { value: number; label: string; onChange: (v: number) => void; }
export const Component615 = ({ value, label, onChange }: Props615) => (
  <div className="component-615">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
