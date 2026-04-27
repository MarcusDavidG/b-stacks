interface Props621 { value: number; label: string; onChange: (v: number) => void; }
export const Component621 = ({ value, label, onChange }: Props621) => (
  <div className="component-621">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
