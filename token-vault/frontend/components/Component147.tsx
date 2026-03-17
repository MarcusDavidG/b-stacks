interface Props147 { value: number; label: string; onChange: (v: number) => void; }
export const Component147 = ({ value, label, onChange }: Props147) => (
  <div className="component-147">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
