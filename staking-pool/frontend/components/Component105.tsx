interface Props105 { value: number; label: string; onChange: (v: number) => void; }
export const Component105 = ({ value, label, onChange }: Props105) => (
  <div className="component-105">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
