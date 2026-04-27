interface Props15 { value: number; label: string; onChange: (v: number) => void; }
export const Component15 = ({ value, label, onChange }: Props15) => (
  <div className="component-15">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
