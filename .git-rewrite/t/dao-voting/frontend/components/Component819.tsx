interface Props819 { value: number; label: string; onChange: (v: number) => void; }
export const Component819 = ({ value, label, onChange }: Props819) => (
  <div className="component-819">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
