interface Props891 { value: number; label: string; onChange: (v: number) => void; }
export const Component891 = ({ value, label, onChange }: Props891) => (
  <div className="component-891">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
