interface Props741 { value: number; label: string; onChange: (v: number) => void; }
export const Component741 = ({ value, label, onChange }: Props741) => (
  <div className="component-741">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
