interface Props915 { value: number; label: string; onChange: (v: number) => void; }
export const Component915 = ({ value, label, onChange }: Props915) => (
  <div className="component-915">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
