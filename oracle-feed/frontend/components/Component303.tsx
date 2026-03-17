interface Props303 { value: number; label: string; onChange: (v: number) => void; }
export const Component303 = ({ value, label, onChange }: Props303) => (
  <div className="component-303">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
