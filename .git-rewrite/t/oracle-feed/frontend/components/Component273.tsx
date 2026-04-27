interface Props273 { value: number; label: string; onChange: (v: number) => void; }
export const Component273 = ({ value, label, onChange }: Props273) => (
  <div className="component-273">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
