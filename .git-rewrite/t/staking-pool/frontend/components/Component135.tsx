interface Props135 { value: number; label: string; onChange: (v: number) => void; }
export const Component135 = ({ value, label, onChange }: Props135) => (
  <div className="component-135">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
