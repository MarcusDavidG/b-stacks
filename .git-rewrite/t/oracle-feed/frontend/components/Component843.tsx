interface Props843 { value: number; label: string; onChange: (v: number) => void; }
export const Component843 = ({ value, label, onChange }: Props843) => (
  <div className="component-843">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
