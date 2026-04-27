interface Props675 { value: number; label: string; onChange: (v: number) => void; }
export const Component675 = ({ value, label, onChange }: Props675) => (
  <div className="component-675">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
