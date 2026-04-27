interface Props465 { value: number; label: string; onChange: (v: number) => void; }
export const Component465 = ({ value, label, onChange }: Props465) => (
  <div className="component-465">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
