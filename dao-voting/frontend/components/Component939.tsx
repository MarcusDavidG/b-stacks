interface Props939 { value: number; label: string; onChange: (v: number) => void; }
export const Component939 = ({ value, label, onChange }: Props939) => (
  <div className="component-939">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
