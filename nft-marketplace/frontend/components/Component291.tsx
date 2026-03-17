interface Props291 { value: number; label: string; onChange: (v: number) => void; }
export const Component291 = ({ value, label, onChange }: Props291) => (
  <div className="component-291">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
