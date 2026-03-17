interface Props483 { value: number; label: string; onChange: (v: number) => void; }
export const Component483 = ({ value, label, onChange }: Props483) => (
  <div className="component-483">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
