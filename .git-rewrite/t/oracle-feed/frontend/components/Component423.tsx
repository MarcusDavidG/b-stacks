interface Props423 { value: number; label: string; onChange: (v: number) => void; }
export const Component423 = ({ value, label, onChange }: Props423) => (
  <div className="component-423">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
