interface Props699 { value: number; label: string; onChange: (v: number) => void; }
export const Component699 = ({ value, label, onChange }: Props699) => (
  <div className="component-699">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
