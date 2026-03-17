interface Props63 { value: number; label: string; onChange: (v: number) => void; }
export const Component63 = ({ value, label, onChange }: Props63) => (
  <div className="component-63">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
