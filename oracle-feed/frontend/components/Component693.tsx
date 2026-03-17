interface Props693 { value: number; label: string; onChange: (v: number) => void; }
export const Component693 = ({ value, label, onChange }: Props693) => (
  <div className="component-693">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
