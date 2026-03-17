interface Props219 { value: number; label: string; onChange: (v: number) => void; }
export const Component219 = ({ value, label, onChange }: Props219) => (
  <div className="component-219">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
