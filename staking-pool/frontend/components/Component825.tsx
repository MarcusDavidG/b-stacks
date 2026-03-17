interface Props825 { value: number; label: string; onChange: (v: number) => void; }
export const Component825 = ({ value, label, onChange }: Props825) => (
  <div className="component-825">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
