interface Props453 { value: number; label: string; onChange: (v: number) => void; }
export const Component453 = ({ value, label, onChange }: Props453) => (
  <div className="component-453">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
