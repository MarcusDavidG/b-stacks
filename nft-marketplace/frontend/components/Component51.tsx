interface Props51 { value: number; label: string; onChange: (v: number) => void; }
export const Component51 = ({ value, label, onChange }: Props51) => (
  <div className="component-51">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
