interface Props885 { value: number; label: string; onChange: (v: number) => void; }
export const Component885 = ({ value, label, onChange }: Props885) => (
  <div className="component-885">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
