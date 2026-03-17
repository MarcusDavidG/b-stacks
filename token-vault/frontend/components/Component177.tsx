interface Props177 { value: number; label: string; onChange: (v: number) => void; }
export const Component177 = ({ value, label, onChange }: Props177) => (
  <div className="component-177">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
