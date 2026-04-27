interface Props603 { value: number; label: string; onChange: (v: number) => void; }
export const Component603 = ({ value, label, onChange }: Props603) => (
  <div className="component-603">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
