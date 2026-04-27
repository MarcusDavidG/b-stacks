interface Props201 { value: number; label: string; onChange: (v: number) => void; }
export const Component201 = ({ value, label, onChange }: Props201) => (
  <div className="component-201">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
