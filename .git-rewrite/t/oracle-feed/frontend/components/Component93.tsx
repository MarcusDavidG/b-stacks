interface Props93 { value: number; label: string; onChange: (v: number) => void; }
export const Component93 = ({ value, label, onChange }: Props93) => (
  <div className="component-93">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
