interface Props705 { value: number; label: string; onChange: (v: number) => void; }
export const Component705 = ({ value, label, onChange }: Props705) => (
  <div className="component-705">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
