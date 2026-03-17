interface Props579 { value: number; label: string; onChange: (v: number) => void; }
export const Component579 = ({ value, label, onChange }: Props579) => (
  <div className="component-579">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
