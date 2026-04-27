interface Props765 { value: number; label: string; onChange: (v: number) => void; }
export const Component765 = ({ value, label, onChange }: Props765) => (
  <div className="component-765">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
