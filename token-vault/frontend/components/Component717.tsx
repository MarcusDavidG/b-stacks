interface Props717 { value: number; label: string; onChange: (v: number) => void; }
export const Component717 = ({ value, label, onChange }: Props717) => (
  <div className="component-717">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
