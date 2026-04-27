interface Props117 { value: number; label: string; onChange: (v: number) => void; }
export const Component117 = ({ value, label, onChange }: Props117) => (
  <div className="component-117">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
