interface Props897 { value: number; label: string; onChange: (v: number) => void; }
export const Component897 = ({ value, label, onChange }: Props897) => (
  <div className="component-897">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
