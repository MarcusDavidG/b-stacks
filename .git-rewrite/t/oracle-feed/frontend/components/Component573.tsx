interface Props573 { value: number; label: string; onChange: (v: number) => void; }
export const Component573 = ({ value, label, onChange }: Props573) => (
  <div className="component-573">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
