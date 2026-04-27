interface Props447 { value: number; label: string; onChange: (v: number) => void; }
export const Component447 = ({ value, label, onChange }: Props447) => (
  <div className="component-447">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
