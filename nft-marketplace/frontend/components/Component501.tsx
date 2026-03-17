interface Props501 { value: number; label: string; onChange: (v: number) => void; }
export const Component501 = ({ value, label, onChange }: Props501) => (
  <div className="component-501">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
