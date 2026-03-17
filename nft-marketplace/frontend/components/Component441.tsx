interface Props441 { value: number; label: string; onChange: (v: number) => void; }
export const Component441 = ({ value, label, onChange }: Props441) => (
  <div className="component-441">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
