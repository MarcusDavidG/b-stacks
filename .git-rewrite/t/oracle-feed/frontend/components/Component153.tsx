interface Props153 { value: number; label: string; onChange: (v: number) => void; }
export const Component153 = ({ value, label, onChange }: Props153) => (
  <div className="component-153">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
