interface Props627 { value: number; label: string; onChange: (v: number) => void; }
export const Component627 = ({ value, label, onChange }: Props627) => (
  <div className="component-627">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
