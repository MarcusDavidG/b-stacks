interface Props255 { value: number; label: string; onChange: (v: number) => void; }
export const Component255 = ({ value, label, onChange }: Props255) => (
  <div className="component-255">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
