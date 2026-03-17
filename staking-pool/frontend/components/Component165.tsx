interface Props165 { value: number; label: string; onChange: (v: number) => void; }
export const Component165 = ({ value, label, onChange }: Props165) => (
  <div className="component-165">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
